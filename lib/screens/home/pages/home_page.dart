import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:test_data/constants/theme_constant.dart';
import 'package:test_data/injection.dart';
import 'package:test_data/screens/home/pages/details_page.dart';
import 'package:test_data/screens/home/widgets/home_card_widget.dart';

import '../bloc/home_bloc.dart';
import '../bloc/home_state.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeBloc bloc = sl<HomeBloc>();

  @override
  void initState() {
    bloc.onGetHome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      return BlocBuilder<HomeBloc, HomeState>(
        bloc: bloc,
        builder: (context, state) {
          return ModalProgressHUD(
            inAsyncCall: state.isLoading,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: MyColors.primaryColor,
                title: Text(
                  "Home Data",
                  style: MyFonts.boldFontRoboto.copyWith(
                    color: MyColors.white,
                    fontSize: orientation == Orientation.portrait ? 22.sp : 16.sp,
                  ),
                ),
              ),
              body: ListView.separated(
                  padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 24.w),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsPage(dataModel: state.dataList[index]),
                        ),
                      ),
                      child: HomeCard(
                        dataModel: state.dataList[index],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                        height: orientation == Orientation.portrait ? 10.h : 30.h,
                      ),
                  itemCount: state.dataList.length),
            ),
          );
        },
      );
    });
  }
}

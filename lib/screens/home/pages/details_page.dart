import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_data/constants/theme_constant.dart';
import 'package:test_data/screens/home/model/data_model.dart';

class DetailsPage extends StatefulWidget {
  final DataModel dataModel;

  const DetailsPage({
    super.key,
    required this.dataModel,
  });

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      return Scaffold(
          appBar: AppBar(
            backgroundColor: MyColors.primaryColor,
            // for back icon be white
            foregroundColor: MyColors.white,
            title: Text(
              widget.dataModel.title ?? "-",
              maxLines: 1,
              style: MyFonts.boldFontRoboto.copyWith(
                color: MyColors.white,
                fontSize: orientation == Orientation.portrait ? 22.sp : 10.sp,
              ),
            ),
          ),
          body: Padding(
            padding: EdgeInsets.all(20.r),
            child: Text(
              widget.dataModel.body ?? "",
              style: MyFonts.boldFontUbuntu.copyWith(
                fontSize: orientation == Orientation.portrait ? 18.sp : 8.sp,
              ),
            ),
          ));
    });
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_data/constants/theme_constant.dart';
import 'package:test_data/screens/home/model/data_model.dart';

class HomeCard extends StatefulWidget {
  final DataModel dataModel;

  const HomeCard({
    super.key,
    required this.dataModel,
  });

  @override
  State<HomeCard> createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  @override
  Widget build(BuildContext context) {
    bool isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return Container(
      decoration: BoxDecoration(
        color: MyColors.white,
        boxShadow: [
          MyColors.boxShadow,
        ],
        borderRadius: BorderRadius.circular(isPortrait ? 8.r : 20.r),
      ),
      padding: EdgeInsets.symmetric(vertical: isPortrait ? 10.h : 40.h, horizontal: isPortrait ? 20.w : 10.w),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Title:",
                style: MyFonts.regularFontRoboto.copyWith(
                  color: MyColors.primaryColor,
                  fontSize: isPortrait ? 18.sp : 10.sp,
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: Text(
                  widget.dataModel.title ?? "-",
                  style: MyFonts.regularFontUbuntu.copyWith(
                    fontSize: isPortrait ? 16.sp : 8.sp,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Body:",
                style: MyFonts.regularFontRoboto.copyWith(
                  color: MyColors.primaryColor,
                  fontSize: isPortrait ? 18.sp : 10.sp,
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: Text(
                  widget.dataModel.body ?? "-",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: MyFonts.regularFontUbuntu.copyWith(
                    fontSize: isPortrait ? 16.sp : 8.sp,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

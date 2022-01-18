import 'package:flutter/material.dart';
import 'package:tiin_cashback/core/constants/exports.dart';

class MyBottomNavBarWidget extends StatelessWidget {
  MyBottomNavBarWidget({
    Key? key,
    required this.model,
  }) : super(key: key);
  BottomNavBarProvier? model;

  @override
  Widget build(BuildContext context) {
    var _context = context.watch<BottomNavBarProvier>();
    return CurvedNavigationBar(
      animationCurve: Curves.easeInOutCubic,
      color: AppColors().kPrimaryFirstBgColors,
      backgroundColor: AppColors().kTransparentColor,
      items: [
        SvgPicture.asset(
          AppIcons().homeFalse,
          color: AppColors().kPrimaryWhiteColors,
        ),
        SvgPicture.asset(
          AppIcons().shopFalse,
          color: AppColors().kPrimaryWhiteColors,
        ),
        SvgPicture.asset(
          AppIcons().scanerFalse,
          color: AppColors().kPrimaryWhiteColors,
        ),
        SvgPicture.asset(
          AppIcons().notificationTrue,
          color: AppColors().kPrimaryWhiteColors,
        ),
        SvgPicture.asset(
          AppIcons().userTrue,
          color: AppColors().kPrimaryWhiteColors,
        ),
      ],
      index: _context.currentTab,
      onTap: (int idx) {
        model!.currentTab = idx;
      },
    );
  }
}

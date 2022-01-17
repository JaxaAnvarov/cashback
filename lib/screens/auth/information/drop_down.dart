import 'package:flutter/material.dart';
import 'package:tiin_cashback/core/constants/exports.dart';
import 'package:easy_localization/easy_localization.dart';

class MyDropDown extends StatelessWidget {
  MyDropDown(
      {Key? key,
      required this.selected,
      required this.changed,
      required this.items})
      : super(key: key);

  final GlobalKey _menuKey = GlobalKey();
  String selected;
  final Function(String) changed;
  final List<String> items;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Ink(
      height: getProportionateScreenHeight(50.0),
      width: getProportionateScreenWidth(350.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          getProportionateScreenWidth(15.0),
        ),
      ),
      child: PopupMenuButton<String>(
        key: _menuKey,
        child: Container(
          margin: EdgeInsets.only(
            top: getProportionateScreenHeight(0.0),
            left: getProportionateScreenWidth(0.0),
          ),
          height: getProportionateScreenHeight(100.0),
          width: getProportionateScreenWidth(300.0),
          child: Text(selected.tr(),),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            getProportionateScreenWidth(10.0),
          ),
        ),
        itemBuilder: (_) => items
            .map(
              (item) => PopupMenuItem<String>(
                child: Text(
                  item,
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(13.0),
                    fontWeight: FontWeight.w700,
                    color: AppColors().kPrimaryBlackColors,
                  ),
                ),
                value: item,
              ),
            )
            .toList(),
        onSelected: changed,
      ),
    );
  }
}

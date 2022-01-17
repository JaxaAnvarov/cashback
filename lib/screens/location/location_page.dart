import 'package:flutter/material.dart';
import 'package:tiin_cashback/core/constants/exports.dart';
import 'package:easy_localization/easy_localization.dart';

class LocationPage extends StatelessWidget {
  LocationPage({Key? key}) : super(key: key);
  double? _height;
  double? _width;

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: getProportionateScreenHeight(115.0),
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/bbg.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              margin: EdgeInsets.only(
                top: getProportionateScreenHeight(50.0),
                left: getProportionateScreenWidth(23.0),
                right: getProportionateScreenWidth(209.0),
              ),
              child: MyTextWidget(
                color: AppColors().kPrimaryWhiteColors,
                size: getProportionateScreenWidth(30.0),
                text: 'Филиалы'.tr(),
              ),
            ),
          ),
          Container(
            height: _height! * 0.775,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/google_map.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

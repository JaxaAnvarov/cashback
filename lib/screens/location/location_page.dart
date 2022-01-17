import 'package:flutter/material.dart';
import 'package:tiin_cashback/core/constants/exports.dart';
import 'package:easy_localization/easy_localization.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            height: getProportionateScreenHeight(722.0),
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

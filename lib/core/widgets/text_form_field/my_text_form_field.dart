import 'package:flutter/material.dart';
import 'package:tiin_cashback/core/constants/colors/color.dart';
import 'package:tiin_cashback/core/constants/size_config.dart';

class MyTextFormFieldWidget extends StatelessWidget {
  MyTextFormFieldWidget({
    Key? key,
    required this.text,
  }) : super(key: key);
  String? text;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(
          getProportionateScreenWidth(24.0),
        ),
        vertical: getProportionateScreenHeight(10.0),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors().kPrimaryTextFormFieldColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              getProportionateScreenWidth(10.0),
            ),
          ),
          hintText: text,
          labelText: text,
          hintStyle: TextStyle(
            color: Colors.black,
            fontSize: getProportionateScreenWidth(18.0),
            fontWeight: FontWeight.w700
          ),
        ),
      ),
    );
  }
}

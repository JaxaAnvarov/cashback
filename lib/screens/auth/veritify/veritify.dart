import 'package:flutter/material.dart';
import 'package:tiin_cashback/core/constants/exports.dart';
import 'package:easy_localization/easy_localization.dart';

class VertifyPage extends StatefulWidget {
  const VertifyPage({Key? key}) : super(key: key);

  @override
  State<VertifyPage> createState() => _VertifyPageState();
}

class _VertifyPageState extends State<VertifyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: getProportionateScreenHeight(331.0),
                left: getProportionateScreenWidth(32.0),
                right: getProportionateScreenWidth(170.0),
              ),
              width: getProportionateScreenWidth(223.0),
              height: getProportionateScreenHeight(33.0),
              child: MyTextWidget(
                color: AppColors().kPrimaryBlackColors,
                size: getProportionateScreenWidth(27.0),
                text: 'Подтверждение'.tr(),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(24.0)),
            Padding(
              padding: EdgeInsets.only(left: getProportionateScreenWidth(30.0)),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        right: getProportionateScreenWidth(0.0),
                        left: getProportionateScreenWidth(4.0)),
                    width: getProportionateScreenWidth(260.0),
                    height: getProportionateScreenHeight(16.0),
                    child: Row(
                      children: [
                        SizedBox(
                          child: Text(
                            'Номер мобильного : +998 '.tr(),
                            style: TextStyle(
                              color: AppColors().kPrimarySubtitleColors,
                              fontWeight: FontWeight.w400,
                              fontSize: getProportionateScreenWidth(13.0),
                              fontFamily: 'Inter',
                            ),
                          ),
                        ),
                        SizedBox(
                          child: Text(
                            FormServices().number.text.tr(),
                            style: TextStyle(
                              color: AppColors().kPrimarySubtitleColors,
                              fontWeight: FontWeight.w400,
                              fontSize: getProportionateScreenWidth(13.0),
                              fontFamily: 'Inter',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: getProportionateScreenHeight(37.0),
                right: getProportionateScreenWidth(290.0),
                left: getProportionateScreenWidth(20.0),
              ),
              child: MyTextWidget(
                color: AppColors().kPrimaryBlackColors,
                size: getProportionateScreenWidth(14.0),
                text: 'Код из СМС'.tr(),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(2.0),
            ),
            Row(
              children: [
                Expanded(
                  flex: 8,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(33.0),
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                        color: AppColors().kPrimaryBlackColors,
                        fontSize: getProportionateScreenWidth(16.0),
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Inter',
                      ),
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        suffixIcon: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: Icon(
                            Icons.cancel,
                            color: AppColors().kPrimaryMiniButtonColors,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: getProportionateScreenWidth(62.0),
                    width: getProportionateScreenWidth(62.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors().kPrimaryButtonColors,
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => InformationPage(),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(30.0)),
            Container(
              margin: EdgeInsets.only(
                right: getProportionateScreenWidth(10.0),
              ),
              width: getProportionateScreenWidth(350.0),
              height: getProportionateScreenHeight(35.0),
              child: MyTextWidget(
                color: AppColors().kPrimaryMiniButtonColors,
                size: getProportionateScreenWidth(13.0),
                text: 'Повторно отправить код можно через 00:58 сек'.tr(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    FormServices().smsCode.dispose();
  }
}

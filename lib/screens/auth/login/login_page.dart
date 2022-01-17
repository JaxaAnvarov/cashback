import 'package:flutter/material.dart';
import 'package:tiin_cashback/core/constants/exports.dart';
import 'package:easy_localization/easy_localization.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool v1 = false;
  bool v2 = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: getProportionateScreenHeight(215.0),
                left: getProportionateScreenWidth(20.0),
                right: getProportionateScreenWidth(142.0),
              ),
              width: getProportionateScreenWidth(250.0),
              height: getProportionateScreenHeight(33.0),
              child: MyTextWidget(
                color: AppColors().kPrimaryBlackColors,
                size: getProportionateScreenWidth(27.0),
                text: "Ну что? Погнали!".tr(),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: getProportionateScreenHeight(37.0),
                right: getProportionateScreenWidth(260.0),
                left: getProportionateScreenWidth(22.0),
              ),
              width: getProportionateScreenWidth(133.0),
              height: getProportionateScreenHeight(17.0),
              child: MyTextWidget(
                color: AppColors().kPrimaryBlackColors,
                size: getProportionateScreenWidth(14.0),
                text: 'Номер мобильного'.tr(),
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
                      horizontal: getProportionateScreenWidth(28.0),
                    ),
                    child: TextFormField(
                      style: TextStyle(
                        color: AppColors().kPrimaryBlackColors,
                        fontSize: getProportionateScreenWidth(16.0),
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Inter',
                      ),
                      keyboardType: TextInputType.number,
                      controller: FormServices().number,
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
                        prefixIcon: Container(
                          margin: EdgeInsets.only(
                              bottom: getProportionateScreenHeight(1.8)),
                          width: getProportionateScreenWidth(20.0),
                          alignment: Alignment.center,
                          child: Text(
                            '+998',
                            style: TextStyle(
                              color: AppColors().kPrimaryBlackColors,
                              fontSize: getProportionateScreenWidth(18.0),
                              fontWeight: FontWeight.w700,
                            ),
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
                            builder: (context) => const VertifyPage(),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                top: getProportionateScreenHeight(30.0),
                right: getProportionateScreenWidth(154.0),
                left: getProportionateScreenWidth(20.0),
              ),
              height: getProportionateScreenHeight(16.0),
              width: getProportionateScreenWidth(237.0),
              child: MyTextWidget(
                color: AppColors().kPrimarySubtitleColors,
                size: getProportionateScreenWidth(14.0),
                text: 'Вы получите СМС с кодом для входа'.tr(),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(37.0)),
            InkWell(
              child: Padding(
                padding: EdgeInsets.only(
                  left: getProportionateScreenWidth(14.0),
                ),
                child: Row(
                  children: [
                    Checkbox(
                      activeColor: AppColors().kPrimaryButtonColors,
                      value: v2,
                      onChanged: (value) {
                        setState(
                          () {
                            v2 = !v2;
                          },
                        );
                      },
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(12.0),
                    ),
                    MyTextWidget(
                      color: AppColors().kPrimaryBlackColors,
                      text:
                          "Я согласен с Пользовательским соглашением и даю \nсогласие на обработку персональных данных"
                              .tr(),
                      size: getProportionateScreenWidth(13.0),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(47.0),
            ),
            InkWell(
              child: Padding(
                padding:
                    EdgeInsets.only(left: getProportionateScreenWidth(14.0)),
                child: Row(
                  children: [
                    Checkbox(
                      activeColor: AppColors().kPrimaryButtonColors,
                      value: v1,
                      onChanged: (value) {
                        setState(
                          () {
                            v1 = !v1;
                          },
                        );
                      },
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(12.0),
                    ),
                    SizedBox(
                      child: RichText(
                        text: TextSpan(
                            style: TextStyle(
                              color: AppColors().kPrimaryBlackColors,
                            ),
                            children: [
                              TextSpan(
                                text:
                                    ("Я согласен с на получение сообшений об акциях,\n"
                                        .tr()),
                                style: TextStyle(
                                  color: const Color(0xFF4D4D4D),
                                  fontSize: getProportionateScreenWidth(13.0),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Inter',
                                ),
                              ),
                              TextSpan(
                                text:
                                    ("скидках и других рекламных уведомлений\n"
                                        .tr()),
                                style: TextStyle(
                                  color: const Color(0xFF4D4D4D),
                                  fontSize: getProportionateScreenWidth(13.0),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Inter',
                                ),
                              ),
                              TextSpan(
                                text: ("Tiin Market"),
                                style: TextStyle(
                                  color: AppColors().kPrimaryBlackColors,
                                  fontSize: getProportionateScreenWidth(13.0),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Inter',
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ],
                ),
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
    FormServices().number.dispose();
  }
}


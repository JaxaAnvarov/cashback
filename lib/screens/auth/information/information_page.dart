import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tiin_cashback/core/constants/exports.dart';
import 'package:easy_localization/easy_localization.dart';

class InformationPage extends StatefulWidget {
  InformationPage({Key? key}) : super(key: key);

  @override
  State<InformationPage> createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  String isWoman = "Erkak".tr();
  String on_Of = 'Uylangan'.tr();

  final DateTime _now = DateTime.now();
  final DateTime _startedDate = DateTime(1950);
  final DateTime _endDate = DateTime(2050);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: getProportionateScreenHeight(106.0),
                left: getProportionateScreenWidth(0.0),
                right: getProportionateScreenHeight(281.0),
              ),
              width: getProportionateScreenWidth(123.0),
              height: getProportionateScreenHeight(33.0),
              child: MyTextWidget(
                color: AppColors().kPrimaryBlackColors,
                text: 'Профиль'.tr(),
                size: getProportionateScreenWidth(27.0),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: getProportionateScreenHeight(10.0),
                left: getProportionateScreenWidth(20.0),
              ),
              width: getProportionateScreenWidth(400.0),
              height: getProportionateScreenHeight(60.0),
              child: MyTextWidget(
                color: AppColors().kPrimaryBlackColors,
                size: getProportionateScreenWidth(11.0),
                text:
                    'Кешбек карта виртульной и не имеет физического аналога. Виртуальная \nкарта доступна для пользования только через данное приложение. \nПри регистрации карты просим ва вводить реальные данные, поскольку \nони огут быть использованы для идентификации владельца карты в \nслучае ее утерии.'
                        .tr(),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(4.0)),
            Container(
              margin: EdgeInsets.only(right: getProportionateScreenWidth(22.0)),
              width: getProportionateScreenWidth(358.0),
              height: getProportionateScreenHeight(17.0),
              child: MyTextWidget(
                color: AppColors().kPrimary,
                size: getProportionateScreenWidth(14.0),
                text: 'Поля, отмеченные (*), обязательны для заполнения'.tr(),
              ),
            ),
            Form(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(24.0),
                      vertical: getProportionateScreenHeight(10.0),
                    ),
                    child: TextFormField(
                      style: TextStyle(
                        color: AppColors().kPrimaryBlackColors,
                        fontSize: getProportionateScreenWidth(16.0),
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Inter',
                      ),
                      controller: FormServices().name,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors().kPrimaryTextFormFieldColor,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            getProportionateScreenWidth(10.0),
                          ),
                        ),
                        hintText: 'Имя *'.tr(),
                        hintStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: getProportionateScreenWidth(15.0),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(24.0),
                      vertical: getProportionateScreenHeight(10.0),
                    ),
                    child: TextFormField(
                      style: TextStyle(
                        color: AppColors().kPrimaryBlackColors,
                        fontSize: getProportionateScreenWidth(16.0),
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Inter',
                      ),
                      controller: FormServices().surName,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors().kPrimaryTextFormFieldColor,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            getProportionateScreenWidth(10.0),
                          ),
                        ),
                        hintText: 'Фамилия *'.tr(),
                        hintStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: getProportionateScreenWidth(15.0),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      margin: EdgeInsets.only(
                        top: getProportionateScreenHeight(5.0),
                        bottom: getProportionateScreenHeight(5.0),
                      ),
                      height: getProportionateScreenHeight(78.0),
                      width: getProportionateScreenWidth(378.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          getProportionateScreenWidth(10.0),
                        ),
                        border: Border.all(
                          color: AppColors().kPrimaryBlackColors,
                        ),
                        color: const Color(0xFFF6F6F6),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(
                          top: getProportionateScreenHeight(25.0),
                          left: getProportionateScreenWidth(10.0),
                        ),
                        child: Text(
                          'Дата рождения *'.tr(),
                          style: TextStyle(
                              color: AppColors().kPrimaryBlackColors,
                              fontSize: getProportionateScreenWidth(16.0),
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(
                        () {
                          showDatePicker(
                            context: context,
                            initialDate: _now,
                            firstDate: _startedDate,
                            lastDate: _endDate,
                          ).then(
                            (value) => Fluttertoast.showToast(
                              msg: "$value",
                            ),
                          );
                        },
                      );
                    },
                  ),
                  SizedBox(height: getProportionateScreenWidth(5.0)),
                  Container(
                    height: getProportionateScreenHeight(75.0),
                    width: getProportionateScreenWidth(377.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors().kPrimaryBlackColors,
                      ),
                      color: const Color(0xFFF6F6F6),
                      borderRadius: BorderRadius.circular(
                        getProportionateScreenWidth(10.0),
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 8,
                          child: Container(
                            margin: EdgeInsets.only(
                              top: getProportionateScreenHeight(25.0),
                              left: getProportionateScreenWidth(10.0),
                            ),
                            child: MyDropDown(
                              selected: isWoman,
                              changed: (v) {
                                setState(
                                  () {
                                    isWoman = v;
                                  },
                                );
                              },
                              items: [
                                "Erkak".tr(),
                                "Ayol".tr(),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: SizedBox(
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: AppColors().kPrimaryFirstBgColors,
                              size: getProportionateScreenWidth(24.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(15.0)),
                  Container(
                    height: getProportionateScreenHeight(75.0),
                    width: getProportionateScreenWidth(377.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors().kPrimaryBlackColors,
                      ),
                      color: const Color(0xFFF6F6F6),
                      borderRadius: BorderRadius.circular(
                        getProportionateScreenWidth(10.0),
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 8,
                          child: Container(
                            margin: EdgeInsets.only(
                                // bottom: getProportionateScreenHeight(24.0),
                                top: getProportionateScreenHeight(25.0),
                                left: getProportionateScreenWidth(10.0)),
                            // color: Colors.blue,
                            width: getProportionateScreenWidth(150.0),
                            height: getProportionateScreenHeight(150.0),
                            child: MyDropDown(
                              selected: on_Of,
                              changed: (v) {
                                setState(
                                  () {
                                    on_Of = v;
                                  },
                                );
                              },
                              items: [
                                "Uylangan".tr(),
                                "Uylanmagan".tr(),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: SizedBox(
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: AppColors().kPrimaryFirstBgColors,
                              size: getProportionateScreenWidth(24.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(43.0)),
            Padding(
              padding:
                  EdgeInsets.only(right: getProportionateScreenWidth(30.0)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: const EdgeInsets.only(),
                    width: getProportionateScreenWidth(200.0),
                    height: getProportionateScreenHeight(34.0),
                    child: MyTextWidget(
                      color: AppColors().kPrimaryBlackColors,
                      text: 'Продолжить'.tr(),
                      size: getProportionateScreenWidth(27.0),
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(15.0),
                  ),
                  Container(
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
                            builder: (context) => const MainPage(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // @override
  // void dispose() {
  //   super.dispose();
  //   FormServices().name.dispose();
  //   FormServices().surName.dispose();
  // }

}

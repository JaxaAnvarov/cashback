import 'package:flutter/material.dart';
import 'package:tiin_cashback/core/constants/exports.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:tiin_cashback/provider/theme/theme_data.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _switchValue = true;
  bool _value = false;
  bool _value1 = false;

  @override
  Widget build(BuildContext context) {
    ThemeChanger _themeChanger = Provider.of<ThemeChanger>(context);
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
                top: getProportionateScreenHeight(40.0),
                left: getProportionateScreenWidth(20.0),
                right: getProportionateScreenWidth(160.0),
              ),
              child: Row(
                children: [
                  Container(
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: AppColors().kPrimaryWhiteColors,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Container(
                    child: Text(
                      'Настройки'.tr(),
                      style: TextStyle(
                        color: AppColors().kPrimaryWhiteColors,
                        fontSize: getProportionateScreenWidth(18.0),
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      context.setLocale(Locale('uz', 'UZ'));
                      // context.setLocale(Locale('ru','RU'));
                    },
                    icon: Icon(Icons.refresh),
                  ),
                  IconButton(
                    onPressed: () {
                      // context.setLocale(Locale('uz', 'UZ'));
                      context.setLocale(Locale('ru', 'RU'));
                    },
                    icon: const Icon(Icons.refresh),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(14.0)),
          Container(
            height: getProportionateScreenHeight(316.0),
            width: getProportionateScreenWidth(394.0),
            decoration: BoxDecoration(
              color: AppColors().kPrimaryWhiteColors,
              borderRadius: BorderRadius.circular(
                getProportionateScreenWidth(10.0),
              ),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 4),
                  blurRadius: getProportionateScreenWidth(4.0),
                  color: AppColors().kPrimaryOffetColors,
                ),
              ],
            ),
            child: Column(
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(107.0),
                  child: ListTile(
                    title: MyTextWidget(
                      color: AppColors().kTitleColor,
                      size: getProportionateScreenWidth(14.0),
                      text: 'Использовать Touch ID'.tr(),
                    ),
                    subtitle: MyTextWidget(
                      color: AppColors().kPrimarySubtitleColors,
                      text:
                          'Использовать Touch ID для быстрого \nвхода в приложение?'
                              .tr(),
                      size: getProportionateScreenWidth(12.0),
                    ),
                    trailing: Container(
                      margin: EdgeInsets.only(
                        top: getProportionateScreenHeight(30.0),
                      ),
                      child: CupertinoSwitch(
                        value: _switchValue,
                        onChanged: (value) {
                          setState(
                            () {
                              _switchValue = value;
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(16.0),
                  ),
                  child: const Divider(),
                ),
                Expanded(
                  child: SizedBox(
                    height: getProportionateScreenHeight(70.0),
                    child: ListTile(
                      title: MyTextWidget(
                        color: AppColors().kTextColor,
                        size: getProportionateScreenWidth(14.0),
                        text: 'Изменить ПИН-код'.tr(),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(16.0),
                  ),
                  child: const Divider(),
                ),
                Expanded(
                  child: SizedBox(
                    height: getProportionateScreenHeight(70.0),
                    child: ListTile(
                      title: MyTextWidget(
                        color: AppColors().kTextColor,
                        size: getProportionateScreenWidth(14.0),
                        text: 'Удалить ПИН-код'.tr(),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(16.0),
                  ),
                  child: const Divider(),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    height: getProportionateScreenHeight(70.0),
                    child: ListTile(
                      title: MyTextWidget(
                        color: AppColors().kTextColor,
                        size: getProportionateScreenWidth(14.0),
                        text: 'Выберите язык'.tr(),
                      ),
                      onTap: () {
                        _showModalBottomSheet(context);
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(16.0),
                  ),
                  child: const Divider(),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: getProportionateScreenHeight(70.0),
            ),
            child: Center(
              child: Column(
                children: [
                  Container(
                    child: MyTextWidget(
                      color: AppColors().kTelColor,
                      size: getProportionateScreenWidth(18.0),
                      text: '+998 94 555 95 62',
                    ),
                  ),
                  Container(
                    child: MyTextWidget(
                      color: AppColors().kPrimarySubtitleColors,
                      size: getProportionateScreenWidth(14.0),
                      text: 'Служба поддержки'.tr(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenWidth(40.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  _themeChanger.setTheme(ThemeData.dark());
                },
                child: const Text(
                  "Dark Mode",
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  _themeChanger.setTheme(ThemeData.light());
                },
                child: const Text(
                  "Light Mode",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _showModalBottomSheet(context) {
    return showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            getProportionateScreenWidth(10.0),
          ),
          topRight: Radius.circular(
            getProportionateScreenWidth(10.0),
          ),
        ),
      ),
      context: context,
      builder: (ctx) {
        return StatefulBuilder(
          builder: (ctx, setState) {
            return SizedBox(
              height: getProportionateScreenHeight(332.0),
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: getProportionateScreenHeight(30.0),
                    ),
                    padding: EdgeInsets.only(
                      left: getProportionateScreenWidth(28.5),
                      right: getProportionateScreenWidth(28.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          child: MyTextWidget(
                            color: AppColors().kPriaryBottomSheetColor,
                            size: getProportionateScreenWidth(24.0),
                            text: 'Выберите язык',
                          ),
                        ),
                        SizedBox(
                          child: IconButton(
                            icon: Icon(
                              Icons.cancel,
                              color: AppColors().kPrimaryMiniButtonColors,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      context.setLocale(
                        const Locale('ru', 'RU'),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(13.0)),
                      child: CheckboxListTile(
                        title: MyTextWidget(
                          color: AppColors().kPriaryBottomSheetColor,
                          size: getProportionateScreenWidth(24.0),
                          text: 'Русский',
                        ),
                        value: _value,
                        onChanged: (bool? v) {
                          setState(() {
                            _value = v!;
                            _value1 = !v;
                          });
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(22.0)),
                    child: Divider(
                      height: getProportionateScreenHeight(3.0),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(
                        () {
                          context.setLocale(
                            const Locale('uz', 'UZ'),
                          );
                        },
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(13.0)),
                      child: CheckboxListTile(
                        title: MyTextWidget(
                          color: AppColors().kPriaryBottomSheetColor,
                          size: getProportionateScreenWidth(24.0),
                          text: 'O’zbekcha',
                        ),
                        value: _value1,
                        onChanged: (v) {
                          setState(() {
                            _value1 = v!;
                            _value = !v;
                          });
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(22.0)),
                    child: Divider(
                      height: getProportionateScreenHeight(3.0),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      debugPrint("bosildi");
                    },
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(
                          top: getProportionateScreenHeight(30.0)),
                      height: getProportionateScreenHeight(54.0),
                      width: getProportionateScreenWidth(363.0),
                      decoration: BoxDecoration(
                        color: AppColors().kPrimaryWhiteColors,
                        borderRadius: BorderRadius.circular(
                          getProportionateScreenWidth(30.0),
                        ),
                        border: Border.all(
                          color: AppColors().kPrimaryFirstBgColors,
                          width: getProportionateScreenWidth(3.0),
                        ),
                      ),
                      child: Text(
                        "Сохранить",
                        style: TextStyle(
                          color: AppColors().kPrimaryFirstBgColors,
                          // color: Colors.black,
                          fontSize: getProportionateScreenWidth(25.0),
                          fontWeight: FontWeight.w700,
                          // fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

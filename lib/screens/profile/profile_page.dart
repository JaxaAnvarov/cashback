import 'package:flutter/material.dart';
import 'package:tiin_cashback/core/constants/exports.dart';
import 'package:easy_localization/easy_localization.dart';

class ProfilePage extends StatelessWidget {
   ProfilePage({Key? key}) : super(key: key);

  double? _height;
  double? _width;

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                height: getProportionateScreenHeight(60.0),
                margin: EdgeInsets.only(
                  top: getProportionateScreenHeight(61.0),
                  left: getProportionateScreenWidth(40.0),
                  right: getProportionateScreenWidth(192.0),
                ),
                child: MyTextWidget(
                  color: AppColors().kPrimaryWhiteColors,
                  size: getProportionateScreenWidth(18.0),
                  text: 'Профиль'.tr(),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: getProportionateScreenHeight(24.0),
                  left: getProportionateScreenWidth(15.0),
                  right: getProportionateScreenWidth(236.0)),
              child: MyTextWidget(
                color: AppColors().kPrimaryBlackColors,
                size: getProportionateScreenWidth(18.0),
                text: 'Мой пофиль в Tiin',
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(10.0)),
            Container(
              child: ListTile(
                leading: Container(
                  height: getProportionateScreenWidth(59.0),
                  width: getProportionateScreenWidth(59.0),
                  decoration: BoxDecoration(
                    color: AppColors().kPrimaryFirstBgColors,
                    shape: BoxShape.circle,
                    image: const DecorationImage(
                      image: AssetImage(
                        'assets/images/jaxa.png',
                      ),
                    ),
                  ),
                ),
                title: MyTextWidget(
                  color: AppColors().kPrimaryFirstBgColors,
                  size: getProportionateScreenWidth(18.0),
                  text: FormServices().name.text,
                ),
                subtitle: MyTextWidget(
                  color: AppColors().kPrimaryTelNumberColor,
                  size: getProportionateScreenWidth(14.0),
                  // ! Controllerni textidan keloyotgan ma'lumot kelishi kerak.
                  text: FormServices().number.text,
                ),
                trailing: InkWell(
                  radius: getProportionateScreenWidth(30.0),
                  onTap: () {
                    _showAlertDiaog(context);
                  },
                  child: Container(
                    height: getProportionateScreenWidth(30.0),
                    width: getProportionateScreenWidth(30.0),
                    child: SvgPicture.asset(AppIcons().logOut),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: getProportionateScreenHeight(20.0),
              ),
              height: _height! * 0.45,
              width: _width! * 0.9,
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
                  ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SettingsPage(),
                        ),
                      );
                    },
                    leading: SizedBox(
                      height: getProportionateScreenHeight(24.0),
                      width: getProportionateScreenWidth(24.0),
                      child: SvgPicture.asset(
                        AppIcons().settings,
                      ),
                    ),
                    title: MyTextWidget(
                      color: AppColors().kTitleColor,
                      size: getProportionateScreenWidth(14.0),
                      text: 'Настройки приложения'.tr(),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(16.0),
                    ),
                    child: const Divider(),
                  ),
                  ListTile(
                    onTap: () {
                      print('programma');
                    },
                    leading: Container(
                      height: getProportionateScreenHeight(24.0),
                      width: getProportionateScreenWidth(24.0),
                      child: SvgPicture.asset(
                        AppIcons().info,
                      ),
                    ),
                    title: MyTextWidget(
                      color: AppColors().kTitleColor,
                      size: getProportionateScreenWidth(14.0),
                      text: 'О программе лояльности'.tr(),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(16.0),
                    ),
                    child: const Divider(),
                  ),
                  ListTile(
                    onTap: () {
                      print('podelitsa');
                    },
                    leading: SizedBox(
                      height: getProportionateScreenHeight(24.0),
                      width: getProportionateScreenWidth(24.0),
                      child: SvgPicture.asset(
                        AppIcons().wifi,
                      ),
                    ),
                    title: MyTextWidget(
                      color: AppColors().kTitleColor,
                      size: getProportionateScreenWidth(14.0),
                      text: 'Поделиться приложением'.tr(),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(16.0),
                    ),
                    child: const Divider(),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AnswersPage(),
                        ),
                      );
                    },
                    leading: Container(
                      height: getProportionateScreenHeight(24.0),
                      width: getProportionateScreenWidth(24.0),
                      child: SvgPicture.asset(
                        AppIcons().message,
                      ),
                    ),
                    title: MyTextWidget(
                      color: AppColors().kTitleColor,
                      size: getProportionateScreenWidth(14.0),
                      text: 'Жалобы и предложения'.tr(),
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
                        text: '+998 94 555 58 92',
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
          ],
        ),
      ),
    );
  }

  _showAlertDiaog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              getProportionateScreenWidth(15.0),
            ),
          ),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: getProportionateScreenHeight(180.0),
                width: getProportionateScreenWidth(280.0),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        right: getProportionateScreenWidth(150.0),
                        top: getProportionateScreenHeight(10.0),
                        // left: getProportionateScreenWidth(20.0),
                      ),
                      child: Text(
                        "Выход",
                        style: TextStyle(
                            color: AppColors().kPrimaryBlackColors,
                            fontSize: getProportionateScreenWidth(24.0),
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: getProportionateScreenWidth(8.0),
                        top: getProportionateScreenHeight(5.0),
                      ),
                      child: Text(
                        'Вы хотите выйти из своего \nпрофиля ?',
                        style: TextStyle(
                          color: AppColors().kPrimaryBlackColors,
                          fontSize: getProportionateScreenWidth(18.0),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: getProportionateScreenHeight(5.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            child: TextButton(
                              style:
                                  TextButton.styleFrom(primary: Colors.indigo),
                              child: Text(
                                'Нет',
                                style: TextStyle(
                                  color: AppColors().kPrimaryFirstBgColors,
                                  fontSize: getProportionateScreenWidth(18.0),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                          Container(
                            child: TextButton(
                              style:
                                  TextButton.styleFrom(primary: Colors.indigo),
                              child: Text(
                                'Да',
                                style: TextStyle(
                                  color: AppColors().kPrimaryFirstBgColors,
                                  fontSize: getProportionateScreenWidth(18.0),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

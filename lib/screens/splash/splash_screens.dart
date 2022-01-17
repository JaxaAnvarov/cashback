import 'package:flutter/material.dart';
import 'package:tiin_cashback/core/constants/exports.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return LoginPage();
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                AppColors().kPrimaryFirstBgColors,
                AppColors().kPrimarySecondBgColors,
              ],
            ),
          ),
          child: Center(
            child: SvgPicture.asset(
              AppIcons().tiin,
            ),
          ),
        ),
      ),
    );
  }
}

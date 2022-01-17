import 'package:flutter/material.dart';
import 'package:tiin_cashback/core/constants/exports.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BottomNavBarProvier>(
      create: (context) => BottomNavBarProvier(),
      child: Consumer<BottomNavBarProvier>(
        builder: (context, model, child) => Scaffold(
          body: model.currentScreens,
          bottomNavigationBar: MyBottomNavBarWidget(
            model: model,
          ),
        ),
      ),
    );
  }
}

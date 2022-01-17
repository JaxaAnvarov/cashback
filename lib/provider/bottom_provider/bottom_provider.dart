import 'package:flutter/material.dart';
import 'package:tiin_cashback/core/constants/exports.dart';

class BottomNavBarProvier extends ChangeNotifier {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    const HomePage(),
    const LocationPage(),
    const BarcodePage(),
    const InfoPage(),
    ProfilePage(),
  ];

  set currentTab(int tab) {
    this._currentIndex = tab;
    notifyListeners();
  }

  int get currentTab => this._currentIndex;
  get currentScreens => this._screens[this._currentIndex];

  onTap(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}

import 'package:flutter/cupertino.dart';
import 'package:tiin_cashback/core/constants/exports.dart';

class FormServices extends ChangeNotifier {
  static final TextEditingController _numberController =
      TextEditingController();
  static final TextEditingController _nameController = TextEditingController();
  static final TextEditingController _surNameController =
      TextEditingController();
  static final TextEditingController _dataController = TextEditingController();
  static final TextEditingController _smsCode = TextEditingController();
  static final TextEditingController _sms = TextEditingController();

  TextEditingController get number => _numberController;
  TextEditingController get name => _nameController;
  TextEditingController get surName => _surNameController;
  TextEditingController get data => _dataController;
  TextEditingController get smsCode => _smsCode;
  TextEditingController get sms => _sms;
}

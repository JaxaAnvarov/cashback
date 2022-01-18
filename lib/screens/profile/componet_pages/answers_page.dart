import 'package:flutter/material.dart';
import 'package:tiin_cashback/core/constants/exports.dart';
import 'package:easy_localization/easy_localization.dart';

class AnswersPage extends StatefulWidget {
  const AnswersPage({Key? key}) : super(key: key);

  @override
  State<AnswersPage> createState() => _AnswersPageState();
}
                                                    
class _AnswersPageState extends State<AnswersPage> {
  bool _value1 = false;
  bool _value2 = false;
  bool _value3 = false;
  bool _value4 = false;

  bool _v1 = false;
  @override
  Widget build(BuildContext context) {
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
                margin: EdgeInsets.only(
                    top: getProportionateScreenHeight(61.0),
                    left: getProportionateScreenWidth(23.0)),
                child: MyTextWidget(
                  color: AppColors().kPrimaryWhiteColors,
                  size: getProportionateScreenWidth(18.0),
                  text: 'Отзывы',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: getProportionateScreenHeight(16.0),
                left: getProportionateScreenWidth(15.0),
              ),
              height: getProportionateScreenHeight(84.0),
              width: getProportionateScreenWidth(396.0),
              child: MyTextWidget(
                color: AppColors().kPriaryBottomSheetColor,
                size: getProportionateScreenWidth(18.0),
                text:
                    'Любой ваш отзыв важен для нас. \nПоля, отмеченные (*), обязательны для \nзаполнения.'.tr(),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(35.0)),
            Container(
              height: getProportionateScreenHeight(118.0),
              width: getProportionateScreenWidth(394.0),
              decoration: BoxDecoration(
                color: AppColors().kPrimaryWhiteColors,
                borderRadius: BorderRadius.circular(
                  getProportionateScreenWidth(10.0),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 6),
                    blurRadius: getProportionateScreenWidth(5.0),
                    color: AppColors().kPrimaryOffetColors,
                  )
                ],
              ),
              child: TextFormField(
                style: TextStyle(
                  color: AppColors().kPrimaryBlackColors,
                  fontSize: getProportionateScreenWidth(16.0),
                  fontWeight: FontWeight.w500,
                ),
                controller: FormServices().sms,
                maxLines: 3,
                decoration: InputDecoration(
                    hintText: 'Сообщение*'.tr(),
                    hintStyle: TextStyle(
                      color: AppColors().kPrimarySubtitleColors,
                      fontSize: getProportionateScreenWidth(18.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        getProportionateScreenWidth(10.0),
                      ),
                      borderSide: BorderSide(
                        color: AppColors().kTelColor,
                        width: getProportionateScreenWidth(1.0),
                      ),
                    ),
                    // filled: true,
                    fillColor: Colors.yellow,
                    border: InputBorder.none),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(23.0)),
            Container(
              height: getProportionateScreenHeight(264.0),
              width: getProportionateScreenWidth(397.0),
              decoration: BoxDecoration(
                color: AppColors().kPrimaryWhiteColors,
                borderRadius: BorderRadius.circular(
                  getProportionateScreenWidth(10.0),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 5),
                    color: AppColors().kPrimaryOffetColors,
                    blurRadius: getProportionateScreenWidth(5.0),
                  )
                ],
              ),
              child: Column(
                children: [
                  Expanded(
                    child: SizedBox(
                      child: ListTile(
                        onTap: () {
                          _obrasheniya();
                        },
                        title: MyTextWidget(
                          color: AppColors().kTitleColor,
                          size: getProportionateScreenWidth(14.0),
                          text: 'Выберите тип обращения*',
                        ),
                        trailing: IconButton(
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors().kIconsColor,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      child: ListTile(
                        onTap: () {
                          _locatsiya();
                        },
                        title: MyTextWidget(
                          color: AppColors().kTitleColor,
                          size: getProportionateScreenWidth(14.0),
                          text: 'Выберите филиал',
                        ),
                        trailing: IconButton(
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors().kIconsColor,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      child: ListTile(
                        title: MyTextWidget(
                          color: AppColors().kTitleColor,
                          size: getProportionateScreenWidth(14.0),
                          text: 'Прикрепить файл',
                        ),
                        trailing: IconButton(
                          icon: SvgPicture.asset(AppIcons().skripka),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(29.0)),
            Container(
              alignment: Alignment.center,
              height: getProportionateScreenHeight(55.0),
              width: getProportionateScreenWidth(353.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  getProportionateScreenWidth(10.0),
                ),
                border: Border.all(
                  color: AppColors().kPrimaryFirstBgColors,
                  width: getProportionateScreenWidth(2.0),
                ),
              ),
              child: Text(
                'Отправить',
                style: TextStyle(
                  color: AppColors().kTitleColor,
                  fontSize: getProportionateScreenWidth(18.0),
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _obrasheniya() {
    return showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            getProportionateScreenWidth(20.0),
          ),
          topRight: Radius.circular(
            getProportionateScreenWidth(20.0),
          ),
        ),
      ),
      context: context,
      builder: (context) {
        return StatefulBuilder(builder: (context, setState) {
          return SizedBox(
            height: getProportionateScreenHeight(385.0),
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
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(13.0)),
                  child: CheckboxListTile(
                    activeColor: AppColors().kPrimaryFirstBgColors,
                    title: MyTextWidget(
                      color: AppColors().kPriaryBottomSheetColor,
                      size: getProportionateScreenWidth(24.0),
                      text: 'Вопрос',
                    ),
                    value: _value1,
                    onChanged: (v) {
                      setState(() {
                        _value1 = !_value1;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(22.0)),
                  child: Divider(
                    height: getProportionateScreenHeight(3.0),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(13.0)),
                  child: CheckboxListTile(
                    activeColor: AppColors().kPrimaryFirstBgColors,
                    title: MyTextWidget(
                      color: AppColors().kPriaryBottomSheetColor,
                      size: getProportionateScreenWidth(24.0),
                      text: 'Жалоба',
                    ),
                    value: _value2,
                    onChanged: (v) {
                      setState(() {
                        _value2 = !_value2;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(22.0)),
                  child: Divider(
                    height: getProportionateScreenHeight(3.0),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(13.0)),
                  child: CheckboxListTile(
                    activeColor: AppColors().kPrimaryFirstBgColors,
                    title: MyTextWidget(
                      color: AppColors().kPriaryBottomSheetColor,
                      size: getProportionateScreenWidth(24.0),
                      text: 'Предложения',
                    ),
                    value: _value3,
                    onChanged: (v) {
                      setState(() {
                        _value3 = !_value3;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(22.0)),
                  child: Divider(
                    height: getProportionateScreenHeight(3.0),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(13.0)),
                  child: CheckboxListTile(
                    activeColor: AppColors().kPrimaryFirstBgColors,
                    title: MyTextWidget(
                      color: AppColors().kPriaryBottomSheetColor,
                      size: getProportionateScreenWidth(24.0),
                      text: 'Ищу работу ',
                    ),
                    value: _value4,
                    onChanged: (v) {
                      setState(() {
                        _value4 = !_value4;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(22.0)),
                  child: Divider(
                    height: getProportionateScreenHeight(3.0),
                  ),
                ),
              ],
            ),
          );
        });
      },
    );
  }

  _locatsiya() {
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
      builder: (context) {
        return SizedBox(
          height: getProportionateScreenHeight(300.0),
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
                        text: 'Выберите место',
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
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(13.0)),
                child: ListTile(
                  leading: SizedBox(
                    child: MyTextWidget(
                      color: AppColors().kPrimaryBlackColors,
                      size: getProportionateScreenWidth(18.0),
                      text: '1.',
                    ),
                  ),
                  title: Text(
                    'Tiin - Ulgurji marker Мирзо \nУлугбекский район Сайрам 5,',
                    style: TextStyle(
                      color: AppColors().kTitleColor,
                      fontSize: getProportionateScreenWidth(14.0),
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  trailing: Checkbox(
                    activeColor: AppColors().kPrimaryFirstBgColors,
                    value: _v1,
                    onChanged: (value) {
                      setState(() {
                        _v1 = !_v1;
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
            ],
          ),
        );
      },
    );
  }

   @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    FormServices().sms.dispose();
  }
}

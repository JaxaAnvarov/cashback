import 'package:flutter/material.dart';
import 'package:tiin_cashback/core/constants/exports.dart';
import 'package:easy_localization/easy_localization.dart';
class DetailPage extends StatelessWidget {
  DetailPage({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);
  String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
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
              child: Padding(
                padding: EdgeInsets.only(
                  top: getProportionateScreenHeight(50.0),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(23.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
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
                          SizedBox(
                            child: MyTextWidget(
                              color: AppColors().kPrimaryWhiteColors,
                              size: getProportionateScreenWidth(18.0),
                              text: 'Новости',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        child: SvgPicture.asset(
                          AppIcons().notificationFalse,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: getProportionateScreenHeight(500.0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors().kTextColor,
                image: DecorationImage(
                  image: AssetImage(
                    imageUrl!,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(238.0),
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    width: getProportionateScreenWidth(79.0),
                    margin: EdgeInsets.only(
                      top: getProportionateScreenHeight(14.0),
                      left: getProportionateScreenWidth(30.0),
                      right: getProportionateScreenWidth(300.0),
                    ),
                    child: MyTextWidget(
                      color: AppColors().kTextColor,
                      size: getProportionateScreenWidth(15.0),
                      text: '21.06.2021',
                    ),
                  ),
                  SizedBox(height: getProportionateScreenWidth(5.0)),
                  Padding(
                    padding: EdgeInsets.only(
                      left: getProportionateScreenWidth(20.0),
                      right: getProportionateScreenWidth(35.0),
                    ),
                    child: SizedBox(
                      width: getProportionateScreenWidth(334.0),
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            color: AppColors().kTextColor,
                          ),
                          children: [
                            TextSpan(
                              text: ('KOLBERG GROUP - '),
                              style: TextStyle(
                                color: AppColors().kTextColor,
                                fontSize: getProportionateScreenWidth(
                                  20.0,
                                ),
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Inter',
                              ),
                            ),
                            TextSpan(
                              text:
                                  ('многопрофильная \nгруппа компаний, ориентированных на \nдистрибьюцию товаров'.tr()),
                              style: TextStyle(
                                color: AppColors().kTextColor,
                                fontSize: getProportionateScreenWidth(16.0),
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Inter',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(10.0)),
                  Padding(
                    padding: EdgeInsets.only(
                        left: getProportionateScreenWidth(10.0),
                        right: getProportionateScreenWidth(10.0)),
                    child: Container(
                      width: getProportionateScreenWidth(350.0),
                      child: MyTextWidget(
                        color: AppColors().kText,
                        size: getProportionateScreenWidth(14.0),
                        text:
                            'вы можете осуществить оплату за свою покупку с \nпомощью безналичных расчетов путем перечисления \nденежных средств на \nрасчетный счет нашего предприятия;'.tr()
                      ),
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
}

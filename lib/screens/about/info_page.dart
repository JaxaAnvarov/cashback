import 'package:flutter/material.dart';
import 'package:tiin_cashback/core/constants/exports.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  final CarouselController _carouselController = CarouselController();
  int _current = 0;
  int? index;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
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
                        Container(
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: AppColors().kPrimaryWhiteColors,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          child: MyTextWidget(
                            color: AppColors().kPrimaryWhiteColors,
                            size: getProportionateScreenWidth(18.0),
                            text: 'Новости',
                          ),
                        ),
                      ],
                    ),
                    Container(
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
            height: getProportionateScreenHeight(620.0),
            width: double.infinity,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return CarouselSlider(
                  options: CarouselOptions(
                    height: getProportionateScreenHeight(620.0),
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.70,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    },
                  ),
                  carouselController: _carouselController,
                  items: [
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors().kPrimaryWhiteColors,
                        borderRadius: BorderRadius.circular(
                          getProportionateScreenWidth(15.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(0, 5),
                            blurRadius: getProportionateScreenWidth(4.0),
                            color: AppColors().kPrimaryOffetColors,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 7,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: getProportionateScreenWidth(3.0),
                                right: getProportionateScreenWidth(3.0),
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DetailPage(
                                        imageUrl: 'assets/images/rasm1.png',
                                      ),
                                    ),
                                  );
                                },
                                child: Container(
                                  height: getProportionateScreenHeight(360.0),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(
                                        getProportionateScreenWidth(10.0),
                                      ),
                                      topLeft: Radius.circular(
                                        getProportionateScreenWidth(10.0),
                                      ),
                                    ),
                                    image: const DecorationImage(
                                      image: AssetImage(
                                        'assets/images/rasm1.png',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              height: getProportionateScreenHeight(200.0),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                      top: getProportionateScreenHeight(10.0),
                                      left: getProportionateScreenWidth(12.0),
                                      right: getProportionateScreenWidth(215.0),
                                    ),
                                    child: MyTextWidget(
                                      color: AppColors().kTextColor,
                                      size: getProportionateScreenWidth(14.0),
                                      text: '21.06.2021',
                                    ),
                                  ),
                                  SizedBox(
                                      height: getProportionateScreenWidth(5.0)),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal:
                                          getProportionateScreenWidth(12.0),
                                    ),
                                    child: Container(
                                      child: RichText(
                                        text: TextSpan(
                                          style: TextStyle(
                                            color: AppColors().kTextColor,
                                          ),
                                          children: [
                                            TextSpan(
                                              text: ('KOLBERG GROUP - \n'),
                                              style: TextStyle(
                                                color: AppColors().kTextColor,
                                                fontSize:
                                                    getProportionateScreenWidth(
                                                  20.0,
                                                ),
                                                fontWeight: FontWeight.w700,
                                                fontFamily: 'Inter',
                                              ),
                                            ),
                                            TextSpan(
                                              text:
                                                  ('многопрофильная группа компаний, ориентированных на дистрибьюцию товаров'),
                                              style: TextStyle(
                                                color: AppColors().kTextColor,
                                                fontSize:
                                                    getProportionateScreenWidth(
                                                        16.0),
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Inter',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

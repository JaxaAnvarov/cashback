import 'package:flutter/material.dart';
import 'package:tiin_cashback/core/constants/exports.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:tiin_cashback/core/models/users/get_users.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  double? _height;
  double? _width;

  bool onPressed = false;

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    SizeConfig().init(context);
    return Scaffold(
      body: FutureBuilder(
        future: UsersData.getUser,
        builder: (context, AsyncSnapshot<List<Users>> snap) {
          var data = snap.data;
          if (snap.hasData) {
            return Column(
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(380.0),
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Container(
                        height: getProportionateScreenHeight(209.0),
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/bg.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Container(
                          margin: EdgeInsets.only(
                            top: getProportionateScreenHeight(60.0),
                            left: getProportionateScreenWidth(23.0),
                            right: getProportionateScreenWidth(142.0),
                          ),
                          child: MyTextWidget(
                            color: AppColors().kPrimaryWhiteColors,
                            size: getProportionateScreenWidth(36.0),
                            text: 'Добрый день,'.tr(),
                          ),
                        ),
                      ),
                      Positioned(
                        top: getProportionateScreenHeight(138.0),
                        left: getProportionateScreenWidth(17.0),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              onPressed = !onPressed;
                            });
                          },
                          child: onPressed == false
                              ? AnimatedContainer(
                                  curve: Curves.fastOutSlowIn,
                                  duration: const Duration(seconds: 2),
                                  width: _width! * 0.9,
                                  height: _height! * 0.25,
                                  decoration: BoxDecoration(
                                    color: AppColors().kPrimaryWhiteColors,
                                    borderRadius: BorderRadius.circular(
                                      getProportionateScreenWidth(10.0),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: AppColors().kPrimaryOffetColors,
                                        blurRadius:
                                            getProportionateScreenWidth(3.0),
                                        offset: const Offset(0, 4),
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                          top: _height! * 00.0,
                                          left:
                                              getProportionateScreenWidth(24.0),
                                          right: getProportionateScreenWidth(
                                              115.0),
                                        ),
                                        width:
                                            getProportionateScreenWidth(225.0),
                                        child: MyTextWidget(
                                          color:
                                              AppColors().kPrimaryText1Colors,
                                          size:
                                              getProportionateScreenWidth(24.0),
                                          text: snap.data![0].name.toString(),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                          right:
                                              getProportionateScreenWidth(14.0),
                                          left: getProportionateScreenWidth(
                                              303.0),
                                        ),
                                        child:
                                            SvgPicture.asset(AppIcons().qwifi),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                          left:
                                              getProportionateScreenWidth(24.0),
                                          right:
                                              getProportionateScreenWidth(55.0),
                                        ),
                                        width:
                                            getProportionateScreenWidth(290.0),
                                        child: MyTextWidget(
                                          color:
                                              AppColors().kPrimaryText1Colors,
                                          size:
                                              getProportionateScreenWidth(18.0),
                                          text: 'На вашем балансе'.tr(),
                                        ),
                                      ),
                                      SizedBox(
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                            left: getProportionateScreenWidth(
                                                35.0),
                                            right: getProportionateScreenWidth(
                                                18.0),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              SizedBox(
                                                child: MyTextWidget(
                                                  color: AppColors()
                                                      .kPrimaryButtonColors,
                                                  size:
                                                      getProportionateScreenWidth(
                                                          36.0),
                                                  text: '376,650.00',
                                                ),
                                              ),
                                              SizedBox(
                                                  width:
                                                      getProportionateScreenWidth(
                                                          0.0)),
                                              SizedBox(
                                                child: MyTextWidget(
                                                  color: AppColors().kColor,
                                                  size:
                                                      getProportionateScreenWidth(
                                                          14.0),
                                                  text: 'Показать код'.tr(),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              : AnimatedContainer(
                                  curve: Curves.decelerate,
                                  duration: const Duration(seconds: 2),
                                  height: _height! * 0.22,
                                  width: _width! * 0.9,
                                  decoration: BoxDecoration(
                                    color: AppColors().kPrimaryWhiteColors,
                                    borderRadius: BorderRadius.circular(
                                      getProportionateScreenWidth(10.0),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: AppColors().kPrimaryOffetColors,
                                        blurRadius:
                                            getProportionateScreenWidth(3.0),
                                        offset: const Offset(0, 4),
                                      ),
                                    ],
                                  ),
                                  child: Container(
                                    margin: EdgeInsets.all(
                                        getProportionateScreenWidth(15.0)),
                                    height: _height! * 0.9,
                                    width: _width! * 0.22,
                                    child: Image.asset(
                                      'assets/images/barcode.png',
                                    ),
                                  ),
                                ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: getProportionateScreenHeight(83.0),
                  width: getProportionateScreenWidth(394.0),
                  decoration: BoxDecoration(
                    color: AppColors().kPrimaryWhiteColors,
                    borderRadius: BorderRadius.circular(
                      getProportionateScreenWidth(10.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 5),
                        blurRadius: getProportionateScreenWidth(4.0),
                        color: AppColors().kPrimaryOffetColors,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(40.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          child: MyTextWidget(
                            color: AppColors().kPrimaryBottomNavBarColors,
                            size: getProportionateScreenWidth(20.0),
                            text: 'Начните \nпокупки через'.tr(),
                          ),
                        ),
                        Container(
                          height: getProportionateScreenHeight(58.0),
                          width: getProportionateScreenWidth(69.0),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/betto.png',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: getProportionateScreenWidth(105.0),
                    right: getProportionateScreenWidth(105.0),
                    top: getProportionateScreenHeight(32.0),
                  ),
                  child: SizedBox(
                    height: getProportionateScreenHeight(26.0),
                    child: TabBar(
                      controller: tabController,
                      unselectedLabelColor: AppColors().kColor,
                      indicatorColor: AppColors().kPrimaryButtonColors,
                      indicatorSize: TabBarIndicatorSize.label,
                      labelColor: AppColors().kPrimaryBlackColors,
                      tabs: [
                        Tab(
                          child: Text(
                            'Бонусы'.tr(),
                            style: TextStyle(
                              fontSize: getProportionateScreenWidth(14.0),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Покупки'.tr(),
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: getProportionateScreenWidth(14.0),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      SizedBox(
                        height: getProportionateScreenHeight(150.0),
                        child: ListView.builder(
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: getProportionateScreenWidth(15.0),
                                vertical: getProportionateScreenHeight(5.0),
                              ),
                              child: Container(
                                height: getProportionateScreenHeight(88.0),
                                width: getProportionateScreenHeight(397.0),
                                decoration: BoxDecoration(
                                  color: AppColors().kPrimaryWhiteColors,
                                  borderRadius: BorderRadius.circular(
                                    getProportionateScreenWidth(10.0),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: const Offset(0, 4),
                                      blurRadius:
                                          getProportionateScreenWidth(4.0),
                                      color: AppColors().kPrimaryOffetColors,
                                    ),
                                  ],
                                ),
                                child: ListTile(
                                  leading: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: getProportionateScreenWidth(
                                                20.0),
                                            left: getProportionateScreenWidth(
                                                18.0),
                                            right: getProportionateScreenWidth(
                                                265.0)),
                                        child: MyTextWidget(
                                          color:
                                              AppColors().kPrimaryBlackColors,
                                          size:
                                              getProportionateScreenWidth(14.0),
                                          text: 'Кэшбек'.tr(),
                                        ),
                                      ),
                                      SizedBox(
                                          height: getProportionateScreenHeight(
                                              3.0)),
                                      Container(
                                        margin: EdgeInsets.only(
                                          left:
                                              getProportionateScreenWidth(18.0),
                                          right: getProportionateScreenWidth(
                                              200.0),
                                          // bottom: getProportionateScreenWidth(18.0),
                                        ),
                                        child: MyTextWidget(
                                          color: AppColors().kColor,
                                          size:
                                              getProportionateScreenWidth(14.0),
                                          text: '2021-01-05 18:32',
                                        ),
                                      ),
                                    ],
                                  ),
                                  trailing: Container(
                                    margin: EdgeInsets.only(
                                      top: getProportionateScreenHeight(20.0),
                                      left: getProportionateScreenWidth(40.0),
                                    ),
                                    alignment: Alignment.center,
                                    height: getProportionateScreenHeight(26.0),
                                    width: getProportionateScreenWidth(113.0),
                                    child: MyTextWidget(
                                      size: getProportionateScreenWidth(18.0),
                                      color: AppColors().kPrimaryBlackColors,
                                      text: '+321 uzs',
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(300.0),
                        child: ListView.builder(
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: getProportionateScreenWidth(15.0),
                                vertical: getProportionateScreenHeight(5.0),
                              ),
                              child: Container(
                                height: getProportionateScreenHeight(88.0),
                                width: getProportionateScreenHeight(397.0),
                                decoration: BoxDecoration(
                                  color: AppColors().kPrimaryWhiteColors,
                                  borderRadius: BorderRadius.circular(
                                    getProportionateScreenWidth(10.0),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: const Offset(0, 4),
                                      blurRadius:
                                          getProportionateScreenWidth(4.0),
                                      color: AppColors().kPrimaryOffetColors,
                                    ),
                                  ],
                                ),
                                child: ListTile(
                                  leading: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: getProportionateScreenWidth(
                                                20.0),
                                            left: getProportionateScreenWidth(
                                                19.0),
                                            right: getProportionateScreenWidth(
                                                265.0)),
                                        child: MyTextWidget(
                                          color:
                                              AppColors().kPrimaryBlackColors,
                                          size:
                                              getProportionateScreenWidth(14.0),
                                          text: 'Покупка'.tr(),
                                        ),
                                      ),
                                      SizedBox(
                                          height: getProportionateScreenHeight(
                                              3.0)),
                                      Container(
                                        margin: EdgeInsets.only(
                                          left:
                                              getProportionateScreenWidth(16.0),
                                          right: getProportionateScreenWidth(
                                              200.0),
                                          // bottom: getProportionateScreenWidth(18.0),
                                        ),
                                        child: MyTextWidget(
                                          color: AppColors().kColor,
                                          size:
                                              getProportionateScreenWidth(14.0),
                                          text: '2021-01-05 18:32',
                                        ),
                                      ),
                                    ],
                                  ),
                                  trailing: Container(
                                    margin: EdgeInsets.only(
                                      top: getProportionateScreenHeight(20.0),
                                      left: getProportionateScreenWidth(40.0),
                                    ),
                                    alignment: Alignment.center,
                                    height: getProportionateScreenHeight(26.0),
                                    width: getProportionateScreenWidth(136.0),
                                    child: MyTextWidget(
                                      size: getProportionateScreenWidth(18.0),
                                      color: AppColors().kPrimaryBlackColors,
                                      text: '126,554,00 uzs',
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          } else {
            return const Center(
              child: CupertinoActivityIndicator(),
            );
          }
        },
      ),
    );
  }
}

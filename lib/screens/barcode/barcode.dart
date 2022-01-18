import 'package:flutter/material.dart';
import 'package:tiin_cashback/core/constants/exports.dart';
import 'package:easy_localization/easy_localization.dart';

class BarcodePage extends StatefulWidget {
  const BarcodePage({Key? key}) : super(key: key);

  @override
  State<BarcodePage> createState() => _BarcodePageState();
}

class _BarcodePageState extends State<BarcodePage> {
  String _scanBarcode = 'Unklown';
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
            SizedBox(height: getProportionateScreenHeight(50.0)),
            Container(
              height: _height! * 0.4,
              width: _height! * 0.4,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/nana.png',
                  ),
                ),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(5.0)),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(16.0),
              ),
              child: SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: getProportionateScreenHeight(21.0),
                      width: getProportionateScreenWidth(52.0),
                      child: Text(
                        "#6093",
                        style: TextStyle(
                          color: AppColors().kPrimaryFirstBgColors,
                          fontSize: getProportionateScreenWidth(15.0),
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Inter',
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: getProportionateScreenHeight(21.0),
                      width: getProportionateScreenWidth(150.0),
                      child: Text(
                        _scanBarcode,
                        style: TextStyle(
                          color: AppColors().kPrimaryFirstBgColors,
                          fontSize: getProportionateScreenWidth(15.0),
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Inter',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(35.0)),
            Container(
              margin: EdgeInsets.only(right: getProportionateScreenWidth(30.0)),
              height: getProportionateScreenHeight(56.0),
              width: getProportionateScreenWidth(369.0),
              child: Text(
                'Смесь Nestle NAN Optipro 4 с \n18м 400гр'.tr(),
                style: TextStyle(
                  color: const Color(0xFF545454),
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                  fontSize: getProportionateScreenWidth(18.0),
                ),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(19.0)),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: getProportionateScreenHeight(76.0),
                    width: getProportionateScreenWidth(135.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: AppColors().kPrimaryFirstBgColors,
                          width: getProportionateScreenWidth(1.5)),
                    ),
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: getProportionateScreenHeight(76.0),
                          width: getProportionateScreenWidth(82.0),
                          color: Colors.white,
                          child: Text(
                            '2,950',
                            style: TextStyle(
                              color: const Color(0xFF404040),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              fontSize: getProportionateScreenWidth(18.0),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: getProportionateScreenHeight(76.0),
                          width: getProportionateScreenWidth(50.0),
                          decoration: BoxDecoration(
                            color: AppColors().kPrimaryWhiteColors,
                            image: const DecorationImage(
                              image: AssetImage(
                                'assets/images/tri.png',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Text(
                            'от\n1шт',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors().kPrimaryWhiteColors,
                              fontSize: getProportionateScreenWidth(14.0),
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Inter',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: getProportionateScreenHeight(76.0),
                    width: getProportionateScreenWidth(135.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors().kPrimaryFirstBgColors,
                        width: getProportionateScreenWidth(1.5),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: getProportionateScreenHeight(76.0),
                          width: getProportionateScreenWidth(82.0),
                          color: Colors.white,
                          child: Text(
                            '2,750',
                            style: TextStyle(
                              color: const Color(0xFF404040),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              fontSize: getProportionateScreenWidth(18.0),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: getProportionateScreenHeight(76.0),
                          width: getProportionateScreenWidth(50.0),
                          decoration: BoxDecoration(
                            color: AppColors().kPrimaryWhiteColors,
                            image: const DecorationImage(
                              image: AssetImage(
                                'assets/images/tri.png',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Text(
                            'от\n5шт',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors().kPrimaryWhiteColors,
                              fontSize: getProportionateScreenWidth(14.0),
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Inter',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: getProportionateScreenHeight(76.0),
                    width: getProportionateScreenWidth(135.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors().kPrimaryFirstBgColors,
                        width: getProportionateScreenWidth(1.5),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: getProportionateScreenHeight(76.0),
                          width: getProportionateScreenWidth(82.0),
                          color: Colors.white,
                          child: Text(
                            '2,450',
                            style: TextStyle(
                              color: const Color(0xFF404040),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              fontSize: getProportionateScreenWidth(18.0),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: getProportionateScreenHeight(76.0),
                          width: getProportionateScreenWidth(50.0),
                          decoration: BoxDecoration(
                            color: AppColors().kPrimaryWhiteColors,
                            image: const DecorationImage(
                              image: AssetImage(
                                'assets/images/tri.png',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Text(
                            'от\n10шт',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors().kPrimaryWhiteColors,
                              fontSize: getProportionateScreenWidth(14.0),
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Inter',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(30.0)),
            InkWell(
              onTap: () {
                scanBarcodeNormal();
              },
              child: Container(
                alignment: Alignment.center,
                height: getProportionateScreenHeight(55.0),
                width: getProportionateScreenWidth(400.0),
                decoration: BoxDecoration(
                  color: AppColors().kPrimaryFirstBgColors,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  'Сканировать'.tr(),
                  style: TextStyle(
                    color: AppColors().kPrimaryWhiteColors,
                    fontFamily: 'Inter',
                    fontSize: getProportionateScreenWidth(18.0),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> scanBarcodeNormal() async {
    String barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.BARCODE);
      debugPrint(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _scanBarcode = barcodeScanRes;
    });
  }
}

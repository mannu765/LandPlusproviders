import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:landplush/screen/materials/material_details.dart';
import 'package:landplush/utils/strings.dart';
import 'package:landplush/utils/style.dart';
import 'package:landplush/utils/variable.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import '../provider/counter.dart';
import '../provider/order_notify.dart';
import '../screen/home/construction_estimate/pdf_view.dart';
import '../screen/home_services/expansion_list.dart';
import '../screen/home_services/rating_widget.dart';
import '../utils/colors.dart';
import '../widget/button.dart';
import '../widget/image_slider.dart';
import 'class_and_methods.dart';
import 'images.dart';
import 'lists.dart';

Widget gridBox({
  required BuildContext context,
  required Function() onTap,
  required String title,
  required String imageName,
  required Color color,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: height! * 0.10,
          width: height! * 0.10,
          decoration: BoxDecoration(
            // color: greyColor.shade100,
            gradient: LinearGradient(
              colors: [
                greyColor.shade200,
                whiteColor,
                whiteColor,
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
            // color: color.withOpacity(0.1),
            border: Border.all(color: greyColor.shade200),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image.asset(
              imageName,
              color: appColorTheme,
              // color: color,
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            title,
            textAlign: TextAlign.center,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: homePageSubtitleTextStyle.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
  );
}

///bottomSheetItem
Widget bottomSheetItem({required String imgName, required String title, required Function() onTap}) {
  return Expanded(
    flex: 1,
    child: Padding(
      padding: const EdgeInsets.all(35.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: width! > 550 ? height! * 0.35 : height! * 0.25,
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height: height! * 0.05,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image.asset(
                      imgName,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),
              Text(
                title,
                textAlign: TextAlign.center,
                maxLines: 2,
                style: homePageSubtitleTextStyle.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}

/// dynamicGrid for all types
Widget dynamicGrid({
  required BuildContext context,
  required List list,
  required String imageName,
  required Color color,
  required int grid,
}) {
  return GridView.builder(
    physics: const BouncingScrollPhysics(),
    shrinkWrap: true,
    gridDelegate: customGridDelegate(grid),
    itemCount: list.length,
    itemBuilder: (context, index) {
      return Center(
        child: gridBox(
          color: color,
          context: context,
          imageName: imageName,
          onTap: list[index].onTap,
          title: list[index].title,
        ),
      );
    },
  );
}

/// customGridDelegate
customGridDelegate(grid) {
  return SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: width! > 550 ? 4 : grid,
    crossAxisSpacing: width! > 550 ? 10 : 0,
    mainAxisSpacing: width! > 550 ? 10 : 0,
    mainAxisExtent: height! * 0.20,
    childAspectRatio: (1 / 1.5),
  );
}

///
Widget boldTitleTextWidget({required String title}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20),
    child: Text(
      title.toUpperCase(),
      style: homePageBoldTitleTextStyle,
      textAlign: TextAlign.center,
    ),
  );
}

/// brandGrid
Widget brandGrid({
  required BuildContext context,
  required List list,
}) {
  return GridView.builder(
    physics: const BouncingScrollPhysics(),
    shrinkWrap: true,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: width! > 550 ? 4 : 4,
      crossAxisSpacing: width! > 550 ? 10 : 5,
      mainAxisSpacing: width! > 550 ? 10 : 5,
      //mainAxisExtent: height! * 0.12,
      // childAspectRatio: (1 / 1.5),
    ),
    itemCount: list.length,
    itemBuilder: (context, index) {
      return Center(
        child: brandGridBox(
          context: context,
          imageName: list[index].imgName,
          onTap: list[index].onTap,
        ),
      );
    },
  );
}

///brandGridBox
Widget brandGridBox({
  required BuildContext context,
  required Function() onTap,
  required String imageName,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: height! * 0.10,
          width: height! * 0.10,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                greyColor.shade200,
                whiteColor,
                whiteColor,
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
            border: Border.all(color: greyColor.shade200),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image.asset(
              imageName,
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      ],
    ),
  );
}

///searchWidget
searchWidget() {
  return GestureDetector(
    onTap: () {
      botToastWidget(
        title: searchText,
      );
    },
    child: TextField(
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            10.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: greyColor,
          ),
          borderRadius: BorderRadius.circular(
            10.0,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            10.0,
          ),
        ),
        hintStyle: hintTextStyle,
        contentPadding: const EdgeInsets.only(
          top: 20,
        ), // add padding to adjust text
        isDense: false,
        hintText: mSearchOptionsText,
        prefixIcon: const Icon(
          Icons.search_rounded,
        ),
      ),
    ),
  );
}

///checkPinCodeWidget
checkPinCodeWidget() {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: GestureDetector(
      onTap: () {
        botToastWidget(
          title: searchText,
        );
      },
      child: TextField(
        maxLength: 6,
        decoration: InputDecoration(
          counterText: "",
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              10.0,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: greyColor,
            ),
            borderRadius: BorderRadius.circular(
              10.0,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              10.0,
            ),
          ),
          hintStyle: hintTextStyle,
          contentPadding: const EdgeInsets.only(
            top: 20,
            left: 10,
          ), // add padding to adjust text
          isDense: false,

          hintText: CityList.cityList()[3].pinCode,
          suffixIcon: Container(
            width: width! * 0.2,
            alignment: Alignment.centerRight,
            decoration: BoxDecoration(
              color: appColorTheme,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                checkText,
                textAlign: TextAlign.center,
                style: btnTextStyle,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

///productTitle
Widget productTitle({required String title}) {
  return Align(
    alignment: Alignment.topLeft,
    child: Text(
      title,
      textAlign: TextAlign.start,
      style: productTitleTextStyle,
    ),
  );
}

Widget productSubTitle({required String title}) {
  return Align(
    alignment: Alignment.topLeft,
    child: Text(
      title,
      textAlign: TextAlign.start,
      style: productSubtitleTextStyle,
    ),
  );
}

Widget productDetailsTextWidget({
  required String title,
  required String subtitle,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: productTitleTextStyle,
        ),
        Text(
          subtitle,
          style: productSubtitleTextStyle,
        ),
      ],
    ),
  );
}

lineThroughText({
  required String title,
  required String price,
  required String subtitle,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: productTitleTextStyle,
        ),
        Text(
          price,
          style: lineThroughTextStyle.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          subtitle,
          style: productSubtitleTextStyle,
        ),
      ],
    ),
  );
}

/// productDetailsPriceText
productDetailsPriceText({
  required String title,
  required String subtitle,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
    child: Row(
      children: [
        Text(
          title,
          style: largeTitleTextStyle.copyWith(color: appColorTheme),
        ),
        Text(
          subtitle,
          style: keyValueSubtitleTextStyle,
        ),
      ],
    ),
  );
}

///tableRowTitleWidget
tableRowTitleWidget({
  required String title,
}) {
  return TableRow(
    decoration: BoxDecoration(
      color: greyColor.shade100,
    ),
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Text(
          title,
          style: tableKeyTextStyle,
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Text(
          title,
          style: tableKeyTextStyle,
        ),
      ),
    ],
  );
}

///tableRowSubtitleWidget
tableRowSubtitleWidget({
  required String currentItem,
  required String similarItem,
}) {
  return TableRow(
    decoration: const BoxDecoration(),
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        child: Text(currentItem, style: tableValueTextStyle),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        child: Text(similarItem, style: tableValueTextStyle),
      ),
    ],
  );
}

void customPrint(Object? object) {
  kDebugMode ? print(object) : null;
}

Widget boldTitleTextSliverListWidget({required String title}) {
  return Text(
    title.toUpperCase(),
    style: homePageBoldTitleTextStyle,
  );
}

productListTile({required Function() onTap, required BuildContext context}) {
  final counterModel = Provider.of<MyCounter>(context);

  return ListTile(
    minVerticalPadding: 5,
    contentPadding: const EdgeInsets.all(5),
    horizontalTitleGap: 10,
    minLeadingWidth: 0,
    dense: true,
    title: Row(
      children: [
        Expanded(
          flex: 4,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: width! * 0.35,
                  width: width! * 0.35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage(fanImg),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  width: width! * 0.20,
                  decoration: const BoxDecoration(
                    color: appColorTheme,
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(10), topLeft: Radius.circular(10)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "22% OFF",
                      textAlign: TextAlign.center,
                      style: discountTextStyle,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          flex: 8,
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  sc1Text,
                  style: productTitleTextStyle,
                ),
                Row(
                  children: [
                    Text(
                      "$modelText : ",
                      style: serviceSubtitleTextStyle,
                    ),
                    Text(
                      sc2Text,
                      style: serviceSubtitleTextStyle.copyWith(color: greyColor),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    children: [
                      Text(
                        "Brand : ",
                        style: serviceSubtitleTextStyle,
                      ),
                      Text(
                        "Crompton",
                        style: serviceSubtitleTextStyle.copyWith(
                          color: greyColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, right: 10.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      sc3Text,
                                      style: serviceSubtitleTextStyle,
                                    ),
                                    Text(
                                      sc3_1Text,
                                      style: lineThroughTextStyle,
                                    ),
                                  ],
                                ),
                                Text(
                                  sc4Text,
                                  style: minSubTitleTextStyle,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              sc5Text,
                              style: moneyTextStyle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                counterModel.getCounter() > 1
                    ? Padding(
                        padding: const EdgeInsets.only(bottom: 8.0, top: 8),
                        child: Text(
                          "${counterModel.getCounter()} $sc7Text",
                          style: serviceSubtitleTextStyle.copyWith(color: Colors.blueAccent),
                        ),
                      )
                    : SizedBox(
                        height: height! * 0.05,
                      ),
              ],
            ),
          ),
        ),
      ],
    ),
    subtitle: GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
          decoration: BoxDecoration(
            color: blackColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              addToCartText,
              textAlign: TextAlign.center,
              style: btnTextStyle,
            ),
          ),
        ),
      ),
    ),
  );
}

tableRowWidget({
  required String key,
  required String value,
}) {
  return TableRow(
    decoration: BoxDecoration(
      color: greyColor.shade100,
    ),
    children: [
      TableCell(
        child: Container(
          color: greyColor.shade100,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              key,
              style: tableKeyTextStyle,
            ),
          ),
        ),
      ),
      TableCell(
        child: Container(
          color: whiteColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              value,
              style: tableKeyTextStyle.copyWith(color: greyColor),
            ),
          ),
        ),
      ),
    ],
  );
}

emptyTable() {
  return TableRow(
    children: [
      TableCell(
        child: Row(
          children: <Widget>[
            Container(),
          ],
        ),
      ),
      TableCell(
        child: Row(
          children: <Widget>[
            Container(),
          ],
        ),
      )
    ],
  );
}

///
Divider customDivider = const Divider(
  thickness: 0.5,
  color: blackColor,
);
Divider customDividerWhite = const Divider(
  thickness: 0.5,
  color: whiteColor,
);
SizedBox customDividerVertical = const SizedBox(
  height: 15,
  child: VerticalDivider(color: blackColor),
);
SizedBox customDividerVerticalWhite = const SizedBox(
  height: 15,
  child: VerticalDivider(color: white),
);
Divider customDividerForPdf = const Divider(
  height: 0,
  thickness: 0.5,
  color: blackColor,
);

///

Padding appOption({required BuildContext context, required String title, required IconData? icon}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      decoration: BoxDecoration(
        color: greyColor.shade200,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            GestureDetector(
              onTap: () {},
              child: Icon(
                icon,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: width! * 0.05,
            ),
            Text(
              title,
              style: subtitleTextStyle,
            ),
          ],
        ),
      ),
    ),
  );
}

///
offerWidget({
  required BuildContext context,
  required String title,
  required String subtitle,
  required IconData? icon,
}) {
  return Container(
    width: width! * 0.7,
    margin: const EdgeInsets.symmetric(horizontal: 5),
    decoration: BoxDecoration(
      color: greyColor.shade200,
      borderRadius: const BorderRadius.all(
        Radius.circular(10),
      ),
    ),
    child: Center(
      child: ListTile(
        dense: true,
        horizontalTitleGap: 0,
        leading: GestureDetector(
          onTap: () {},
          child: Icon(
            icon,
            color: Colors.deepPurple,
            size: 30,
          ),
        ),
        title: Text(
          title,
          style: offerTilesTitleTextStyle,
        ),
        subtitle: Text(
          subtitle,
          style: smallSubtitleTextStyle,
        ),
      ),
    ),
  );
}

///
Padding rateCardChargesWidget({
  required BuildContext context,
  required String title,
  required IconData? icon,
  Function()? onTap,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      decoration: BoxDecoration(
        color: greyColor.shade200,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: onTap,
                    child: Icon(
                      icon,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: width! * 0.05,
                  ),
                  Expanded(
                    child: Text(
                      title,
                      style: subtitleTextStyle,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(Icons.chevron_right_rounded),
          ],
        ),
      ),
    ),
  );
}

Widget appWarrantyWidget({
  required BuildContext context,
  Function()? onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      decoration: BoxDecoration(
        color: greyColor.shade200,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  reviewProfileImgWidget(),
                  SizedBox(
                    width: width! * 0.05,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          landplusWarrantyText,
                          style: productTitleTextStyle,
                        ),
                        Text(
                          landplusWarrantyDescText,
                          style: productSubtitleTextStyle.copyWith(color: greyColor),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Icon(Icons.chevron_right_rounded),
          ],
        ),
      ),
    ),
  );
}

Widget appOptionWithBtn({
  required BuildContext context,
  required String title,
  required Color tileColor,
  required Color iconColor,
  required String btnName,
  required IconData? icon,
  required Function() onPressed,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      decoration: BoxDecoration(
        color: blackColor.withOpacity(0.7),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  GestureDetector(
                    child: Icon(
                      icon,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: width! * 0.05,
                  ),
                  Expanded(
                    child: Text(
                      title.toUpperCase(),
                      style: productTitleTextStyle.copyWith(fontSize: 12, color: whiteColor),
                    ),
                  ),
                ],
              ),
            ),
            btnWidget(onPressed: onPressed, btnTitle: btnName)
          ],
        ),
      ),
    ),
  );
}

///
///
Widget typeTextWidget({required String title}) {
  return Align(
    alignment: Alignment.topLeft,
    child: Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}

///
///
Widget bottomSpace() {
  return SizedBox(
    height: height! * 0.05,
  );
}

///
Widget profileImgWidget() {
  return const CircleAvatar(
    radius: 50,
    backgroundImage: AssetImage(profileImg),
  );
}

///reviewProfileImgWidget
Widget reviewProfileImgWidget() {
  return const CircleAvatar(
    radius: 20,
    backgroundImage: AssetImage(profileImg),
  );
}

class ProductDetailsImgWidget extends StatefulWidget {
  final String imageName;
  const ProductDetailsImgWidget({Key? key, required this.imageName}) : super(key: key);

  @override
  State<ProductDetailsImgWidget> createState() => _ProductDetailsImgWidgetState();
}

class _ProductDetailsImgWidgetState extends State<ProductDetailsImgWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: height! * 0.35,
                width: height! * 0.35,
                decoration: BoxDecoration(
                  border: Border.all(color: greyColor),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: height! * 0.25,
                    width: height! * 0.25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(widget.imageName),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: height! * 0.1,
                width: height! * 0.1,
                decoration: BoxDecoration(
                  border: Border.all(color: greyColor),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(widget.imageName),
                ),
              ),
            ],
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: width! * 0.20,
              decoration: const BoxDecoration(
                color: appColorTheme,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(20), topLeft: Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "22% OFF",
                  textAlign: TextAlign.center,
                  style: btnTextStyle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CompareProductDetailsImgWidget extends StatefulWidget {
  final String imageName;
  final String discount;
  const CompareProductDetailsImgWidget({Key? key, required this.imageName, required this.discount}) : super(key: key);

  @override
  State<CompareProductDetailsImgWidget> createState() => _CompareProductDetailsImgWidgetState();
}

class _CompareProductDetailsImgWidgetState extends State<CompareProductDetailsImgWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: height! * 0.20,
                width: height! * 0.20,
                decoration: BoxDecoration(
                  border: Border.all(color: greyColor),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: height! * 0.1,
                    width: height! * 0.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(widget.imageName),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: width! * 0.20,
              decoration: const BoxDecoration(
                color: appColorTheme,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(20), topLeft: Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.discount,
                  textAlign: TextAlign.center,
                  style: discountTextStyle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyCartImgWidget extends StatefulWidget {
  final String imageName;
  const MyCartImgWidget({Key? key, required this.imageName}) : super(key: key);

  @override
  State<MyCartImgWidget> createState() => _MyCartImgWidgetState();
}

class _MyCartImgWidgetState extends State<MyCartImgWidget> {
  @override
  Widget build(BuildContext context) {
    final counterModel = Provider.of<MyCounter>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              flex: 3,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: greyColor),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: width! > 500 ? height! * 0.15 : height! * 0.12,
                        // width: height! * 0.12,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(widget.imageName),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: IconButton(
                      icon: const Icon(Icons.favorite_border_rounded),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(11.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      sc1Text,
                      style: productTitleTextStyle,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      sc2Text,
                      style: productTitleTextStyle,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      sc5Text,
                      style: productTitleTextStyle.copyWith(color: appColorTheme),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        CounterBtnWidget(
          itemCounter: counterModel.getCounter(),
          onTapRemove: () {
            if (counterModel.getCounter() <= 1) {
              counterModel.reset();
            } else {
              counterModel.decrementCounter();
            }
            customPrint("this is total items in cart : ${counterModel.getCounter()}");
          },
          onTapAdd: () {
            counterModel.incrementCounter();
            customPrint("this is total items in cart : ${counterModel.getCounter()}");
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 3,
              child: textBackgroundWidget(
                widget: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        deliveryPlanText,
                        style: productTitleTextStyle,
                      ),
                      Text(
                        dp1Text,
                        style: productSubtitleTextStyle,
                      ),
                      Text(
                        dp2Text,
                        style: productSubtitleTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete_forever,
                  size: 30,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}

class PriceDetails extends StatelessWidget {
  const PriceDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final counterModel = Provider.of<MyCounter>(context);

    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(color: greyColor.shade100),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Text(
                  priceDetailsText,
                  style: productTitleTextStyle,
                ),
              ],
            ),
            SizedBox(
              height: height! * 0.02,
            ),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    noOfItemsText,
                    style: productTitleTextStyle,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: RichText(
                    textAlign: TextAlign.end,
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: "${counterModel.getCounter()}",
                          style: productTitleTextStyle.copyWith(color: greyColor),
                        ),
                        // TextSpan(
                        //   text: "",
                        //   style: subtitleTextStyle,
                        // ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height! * 0.01,
            ),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    orderValueText,
                    style: productTitleTextStyle,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: RichText(
                    textAlign: TextAlign.end,
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: sc5Text,
                          style: productTitleTextStyle.copyWith(color: greyColor),
                        ),
                        // TextSpan(
                        //   text: "",
                        //   style: subtitleTextStyle,
                        // ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height! * 0.01,
            ),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    discountText,
                    style: productTitleTextStyle,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: RichText(
                    textAlign: TextAlign.end,
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: naText,
                          style: productTitleTextStyle.copyWith(color: greyColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height! * 0.01,
            ),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    deliveryChargeText,
                    style: productTitleTextStyle,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: RichText(
                    textAlign: TextAlign.end,
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: deliveryChargeVText,
                          style: productTitleTextStyle.copyWith(color: appColorTheme),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height! * 0.01,
            ),
            const Divider(
              thickness: 1,
            ),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    totalAmountText,
                    style: productTitleTextStyle,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: RichText(
                    textAlign: TextAlign.end,
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: sc5Text,
                          style: productTitleTextStyle.copyWith(color: greyColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget dynamicGrid2({
  required BuildContext context,
  required List list,
  required Color color,
  required int grid,
}) {
  return GridView.builder(
    physics: const BouncingScrollPhysics(),
    shrinkWrap: true,
    gridDelegate: customGridDelegate(grid),
    itemCount: list.length,
    itemBuilder: (context, index) {
      return Center(
        child: gridBox(
          color: color,
          context: context,
          imageName: list[index].imageName,
          onTap: list[index].onTap,
          title: list[index].title,
        ),
      );
    },
  );
}

/// TextFormField global use
Widget mainTextFormField({
  required BuildContext context,
  required TextEditingController controller,
  int? maxLength,
  IconData? prefixIcon,
  Widget? suffixIcon,
  String? suffixText,
  bool obscureText = false,
  required String hintText,
  required TextInputAction textInputAction,
  required TextInputType keyboardType,
  required Function(String?)? onSaved,
  String? Function(String?)? validator,
  required List<TextInputFormatter> inputFormatters,
}) {
  return TextFormField(
    style: subtitleTextStyle,
    controller: controller,
    obscureText: obscureText,
    scrollPadding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
    keyboardType: keyboardType,
    maxLength: maxLength,
    textInputAction: textInputAction,
    inputFormatters: inputFormatters,
    decoration: InputDecoration(
      counterStyle: subtitleTextStyle.copyWith(
        color: blackColor,
        fontSize: 8,
      ),
      counterText: "",
      fillColor: greyColor.shade100,
      filled: true,
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(30),
      ),
      prefixIcon: Icon(
        prefixIcon,
        color: appColorTheme,
      ),
      suffixIcon: suffixIcon,
      suffixText: suffixText,
      suffixStyle: subtitleTextStyle.copyWith(
        color: appColorTheme,
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
      hintText: hintText,
      hintStyle: hintTextStyle,
      // hintStyle:
    ),
    validator: validator,
    onSaved: onSaved,
  );
}

textWithLeadingIcon({required String title, required IconData icon}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          icon,
          size: 15,
        ),
        spaceBtwRowText(),
        Expanded(
          child: Text(
            title,
            textAlign: TextAlign.start,
            style: productSubtitleTextStyle,
          ),
        ),
      ],
    ),
  );
}

Widget customBtn({
  required Function()? onTap,
  required String btnName,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(color: whiteColor, width: 2),
        borderRadius: BorderRadius.circular(50),
        color: appColorTheme,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Text(
            btnName,
            style: btnTextStyle.copyWith(
              color: whiteColor,
              fontSize: 16,
            ),
          ),
        ),
      ),
    ),
  );
}

bottomSheetWidget({required BuildContext context}) {
  final counterModel = Provider.of<MyCounter>(context, listen: false);
  return showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder: (context) {
      return StatefulBuilder(
        builder: (context, setState) {
          return FractionallySizedBox(
            heightFactor: 0.9,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              clipBehavior: Clip.hardEdge,
              child: Container(
                decoration: const BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: DraggableScrollableSheet(
                  initialChildSize: 1,
                  minChildSize: 0.95,
                  builder: (BuildContext context, ScrollController scrollController) {
                    return SingleChildScrollView(
                      physics: const PageScrollPhysics(),
                      controller: scrollController,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // bottomSheetImgWidget(),
                          ImageSlider(list: electricianImgList),

                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8.0),
                                        child: Text(qb1Text, style: productTitleTextStyle),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8.0),
                                        child: Row(
                                          children: [
                                            const Icon(
                                              Icons.star,
                                              size: 12,
                                            ),
                                            Text(
                                              qb2Text,
                                              style: productTitleTextStyle.copyWith(color: greyColor),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              rsText,
                                              style: productTitleTextStyle,
                                            ),
                                            Text(
                                              counterModel.getItemAmt().toString(),
                                              style: productTitleTextStyle,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 10),
                                              child: Text(
                                                qb4Text,
                                                style: productTitleTextStyle.copyWith(color: greyColor),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: width! * 0.05,
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    children: [
                                      // CounterBtnWidget(
                                      //   itemCounter: counterModel.getCounter(),
                                      //   onTapRemove: () {
                                      //     if (counterModel.getCounter() <= 1) {
                                      //       counterModel.reset();
                                      //     } else {
                                      //       counterModel.decrementCounter();
                                      //     }
                                      //     customPrint("this is total items in cart : ${counterModel.getCounter()}");
                                      //   },
                                      //   onTapAdd: () {
                                      //     counterModel.incrementCounter();
                                      //     customPrint("this is total items in cart : ${counterModel.getCounter()}");
                                      //   },
                                      // ),
                                      // spaceBtwWidget(),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).pushReplacement(MaterialPageRoute(
                                            builder: (context) {
                                              return const ScreenOrder();
                                            },
                                          ));
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: appColorTheme,
                                          ),
                                          height: height! * 0.05,
                                          width: height! * 0.18,
                                          child: Center(
                                            child: Text(
                                              "View Cart",
                                              style: btnTextStyle,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  // isAddBtnPress
                                  // ? afterPressAddBtnWidget(
                                  //     onTapMinus: () {
                                  //       if (count == 1) {
                                  //         count = 0;
                                  //         totalAmt = 0;
                                  //         isAddBtnPress = false;
                                  //         // Navigator.of(context).pop();
                                  //       } else {
                                  //         totalAmt = totalAmt - itemAmt;
                                  //         count = count - 1;
                                  //         underBottomSheet(context: context);
                                  //       }
                                  //       customPrint(count);
                                  //       setState(() {});
                                  //     },
                                  //     onTapPlus: () {
                                  //       count = count + 1;
                                  //       totalAmt = totalAmt + itemAmt;
                                  //       underBottomSheet(context: context);
                                  //       customPrint(count);
                                  //       setState(() {});
                                  //     },
                                  //     btnTitle: count.toString(),
                                  //   )
                                  // :
                                  //     addBtnWidget(
                                  //   btnColor: blackColor.withOpacity(0.8),
                                  //   onPressed: () {
                                  //     count = count + 1;
                                  //     totalAmt = totalAmt + itemAmt;
                                  //     isAddBtnPress = true;
                                  //     underBottomSheet(context: context);
                                  //     Navigator.of(context).pushReplacement(MaterialPageRoute(
                                  //       builder: (context) {
                                  //         return MyCart();
                                  //       },
                                  //     ));
                                  //     customPrint(count);
                                  //     setState(() {});
                                  //   },
                                  //   btnTitle: "Add",
                                  // ),
                                ),
                              ],
                            ),
                          ),
                          rateCardChargesWidget(
                            context: context,
                            title: rateCardChargesText,
                            icon: Icons.notes,
                          ),
                          SizedBox(
                            height: height! * 0.01,
                          ),
                          customDivider,
                          bottomSheetOptionTitle(title: includedText),
                          bottomSheetOptionSubtitle(icon: Icons.check, title: i1Text),
                          bottomSheetOptionSubtitle(icon: Icons.check, title: i2Text),
                          bottomSheetOptionSubtitle(icon: Icons.check, title: i3Text),
                          bottomSheetOptionSubtitle(icon: Icons.check, title: i4Text),
                          SizedBox(
                            height: height! * 0.01,
                          ),
                          bottomSheetOptionTitle(title: excludedText),
                          bottomSheetOptionSubtitle(icon: Icons.close_rounded, title: e1Text),
                          bottomSheetOptionSubtitle(icon: Icons.close_rounded, title: e2Text),
                          SizedBox(
                            height: height! * 0.01,
                          ),
                          customDivider,
                          bottomSheetOptionTitle(title: frequentlyAskedQueText),
                          const ExpansionPanelWidget(),
                          customDivider,
                          appWarrantyWidget(
                            context: context,
                          ),
                          customDivider,
                          bottomSheetOptionTitle(title: customerReviewText),
                          const RatingPage(),
                          bottomSpace(),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          );
        },
      );
    },
  );
}

Widget bottomSheetOptionTitle({required String title}) {
  return Align(
    alignment: Alignment.topLeft,
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Text(
        title,
        textAlign: TextAlign.start,
        style: productTitleTextStyle,
      ),
    ),
  );
}

Widget leftCategoryTitle({required String title}) {
  return Align(
    alignment: Alignment.topLeft,
    child: Text(
      title,
      textAlign: TextAlign.left,
      style: homePageBoldTitleTextStyle,
    ),
  );
}

bottomSheetOptionSubtitle({required String title, required IconData icon}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
    child: Row(
      children: [
        Icon(
          icon,
          size: 15,
        ),
        spaceBtwRowText(),
        Text(
          title,
          textAlign: TextAlign.start,
          style: productSubtitleTextStyle,
        ),
      ],
    ),
  );
}

totalRating({required String rating}) {
  return Row(
    children: [
      const Icon(
        Icons.star,
        size: 30,
      ),
      Text(
        rating,
        style: largeTitleTextStyle,
      )
    ],
  );
}

underBottomSheet({required BuildContext context}) {
  return showModalBottomSheet(
    context: context,
    builder: (context) {
      return SizedBox(
        height: height! * 0.1,
        child: btnWidget(onPressed: () {}, btnTitle: "Done"),
      );
    },
  );
}

Widget textFieldLabel({required String label}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: Text(
      label,
      textAlign: TextAlign.start,
      style: subtitleTextStyle,
    ),
  );
}

/// loading dialog
downloadProgressDialog() {
  return ValueListenableBuilder(
    valueListenable: downloadWait,
    builder: (context, value, child) {
      return Material(
        type: MaterialType.transparency,
        child: (downloadWait.value == true)
            ? Center(
                child: Container(
                  color: transparentColor.withOpacity(0.3),
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(15),
                  child: Center(
                    child: Container(
                      width: width! * 0.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: whiteColor,
                      ),
                      child: ValueListenableBuilder(
                        valueListenable: currentProgress,
                        builder: (context, value, child) {
                          return Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Lottie.asset(
                                  pdfAnimation,
                                  height: height! * 0.20,
                                  width: height! * 0.20,
                                  fit: BoxFit.fill,
                                ),
                                SizedBox(
                                  height: height! * 0.02,
                                ),
                                Text(
                                  isInfo
                                      ? "Please wait while the PDF is loading."
                                      : isDownloadComplete.value
                                          ? "Your PDF is saved in download folder."
                                          : "Please wait while the PDF is being downloaded.",
                                  // currentProgress.value == 100 ? "downloadCompleted" : "downloadingFile",
                                  textAlign: TextAlign.center,
                                  style: titleTextStyle,
                                ),
                                SizedBox(
                                  height: height! * 0.03,
                                ),
                                isDownloadComplete.value
                                    ? customBtn(
                                        onTap: () {
                                          downloadWait.value = false;
                                          isDownloadComplete.value = false;
                                          pdfFile == null
                                              ? botToastWidget(title: "No Pdf Available")
                                              : Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                    builder: (context) {
                                                      return PDFScreen(
                                                        path: pdfFile.path,
                                                      );
                                                    },
                                                  ),
                                                );
                                        },
                                        btnName: viewText)
                                    : const ClipRRect(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(50),
                                        ),
                                        child: LinearProgressIndicator(
                                          // value: currentProgress.value * 0.01,
                                          minHeight: 15,
                                          backgroundColor: greyColor,
                                          color: appColorTheme,
                                        ),
                                      ),
                                isDownloadComplete.value == false
                                    ? Row(
                                        children: [
                                          Text(
                                            "pleaseWait",
                                            style: subtitleTextStyle,
                                          ),
                                          const Spacer(),
                                          Text(
                                            '${currentProgress.value}',
                                            style: subtitleTextStyle,
                                          ),
                                        ],
                                      )
                                    : Container(),
                                // currentProgress.value == 100
                                //     ? Container()
                                //     : SizedBox(
                                //         height: height! * 0.02,
                                //       ),
                                // currentProgress.value == 100
                                //     ? Column(
                                //         children: [
                                //           Text(
                                //             currentProgress.value == 100 ? "complet" : "load",
                                //             style: subtitleTextStyle,
                                //             textAlign: TextAlign.center,
                                //           ),
                                //           SizedBox(
                                //             height: height! * 0.02,
                                //           ),
                                //           Text("form.pdf")
                                //         ],
                                //       )
                                //     : Row(
                                //         children: [
                                //           Text(
                                //             "pleaseWait",
                                //             style: subtitleTextStyle,
                                //           ),
                                //           const Spacer(),
                                //           Text(
                                //             '${currentProgress.value} / 100',
                                //             style: subtitleTextStyle,
                                //           ),
                                //         ],
                                //       ),
                                // SizedBox(
                                //   height: height! * 0.02,
                                // ),
                                // currentProgress.value == 100
                                //     ? ElevatedButton(
                                //         style: ElevatedButton.styleFrom(
                                //           // padding: const EdgeInsets.all(15),
                                //           backgroundColor: appColorTheme,
                                //           shape: RoundedRectangleBorder(
                                //             borderRadius: BorderRadius.circular(10),
                                //           ),
                                //         ),
                                //         child: Text(
                                //           "done",
                                //         ),
                                //         onPressed: () {
                                //           downloadWait.value = false;
                                //         },
                                //       )
                                //     : Container(),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              )
            : Container(),
      );
    },
  );
}

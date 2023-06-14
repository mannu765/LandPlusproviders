import 'package:flutter/material.dart';

const blueColor = Colors.blue;
const greenColor = Colors.green;
const redColor = Colors.red;
const transparentColor = Colors.transparent;
const errorSnackBarColor = Colors.redAccent;
const orangeAccentColor = Colors.orangeAccent;
const blueAccentColor = Colors.blueAccent;
const blackColor = Colors.black;
const blackColor12 = Colors.black12;
const whiteColor = Colors.white;
const greyColor = Colors.grey;
const appColorTheme = Color(0xffD22237);

const colorPrimary = Color(0xffD22237);
const colorPrimaryDark = Color(0XFF325BF0);
const textColorPrimary = Color(0XFF130925);
const textColorSecondary = Color(0XFF888888);
const textColorThird = Color(0XFFBABFB6);
const textColorGrey1 = Color(0XFFB4BBC2);
const white = Color(0XFFFFFFFF);
const viewColor = Color(0XFFB4BBC2);
const shadowColor = Color(0X95E9EBF0);
var dateColor = Colors.white70;
var newPropertyColor = Colors.white70;
var immediateColor1 = Colors.white70;
var transactionImmediatelyColor1 = Colors.white70;
var freePackageCardColor = Colors.white70;
var goldPackageCardColor = Colors.white70;
var platinumPackageCardColor = Colors.white70;
var lightBlackColor = const Color(0xff666262);

Map<int, Color> color = {
  50: const Color.fromRGBO(136, 14, 79, .1),
  100: const Color.fromRGBO(136, 14, 79, .2),
  200: const Color.fromRGBO(136, 14, 79, .3),
  300: const Color.fromRGBO(136, 14, 79, .4),
  400: const Color.fromRGBO(136, 14, 79, .5),
  500: const Color.fromRGBO(136, 14, 79, .6),
  600: const Color.fromRGBO(136, 14, 79, .7),
  700: const Color.fromRGBO(136, 14, 79, .8),
  800: const Color.fromRGBO(136, 14, 79, .9),
  900: const Color.fromRGBO(136, 14, 79, 1),
};
MaterialColor materialColor(colorHax) {
  return MaterialColor(colorHax, color);
}

MaterialColor colorCustom = MaterialColor(0XFF5959fc, color);

MaterialColor materialAppColor = const MaterialColor(0xffD22237, <int, Color>{
  50: Color(0xffD22237),
  100: Color(0xffD22237),
  200: Color(0xffD22237),
  300: Color(0xffD22237),
  400: Color(0xffD22237),
  500: Color(0xffD22237),
  600: Color(0xffD22237),
  700: Color(0xffD22237),
  800: Color(0xffD22237),
  900: Color(0xffD22237),
});

const appColor3 = Color(0XFFE4E4E4);
const dashboardTileColor1 = Color(0XFFf9f4ea);
const dashboardTileColor2 = Color(0XFFfaf2f0);
const blackTestColor = Color(0xff2E2E2E);

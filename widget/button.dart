import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:landplush/screen/materials/material_details.dart';
import 'package:landplush/utils/class_and_methods.dart';
import 'package:landplush/utils/strings.dart';
import 'package:landplush/widget/stepper_material.dart';
import 'package:provider/provider.dart';

import '../provider/counter.dart';
import '../screen/home/home.dart';
import '../screen/profile_page.dart';
import '../utils/colors.dart';
import '../utils/images.dart';
import '../utils/slide_route.dart';
import '../utils/style.dart';
import '../utils/variable.dart';

Widget btnWidget({required Function() onPressed, required String btnTitle}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      backgroundColor: appColorTheme,
    ),
    onPressed: onPressed,
    child: Text(
      btnTitle,
      style: btnTextStyle,
    ),
  );
}

Widget addBtnWidget({required Function() onPressed, required String btnTitle, required Color btnColor}) {
  return GestureDetector(
    onTap: onPressed,
    child: Container(
      width: width! * 0.20,
      decoration: BoxDecoration(
        color: btnColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          btnTitle,
          textAlign: TextAlign.center,
          style: btnTextStyle,
        ),
      ),
    ),
  );
}

///
Widget headerTextWidget({required String title}) {
  return Align(
    alignment: Alignment.topLeft,
    child: Text(
      title,
      style: headerStyle,
    ),
  );
}

/// typeBtnWidget
Widget typeBtnWidget({
  required BuildContext context,
  required String btnTitle,
  required Function() onTap,
  required bool isSelected,
  required Color color,
}) {
  return Expanded(
    child: InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black26),
          borderRadius: const BorderRadius.all(
            Radius.circular(
              5.0,
            ),
          ),
          color: color,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              isSelected
                  ? const Icon(
                      Icons.check,
                      size: 15.0,
                      color: whiteColor,
                    )
                  : const Icon(
                      Icons.check_box_outline_blank,
                      size: 15.0,
                      color: Colors.transparent,
                    ),
              Text(
                btnTitle,
                style: btnTextStyle.copyWith(
                  color: isSelected ? Colors.white : Colors.black,
                ),
              ),
              const SizedBox(width: 5.0),
            ],
          ),
        ),
      ),
    ),
  );
}

///buttonContainerWidget
Container buttonContainerWidget({
  required BuildContext context,
  required Function() onPressed,
  required String btnTitle,
  required Widget img,
  required String title,
  required String subtitle,
}) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 5),
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
    child: Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    //style: Theme.of(context).textTheme.bodyText1,
                    style: titleTextStyle,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    subtitle,
                    style: greyColorTextStyle,
                  ),
                ],
              ),
              img,
            ],
          ),
        ),
        spaceBtwWidget(),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: appColorTheme),
            onPressed: onPressed,
            child: Text(
              btnTitle,
              style: btnTextStyle,
            ),
          ),
        )
      ],
    ),
  );
}

Widget backBtn({required BuildContext context}) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).pop();
    },
    child: const Icon(
      Icons.arrow_back_rounded,
      color: blackColor,
    ),
  );
}

Widget backToHomeBtn({required BuildContext context}) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) {
            return const Home();
          },
        ),
      );
    },
    child: const Icon(
      Icons.arrow_back_rounded,
      color: blackColor,
    ),
  );
}

///
Widget profileIconBtn({required BuildContext context}) {
  return Padding(
    padding: const EdgeInsets.only(right: 10.0),
    child: GestureDetector(
      onTap: () {
        gotoNextPageWidget(
          context: context,
          title: profileText,
          pageName: ProfilePage(),
        );
      },
      child: const CircleAvatar(
        radius: 15,
        backgroundImage: AssetImage(
          profileImg,
        ),
      ),
    ),
  );
}

///
Widget cartIconBtn({required BuildContext context}) {
  final counterModel = Provider.of<MyCounter>(context);
  return IconButton(
    onPressed: () {
      gotoNextPageWidget(
        title: myCartText,
        context: context,
        pageName: StepperMaterial(productIndex: 1),
      );
    },
    icon: Badge(
      badgeContent: Text("${counterModel.getCounter().toString()}", style: badgeTextStyle),
      child: const Icon(
        Icons.shopping_cart,
        color: Colors.black,
      ),
    ),
  );
}

Widget expendedBtnWidget({required Function() onTap, required String btnTitle, required Color color, required Color borderColor}) {
  return Expanded(
    child: GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: borderColor, width: 0.5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            btnTitle,
            textAlign: TextAlign.center,
            style: btnTextStyle.copyWith(color: borderColor),
          ),
        ),
      ),
    ),
  );
}

Widget homeBtn({required BuildContext context, required Color textColor, required Color btnColor}) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).pushAndRemoveUntil(
        pageNavigation(
          page: const Home(),
          begin: const Offset(1, 0),
          end: const Offset(0, 0),
        ),
        (route) => false,
      );
    },
    child: Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: btnColor),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Text(
            "Go to home page",
            style: btnTextStyle.copyWith(color: textColor, fontSize: 16),
          ),
        ),
      ),
    ),
  );
}

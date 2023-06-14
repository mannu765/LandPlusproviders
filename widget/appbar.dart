import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../screen/materials/material_details.dart';
import '../utils/colors.dart';
import '../utils/style.dart';
import '../utils/widgets.dart';
import 'button.dart';
import 'dropdown.dart';

///sliverAppBarWidget
Widget sliverAppBarWidget({
  required BuildContext context,
  required Widget btnWidget,
  required String pageTitle,
}) {
  return SliverAppBar(
    titleSpacing: 0,
    automaticallyImplyLeading: false,
    backgroundColor: whiteColor,
    floating: false,
    pinned: true,
    snap: false,
    centerTitle: false,
    elevation: 0,
    leading: btnWidget,
    title: appBarTitleWidget(
      context: context,
      pageTitle: pageTitle,
    ),
    actions: [
      const DeliveryDropdown(),
      cartIconBtn(context: context),
      profileIconBtn(context: context),
    ],
    bottom: AppBar(
      toolbarHeight: 70,
      elevation: 0,
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      title: Column(
        children: [
          searchWidget(),
          spaceBtwWidget(),
        ],
      ),
    ),
  );
}

/// mainAppbarWidget
mainAppbarWidget({
  required BuildContext context,
  required String pageTitle,
  required Widget leading,
  required List<Widget> actions,
}) {
  return AppBar(
    elevation: 1,
    titleSpacing: 0,
    centerTitle: false,
    systemOverlayStyle: SystemUiOverlayStyle.dark,
    bottomOpacity: 0,
    backgroundColor: Colors.white,
    automaticallyImplyLeading: false,
    leading: leading,
    title: appBarTitleWidget(
      context: context,
      pageTitle: pageTitle,
    ),
    actions: actions,
  );
}

///appBatTitleWidget
Widget appBarTitleWidget({
  required BuildContext context,
  required String pageTitle,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      RichText(
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: pageTitle,
              style: appBarTextStyle.copyWith(
                color: blackColor,
              ),
            ),
            // TextSpan(
            //   text: pageTitle,
            //   style: appBarTextStyle.copyWith(fontSize: 12, fontWeight: FontWeight.normal),
            // ),
          ],
        ),
      ),
    ],
  );
}

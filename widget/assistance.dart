import 'package:flutter/material.dart';
import 'package:landplush/screen/properties/widget_properties.dart';
import 'package:landplush/utils/style.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/colors.dart';
import '../utils/strings.dart';
import '../utils/variable.dart';

Padding assistance(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 4.0, right: 4, left: 4),
    child: GestureDetector(
      onTap: () {
        callUs();
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        padding: const EdgeInsets.only(top: 8, bottom: 8),
        decoration: BoxDecoration(
          color: greyColor.shade200,
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              assistanceCallText,
              style: subtitleTextStyle,
            ),
            GestureDetector(
              onTap: () {
                callUs();
              },
              child: const Icon(
                Icons.call,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

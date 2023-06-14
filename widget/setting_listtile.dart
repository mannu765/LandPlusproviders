import 'package:flutter/material.dart';
import 'package:landplush/utils/colors.dart';

import '../utils/style.dart';

class SettingPageListTile extends StatelessWidget {
  final String listTitle;
  Widget? addWidget;
  final Function() onTap;
  final IconData icon;

  final Color textColor;

  SettingPageListTile({
    Key? key,
    required this.listTitle,
    required this.onTap,
    required this.icon,
    required this.textColor,
    this.addWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: ListTile(
        onTap: onTap,
        leading: Icon(
          icon,
          color: appColorTheme,
        ),
        title: Text(
          listTitle,
          style: settingListTextStyle.copyWith(
            color: textColor,
          ),
        ),
        trailing: const Icon(
          Icons.chevron_right_rounded,
        ),
        contentPadding: EdgeInsets.zero,
      ),
    );
  }
}

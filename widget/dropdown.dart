import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../../../utils/lists.dart';
import '../../../utils/style.dart';
import '../../../utils/variable.dart';
import '../utils/strings.dart';
import '../utils/widgets.dart';

class CityDropdown extends StatefulWidget {
  const CityDropdown({Key? key}) : super(key: key);

  @override
  State<CityDropdown> createState() => _CityDropdownState();
}

class _CityDropdownState extends State<CityDropdown> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          style: dropDownBtnTextStyle,
          isDense: true,
          isExpanded: false,
          icon: const Icon(
            Icons.arrow_drop_down,
            color: blackColor,
          ),
          selectedItemBuilder: (context) {
            return CityList.cityList().map((e) {
              return Container(
                width: 0,
              );
            }).toList();
          },
          items: CityList.cityList()
              .map<DropdownMenuItem<String>>(
                (e) => DropdownMenuItem<String>(
                  value: e.title,
                  child: Column(
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            e.title!,
                            textAlign: TextAlign.center,
                            style: dropdownTextStyle,
                          ),
                        ),
                      ),
                      e.id != CityList.cityList().length
                          ? const Divider(
                              height: 1,
                            )
                          : Container(),
                    ],
                  ),
                ),
              )
              .toList(),
          hint: Center(
            child: Text(
              selectedCity!.isEmpty ? CityList.cityList()[3].title! : selectedCity!,
              textAlign: TextAlign.center,
              style: dropdownTextStyle,
            ),
          ),
          onChanged: (value) async {
            selectedCity = value!;
            customPrint(value);
            setState(() {});
          },
        ),
      ),
    );
  }
}

///

class DeliveryDropdown extends StatefulWidget {
  const DeliveryDropdown({Key? key}) : super(key: key);

  @override
  State<DeliveryDropdown> createState() => _DeliveryDropdownState();
}

class _DeliveryDropdownState extends State<DeliveryDropdown> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 20.0),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              style: dropDownBtnTextStyle,
              isDense: true,
              isExpanded: false,
              icon: const Icon(
                Icons.arrow_drop_down,
                color: blackColor,
              ),
              selectedItemBuilder: (context) {
                return CityList.cityList().map((e) {
                  return Container(
                    width: 0,
                  );
                }).toList();
              },
              items: CityList.cityList()
                  .map<DropdownMenuItem<String>>(
                    (e) => DropdownMenuItem<String>(
                      value: e.pinCode,
                      child: Column(
                        children: [
                          Expanded(
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                e.pinCode!,
                                textAlign: TextAlign.center,
                                style: dropdownTextStyle,
                              ),
                            ),
                          ),
                          e.id != CityList.cityList().length
                              ? const Divider(
                                  height: 1,
                                )
                              : Container(),
                        ],
                      ),
                    ),
                  )
                  .toList(),
              hint: Center(
                child: Text(
                  selectedPinCode!.isEmpty ? CityList.cityList()[3].pinCode! : selectedPinCode!,
                  textAlign: TextAlign.center,
                  style: dropdownTextStyle,
                ),
              ),
              onChanged: (value) async {
                selectedPinCode = value!;
                customPrint(value);
                setState(() {});
              },
            ),
          ),
        ),
        Positioned(
          left: 5,
          top: 15,
          child: Row(
            children: [
              const Icon(
                Icons.location_on_rounded,
                color: appColorTheme,
                size: 15.0,
              ),
              Text(
                deliverToText,
                style: dropdownTextStyle.copyWith(color: greyColor),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

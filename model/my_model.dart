import 'package:flutter/material.dart';

import '../screen/home/calculator/far_calculator.dart';

class ConstructionEstimateModel {
  String? cityInfo;
  String? localityInfo;
  double? plotAreaInfo;
  String? numberOfFloorsInfo;
  String? nameInfo;
  String? phoneNumberInfo;
  String? emailInfo;
  String? addressInfo;
  String? planningWithinInfo;

  ConstructionEstimateModel({
    this.cityInfo,
    this.localityInfo,
    this.plotAreaInfo,
    this.numberOfFloorsInfo,
    this.nameInfo,
    this.phoneNumberInfo,
    this.emailInfo,
    this.addressInfo,
    this.planningWithinInfo,
  });
}

class ConstructionEstimateProductModel {
  int? productCategory;
  String? productImage;
  String? productName;
  int? productPrice;
  Function()? onTap;

  ConstructionEstimateProductModel({
    this.productCategory,
    this.productImage,
    this.productName,
    this.productPrice,
    this.onTap,
  });
}

class MyCartModel {
  String? productImage;
  String? productName;
  int? productPrice;
  int? productCategory;

  MyCartModel({
    this.productImage,
    this.productName,
    this.productPrice,
    this.productCategory,
  });
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
class CalculatorModel {
  String? firstName;
  String? lastName;
  String? email;
  String? phoneNumber;
  double? coveredArea;
  double? plotArea;
  double? far;
  double? groundCoverage;
  AreaUnit? measurementUnit;
  String? stilt;
  String? isStiltMandatory;
  String? basement;
  String? plotCategory;

  CalculatorModel({
    this.firstName,
    this.lastName,
    this.email,
    this.phoneNumber,
    this.coveredArea,
    this.plotArea,
    this.far,
    this.groundCoverage,
    this.measurementUnit,
    this.stilt,
    this.isStiltMandatory,
    this.basement,
    this.plotCategory,
  });
}

class HowItWorks {
  String? title;
  String? image;

  HowItWorks({
    this.title,
    this.image,
  });
}

class BankPartners {
  String? bankImg;
  String? bankName;
  String? pa;
  String? years;

  BankPartners({
    this.bankImg,
    this.bankName,
    this.pa,
    this.years,
  });
}

class HomeLoanCalculator {
  String? title;
  Function()? onTap;

  HomeLoanCalculator({
    this.title,
    this.onTap,
  });
}

class CustomCardModel {
  IconData? icon;
  String? image;
  String? title;
  String? description;

  CustomCardModel({
    this.icon,
    this.image,
    required this.title,
    required this.description,
  });
}

class DesignGalleryModel {
  String? image;
  String? title;
  String? description;
  Widget? pageName;

  DesignGalleryModel({
    required this.image,
    required this.title,
    this.description,
    this.pageName,
  });
}

class DesignGalleryItemModel {
  List<String>? image;
  String? title;
  String? description;
  Widget? pageName;

  DesignGalleryItemModel({
    required this.image,
    required this.title,
    this.description,
    this.pageName,
  });
}

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:landplush/utils/strings.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../model/my_model.dart';
import 'Images.dart';
import 'lists.dart';

double? height;
double? width;
bool isLogin = false;
bool isReload = false;
String? mobileNumber;
SharedPreferences? landPlusPref;
String mobileNumberKey = "mobileNumberKey";
String loginKey = "loginKey";
String correctOTP = "0000";
String assistanceNumber = "+919899749004";
String facebookUrl = "www.facebook.com/www.Landplus.in/";
String status = "Active";
String? selectedCity = CityList.cityList()[0].title;
String? selectedPinCode = CityList.cityList()[0].pinCode;

num totalItemsPrice = 0;
num taxFee = 69;
List<OtherServicesTypeList> newOtherServiceTypeList = [];
List<Placemark> placemarks = [];
String currentLocation = "";
LocationPermission? permission;
var newList = [];

List<MyCartModel> civilList = [];
List<MyCartModel> sanitaryList = [];
List<MyCartModel> electricList = [];
List<MyCartModel> woodList = [];
List<MyCartModel> kitchenList = [];
List<MyCartModel> flooringTilesList = [];
List<MyCartModel> glassPaintPolishList = [];
var pdfFile;
final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
String? tempCacheDir; // /data/user/0/com.macymind.calculatorlock/cache
String? downloadDirPath;
const androidParentDirPath = '/storage/emulated/0/.Calculator_dont_delete_me';
final iosParentDirPath = '${iosDocumentDir!.path}/.Calculator_dont_delete_me';
Directory? androidExtDir;
Directory? iosDocumentDir;
int? androidSdkVersion;
String deviceOsVersion = "";
String deviceName = "";
String model = "";
bool? isPermissionGranted;
bool isDownload = false;
bool isInfo = false;
ValueNotifier<double> progressCount = ValueNotifier(0);
ValueNotifier<bool> isUploading = ValueNotifier(false);
ValueNotifier<double> currentProgress = ValueNotifier(0);
ValueNotifier<bool> isProgressShow = ValueNotifier(false);
ValueNotifier<bool> isDownloading = ValueNotifier(false);
ValueNotifier<bool> loginWait = ValueNotifier(false);
ValueNotifier<bool> downloadWait = ValueNotifier(false);
ValueNotifier<bool> isDownloadComplete = ValueNotifier(false);

///
const String pdfFileName = 'example.pdf';
bool isCreatingPdf = false;
double progress = 0.0;
int total = 0;
String serviceDate = "";
String serviceTime = "";

///ordersummaryandselectedservices
TextEditingController flatController = TextEditingController();
TextEditingController streetController = TextEditingController();
// List<String> equipmentNames=[];
// String equipmentName='';
// Map<String, String>? equipmentDetails;
// String? equipmentImage;
// String? equipmentCost;
int currentQuantity = 1;
bool isSelected=false;
Map<String, Map<String, dynamic>> equipmentMap = {
  fan: {
    imageText: fansImg,
    costText: hundred,
  },
  geyser: {
    imageText: geyserImg,
    costText: twoHundred,
  },
  airConditioner: {
    imageText: acImg,
    costText: threeHundred,
  },
};


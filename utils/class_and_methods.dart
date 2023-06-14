import 'dart:io';

import 'package:bot_toast/bot_toast.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:external_path/external_path.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:landplush/utils/slide_route.dart';
import 'package:landplush/utils/style.dart';
import 'package:landplush/utils/variable.dart';
import 'package:landplush/utils/widgets.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:share_plus/share_plus.dart';

import '../utils/colors.dart';
import '../widget/empty_page.dart';
import 'lists.dart';

botToastWidget({required String title, Function()? onClose}) {
  return BotToast.showSimpleNotification(
    onClose: onClose,
    title: title,
    backgroundColor: colorPrimary,
    borderRadius: 10,
    titleStyle: snackBarTitleTextStyle,
    closeIcon: const Icon(
      CupertinoIcons.clear_thick_circled,
      color: whiteColor,
    ),
  );
}

pageRoute({required BuildContext context, required String title}) {
  botToastWidget(title: title);
  gotoNextPageWidget(
    context: context,
    title: title,
    pageName: EmptyPage(pageTitle: title),
  );
}

gotoNextPageWidget({required BuildContext context, String? title, required Widget pageName}) {
  // botToastWidget(title: title);
  Navigator.of(context).push(
    pageNavigation(
      page: pageName,
      begin: const Offset(1, 0),
      end: const Offset(0, 0),
    ),
  );
}
gotoNextPageWidget2({required BuildContext context, String? title, required Widget pageName}) {
  // botToastWidget(title: title);
  Navigator.of(context).pushReplacement(
    pageNavigation(
      page: pageName,
      begin: const Offset(1, 0),
      end: const Offset(0, 0),
    ),
  );
}


Future determinePosition() async {
  bool serviceEnabled;
  LocationPermission permission;

  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    return Future.error('Location services are disabled.');
  }

  permission = await Geolocator.checkPermission();

  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
  }
  if (permission == LocationPermission.whileInUse) {
  } else {
    permission = await Geolocator.requestPermission();
  }

  if (permission == LocationPermission.deniedForever) {
    return Future.error('Location permissions are permanently denied, we cannot request permissions.');
  }
  Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
  placemarks = await placemarkFromCoordinates(position.latitude, position.longitude);
  currentLocation = placemarks[0].locality!;
  customPrint("currentLocation $currentLocation");
  return currentLocation;
  // return await Geolocator.getCurrentPosition();
}

newOtherServiceList({required BuildContext context, required String pageTitle}) {
  newOtherServiceTypeList.clear();
  newOtherServiceTypeList = OtherServicesTypeList.otherServicesTypeList(context: context)
    ..removeWhere(
      (item) => item.title == pageTitle,
    );
}

String rsFormat(double thePrice) {
  var rsFormat = NumberFormat("###,###.00", "en_IN");
  customPrint("format ${rsFormat.format(thePrice)}");
  return rsFormat.format(thePrice);
}

/// status bar color
SystemUiOverlayStyle setStatusBarColor({required Color statusBarColor, Brightness? statusBarIconBrightness}) {
  return Platform.isAndroid
      ? SystemUiOverlayStyle(
          statusBarColor: statusBarColor,
          statusBarIconBrightness: statusBarIconBrightness ?? (Brightness.dark),
          systemStatusBarContrastEnforced: true,
        )
      : SystemUiOverlayStyle(
          statusBarBrightness: statusBarIconBrightness ?? (Brightness.light),
        );
}

///
Future<void> sharePDFFile({required String filePath}) async {
  Share.shareFiles(
    [filePath],
  );
}

Future getDownloadDirectory() async {
  if (Platform.isAndroid) {
    downloadDirPath = await ExternalPath.getExternalStoragePublicDirectory(ExternalPath.DIRECTORY_DOWNLOADS); // /storage/emulated/0/Download'
  }
  if (Platform.isIOS) {
    downloadDirPath = '${iosDocumentDir!.path}/Download';
  }
}

/// get device version
getSdkVersion() async {
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  if (Platform.isAndroid) {
    AndroidDeviceInfo? androidInfo = await deviceInfo.androidInfo;
    androidSdkVersion = androidInfo.version.sdkInt;
    deviceName = androidInfo.brand;
    model = androidInfo.model;
    deviceOsVersion = androidInfo.version.release;
  }
  if (Platform.isIOS) {
    IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
    deviceName = iosInfo.name!;
    model = iosInfo.model!;
    deviceOsVersion = iosInfo.systemVersion!;
  }
}

///
checkPermission() async {
  await getSdkVersion();
  if (Platform.isAndroid && androidSdkVersion != null) {
    customPrint("this is checkPermission android sdk version : $androidSdkVersion");
    if (androidSdkVersion! >= 30) {
      await Permission.manageExternalStorage.isGranted.then((value) async {
        if (value == true) {
          isPermissionGranted = true;
        } else {
          isPermissionGranted = false;
        }
      }).onError((error, stackTrace) {
        customPrint(error);
        isPermissionGranted = false;
      });
    } else {
      await Permission.storage.isGranted.then((value) async {
        if (value == true) {
          isPermissionGranted = true;
        } else {
          isPermissionGranted = false;
        }
      }).onError((error, stackTrace) {
        customPrint(error);
        isPermissionGranted = false;
      });
    }
  } else {
    isPermissionGranted = false;
  }
  if (Platform.isIOS) {
    isPermissionGranted = true;
    iosDocumentDir = await getApplicationDocumentsDirectory();

    customPrint('this is ios app document dir ${iosDocumentDir!.path}');
  }
  customPrint('this is checkPermission isPermissionGranted : $isPermissionGranted');
}

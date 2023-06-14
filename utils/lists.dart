import 'package:flutter/material.dart';
import 'package:landplush/screen/home/renovation_home.dart';
import 'package:landplush/screen/home_services/electricians_home.dart';
import 'package:landplush/screen/home_services/home_services_home.dart';
import 'package:landplush/screen/legal_services/legal_services_home.dart';
import 'package:landplush/screen/properties/post_add_screen.dart';
import 'package:landplush/utils/strings.dart';
import 'package:landplush/widget/empty_page.dart';

import '../model/my_model.dart';
import '../screen/home/architecture/architecture.dart';
import '../screen/home/commercial_construction.dart';
import '../screen/home/home.dart';
import '../screen/home/home_loan/home_loan.dart';
import '../screen/home/interior/interiorHome.dart';
import '../screen/home/plot_collaboration.dart';
import '../screen/home/property_management_services/property_management_services.dart';
import '../screen/home/turnkey/turnkey.dart';
import '../screen/home_services/select_services.dart';
import '../screen/home_services/types_electronics.dart';
import '../screen/materials/materials_home.dart';
import '../screen/materials/sub_category.dart';
import '../screen/properties/detail_page_1.dart';
import '../screen/properties/my_listings.dart';
import 'Constant.dart';
import 'class_and_methods.dart';
import 'images.dart';

List areaOptions = [
  sqftText,
  sqyrdText,
  sqmText,
  acreText,
  bighaText,
  hectareText,
  marlaText,
  kanalText,
  biswa1Text,
  biswa2Text,
];

List roleList = [ownerText, agentText, builderText];

List<String> selectBrokerage = [
  fifteenDaysText,
  oneMonthText,
  onePerText,
  twoPerText,
];

List<String> propNoticePeriodOptions = [
  fifteenDaysText,
  oneMonthText,
  twoMonthsText,
  threeMonthsText,
  sixMonthsText,
];
List<String> propertyOwnership = [
  freeholdText,
  leaseholdText,
  coOperativeSocietyText,
  powerOfAttorneyText,
];
List<String> agreementType = [
  notaryText,
  notaryRegisteredText,
  courtAgreementText,
];
List<String> agreementCharge = [
  payByTenantText,
  payByOwnerText,
  owner5050PerText,
];
List<String> ageOfConstruction = [
  newConstructionText,
  lessThen5YearsText,
  fiveToTenYearsText,
  tenTo50YearsText,
  fifteenToTwentyYearsText,
  above20YearsText,
];

List<String> flooring = [
  marbleText,
  mosiacText,
  vitrifiedText,
  ceramicText,
  woodenText,
  graniteText,
  cementText,
  stoneText,
  othersText,
];

List<String> powerBackupOptions = [
  noneText,
  partialText,
  fullText,
];

List<String> govtChargesOptions = [
  'Charges not Incuded',
  'Charges Included',
];

List<String> ownerResidentOption = [
  'Same Building',
  'Same Locality',
  'Same City',
  'Out of Delhi',
  'Other',
];
List<String> enterCityOption = [
  'North Delhi',
  'South Delhi',
  'East Delhi',
  'West Delhi',
  'Noida',
  'Gurugram',
];

List<String> carParkingOption = [
  'Open Parking',
  'Stilt Parking',
];
List<String> carParkingOptionPG = [
  '2 Wheeler',
  'Car Parking',
  'Both',
];

List<String> cupBoardOptions = ['1', '2', '3', '4'];
List<String> waterSupplyOptions = [
  'Corporation',
  'Borewell',
  'Both',
];

List<String> gateSecurityOption = [
  "Yes",
  "No",
];
List<String> vegAllowedOption = [
  "Yes",
  "No",
];

List<Widget> bedroomSize = [
  const Text(" 1 RK ", style: TextStyle(fontSize: 12)),
  const Text(" 1 BHK  ", style: TextStyle(fontSize: 12)),
  const Text(" 2 BHK  ", style: TextStyle(fontSize: 12)),
  const Text(" 3 BHK  ", style: TextStyle(fontSize: 12)),
  const Text(" 4 BHK+ ", style: TextStyle(fontSize: 12)),
];

List<Widget> bathroomSize = [
  const Text(" 0 "),
  const Text(" 1 "),
  const Text(" 2 "),
  const Text(" 3 "),
  const Text(" 4+ "),
];
List<Widget> balconySize = [
  const Text(" 0 "),
  const Text(" 1 "),
  const Text(" 2 "),
  const Text(" 3 "),
  const Text(" 4+ "),
];

Map<String, int> floorMap = {
  "Floor No.": -3,
  'Lower Basement': -2,
  'Upper Basement': -1,
  'Ground Floor': 0,
  '1': 1,
  '2': 2,
  '3': 3,
  '4': 4,
  '5': 5,
  '6': 6,
  '7': 7,
  '8': 8,
  '9': 9,
  '10': 10,
  '11': 11,
  '12': 12,
  '13': 13,
  '14': 14,
  '15+': 15
};

List<String> furnishList = [
  "Unfurnished",
  "Semi-furnished",
  "Full-furnished",
];
List<String> propertyFor = [
  sellText,
  rentOrLeaseText,
  pgText,
];
List<String> saleType = [
  "New",
  "Resale",
];

List<String> foodProvidedPG = ["Veg", "Non-Veg", "Both", "Self-Cooking", "None"];
List<String> postedBySegemntOptions = [
  "Owner",
  "Builder",
  "Agent",
];
List<String> propertyType = [
  "Flat",
  "House",
  "Villa",
  "Builder Floor",
  "Studio Apartment",
  "Penthouse",
  "Residential Apartment",
  "Plot/Land",
  'Independent House',
  'Farm House',
  'Serviced Apartments',
  'Shop',
  'Shop',
  'Office',
  'Showroom',
  'Commercial Land',
  'Godown/Warehouse',
  'Industrial Shed',
  'Basement',
  'Factory',
  'Banquet Hall',
  'Industrial Plot',
  'Farm land',
  'Co-Working Space'
];

List<String> roomLabelsResidential = [
  'Bedroom',
  'Bathroom',
  'Living room',
  'Dinning area',
  'Kitchen',
  'Servent Room',
  'Terrace',
  'Parking',
  'Pooja Room',
  'Drawing Room',
  'Store Room',
  'Washing area',
  'Balcony',
  'Lift',
  'Stairs',
  'Other'
];

List<String> roomLabelsCommercial = [
  "Cabin",
  "Lift ",
  "Office",
  "Parking ",
  "Pantry",
  "Reception ",
  "WashRoom",
  "Workstation",
  "Other",
];

List<String> roomLabelsPG = ["Single Room", "Double Sharing Room", "Triple Sharing Room", "Kitchen", "Bathroom", 'Balcony', 'Common Area', 'Outside View', 'Terrace', 'Other'];

Map<String, bool> amenitiesOptions = {
  'Banquet Hall': false,
  'Bank': false,
  'ATM': false,
  'Main Road Facing': false,
  'Park': false,
  'Gym': false,
  'Club': false,
  'Vaastu Complaint': false,
  'Lift': false,
  'Parking': false,
  'Power backup': false,
  'Shopping Complex': false,
  'Gas Pipline': false,
};

Map<String, bool> overlookingOptions = {
  'Park/Garden': false,
  'Main Road': false,
  'Club': false,
  'House': false,
  'Pool': false,
  'Others': false,
};

List<String> brandsPG = [
  'Oyo Life',
  'Stanza',
  'Zolo',
  'Coho',
  'Oxford Caps',
  'Other',
  'None',
];

Map<String, bool> pgRules = {
  'Veg only': false,
  'No Smoking': false,
  'Drinking alcohol allowed': false,
  'Entry of Opposite gender allowed': false,
  'Gurdian allowed': false,
  'Visitor allowed': false,
};

Map<String, bool> pgRoomFeatures = {
  'A/C': false,
  'Chair': false,
  'Cot': false,
  'Cupboard': false,
  'Geyser': false,
  'Mattress': false,
  'Side Table': false,
  'TV': false,
  'Washroom': false,
};

Map<String, bool> pgTopAmenities = {
  'Gym': false,
  'Lift': false,
  'Power Backup': false,
  'Regular water Supply': false,
  'Reserved parking': false,
  'Swimming Pool': false,
};

Map<String, bool> pgMoreFeatures = {
  'Internet/ Wifi Connectivity': false,
  'Laundry': false,
  'Room Cleaning': false,
  'Warden': false,
};

Map<String, bool> pgSecurityFeatures = {
  'Biometric': false,
  'CCTV': false,
  'Gated Community': false,
  'Security': false,
};

Map<String, bool> pgCommonAreas = {
  'Breakout Room': false,
  'Dining Hall': false,
  'Kitchen': false,
  'Living Room': false,
  'Study Room / Library': false,
};

Map<String, bool> additionRooms = {
  'Pooja Room': false,
  'Servant Room': false,
  'Study': false,
  'Store Room': false,
};

Map<String, bool> furnishingList = {
  'AC': false,
  'Bed': false,
  'Cupboard': false,
  'Fan': false,
  'Fridge': false,
  'Light': false,
  'RO Water Purifier': false,
  'Sofa': false,
  'TV': false,
  'Washing Machine': false,
};

Map<String, bool> pgFeatures = {
  'Laundry': false,
  'Room Cleaning': false,
  'Warden': false,
  'Pantry/Cafeteria': false,
  'Wifi': false,
  'AC': false,
  'Power Backup': false,
  'Attached Washroon': false,
  'Cupboard': false,
  'Lift': false,
  'Parking': false,
};
List<String> tenantOptionsResidential = [
  'Veg Family',
  'Family',
  'Any',
  'Student',
  'Girls only',
  'Boys only',
  'Couple',
  'Bank Lease only',
  'Professionals',
];
List<String> tenantOptionsCommercial = [
  'Company',
  'Brand',
  'Individual',
  'ATM',
];

Map<String, String> roomListMap = {};
Map<String, int> roomRentPG = {};

Map<String, TextEditingController> roomNumbersControllers = {
  'Single': singleRoomController,
  'Double': doubleRoomController,
  'Triple': tripleRoomController,
  '4 Person': quadRoomController,
  'Other': otherRoomController,
};

Map<String, int> roomsCount = {
  'Single': 0,
  'Double': 0,
  'Triple': 0,
  '4 Person': 0,
  'Other': 0,
};

Map<String, bool> availableRoomsPG = {
  'Single': false,
  'Double': false,
  'Triple': false,
  '4 Person': false,
  'Other': false,
};

var facing = [
  'East',
  'North',
  'North-East',
  'North-West',
  'South',
  'South-East',
  'South-West',
  'West',
  'other',
];

// var sortBy = [
//   'Cost',
//   'Area Of Property',
//   'Posting Time',
// ];

var closingTimePG = [
  '8:00 PM',
  '9:00 PM',
  '10:00 PM',
  '11:00 PM',
  'No Closing Time',
];

var pgPresentInOptions = [
  'An Independent Building',
  'An Independent Flat(s)',
  'Present in a Society',
];

var genderPrefPG = ['Male', 'Female', 'Both'];
var noticeOptionsPG = [
  '1 Week',
  '15 Days',
  '1 Month',
  '2 Months',
  '3 Months',
  'No Notice Period',
];

var pgManagedByOptions = [
  'Landlord',
  'Care Taker',
  'Agent',
  'Dedicated Professional',
];

var pgManagerStaysAtOptions = [
  'Yes',
  'No',
];

Map<String, bool> roomTypesPG = {
  'Single': false,
  'Double': false,
  'Triple': false,
  '4 Person': false,
  'Other': false,
};

///Profile Choosing
List<Widget> profileChoosed = [
  const Text(
    ' Buyer/Owner  ',
    style: TextStyle(
      fontSize: 16.0,
      letterSpacing: 2.0,
    ),
  ),
  const Text(
    '  Agent   ',
    style: TextStyle(fontSize: 16.0, letterSpacing: 2.0),
  ),
  const Text(
    ' Builder  ',
    style: TextStyle(fontSize: 16.0, letterSpacing: 2.0),
  )
];

/// boolean Lists for selecting values
List<bool> isBedroomSelected = [
  false,
  false,
  false,
  false,
  false,
];
List<bool> isBathroomSelected = [
  false,
  false,
  false,
  false,
  false,
];
List<bool> isBalconySelected = [
  false,
  false,
  false,
  false,
  false,
];
List<bool> isProfileSelected = [
  true,
  false,
  false,
];
List<bool> isAdded = [
  false,
  false,
  false,
  false,
];

List<Widget> sortOptions = [];
// List<Asset> imagesForUpload = <Asset>[];

// For filters
List<int> minBudgetRent = [
  500,
  1000,
  3000,
  5000,
  10000,
  15000,
  20000,
  25000,
  30000,
  40000,
  50000,
  75000,
  100000,
];
List<int> maxBudgetRent = [
  1000,
  3000,
  5000,
  10000,
  15000,
  20000,
  25000,
  30000,
  40000,
  50000,
  75000,
  100000,
  150000,
];

List<int> maxBudgetSell = [
  5,
  10,
  20,
  30,
  40,
  50,
  60,
  70,
  80,
  90,
  100,
  120,
  140,
  160,
  180,
  200,
  220,
  240,
  260,
  280,
  300,
  320,
  320,
  340,
  360,
  380,
  400,
  420,
  440,
  460,
  480,
  500,
  520,
  540,
  560,
  580,
  600,
  620,
  640,
  660,
  680,
  700,
  720,
  740,
  760,
  780,
  800,
  820,
  840,
  860,
  880,
  900,
  920,
  940,
  960,
  980,
  1000,
  1200,
  1300,
  1400,
  1500,
];
List<int> minBudgetSell = [
  3,
  5,
  7,
  10,
  15,
  20,
  25,
  30,
  40,
  50,
  60,
  70,
  80,
  90,
  100,
  150,
  200,
  300,
  400,
  500,
  600,
  700,
  800,
  900,
  1000,
];

List<String> roomLabels = [];

Map<int, bool> saleTypeMap = {};

Map<int, bool> bathroomFilterMap = {};

Map<String, bool> furnishingMapFilter = {};
Map<String, bool> facingMapFilter = {};

Map<String, bool> propTypeMapFilter = {};
Map<String, bool> propTypeMapFilterCommercial = {};

Map<int, bool> bhkMapFilter = {};
Map<int, bool> ammenityMap = {};
//roomsMapFilter

//pg filter variables
List<String> places = [];
List searchItems = [];
Map<String, bool> pgForMapFilter = {};
Map<String, bool> roomsMapFilter = {};
Map<String, bool> pgTenantMapFilter = {};
Map<int, bool> postedBySegmentMap = {};
Map<int, bool> pgFoodFilterMap = {};
Map<int, bool> pgFeaturesMap = {};
Map<int, bool> brandsFilterMap = {};
int? minimunYear;
//pgOperationFilterController year

List<int> bathroomFilter = [
  1,
  2,
  3,
  4,
  5,
];
List<int> areaFilter = [
  0,
  250,
  500,
  1000,
  2000,
  5000,
  8000,
  10000,
];
List<bool> postedForFilter = [
  true,
  false,
  false,
  false,
];
List<String> titles = [
  'Buy',
  'Rent',
  'PG',
];

//Query Lists

//PG
List<String> pgForPrefPG = [];
List<String> roomTypesPrefPG = [];
List<String> pgTenantPrefPG = [];
List<String> postedByQuery = [];
List<String> pgFoodInfoQuery = [];
List<String> pgFeaturesQuery = [];
List<String> brandsInfoQuery = [];

List<String> facingInfoQuery = [];
List<String> propTypeQuery = [];
List<String> saleTypeQuery = [];
List<String> ammenitiesQuery = [];
List<int> bhkInfoQuery = [];
List<String> furnishingInfoQuery = [];

List<String> placeOptions = [
  'Model Town',
  'Derawal Nagar',
  'Gujranwala Town',
  'Tagore Park',
  'M2k Victoria Garden',
  'Mahendru Enclave',
  'North-Ex',
  'Kalyan Vihar',
];

List<String> placeAvailabilityOptions = [
  'Available Now!',
  'Coming Soon!',
  'Coming Soon!',
  'Available Now!',
  'Coming Soon!',
  'Coming Soon!',
  'Coming Soon!',
  'Coming Soon!',
];

Map<String, Widget> getIcon = {
  'Banquet Hall': Image.asset('images/Banquet-hall.png'),
  'Bank': Image.asset('images/Bank.png'),
  'ATM': Image.asset('images/Atm.png'),
  'Main Road Facing': Image.asset('images/ROAD-.png'),
  'Park': Image.asset('images/Park.png'),
  'Gym': Image.asset('images/Gym.png'),
  'Club House': Image.asset('images/club house.png'),
  'Feng shui': Image.asset('images/feng shui  vaastu compliant.png'),
  // 'Banquet Hall': Image.asset('images/LIFT.png'),
  // 'Banquet Hall': Image.asset('images/reserved parking.png'),
  // 'Banquet Hall': Image.asset('images/Power backup.png'),
  // 'Banquet Hall': Image.asset('images/Shoping complex.png'),
  // 'Banquet Hall': Image.asset('images/piped gas.png'),
};

Map<String, Widget> getIconfurnishing = {
  'AC': Image.asset('images/ac.png'),
  'Bed': Image.asset('images/Bed.png'),
  'Cupboard': Image.asset('images/Cupboard.png'),
  'Fan': Image.asset('images/Fan.png'),
  'Fridge': Image.asset('images/Fridge.png'),
  'Light': Image.asset('images/Light.png'),
  'RO Water Purifier': Image.asset('images/Ro.png'),
  'Sofa': Image.asset('images/Sofa.png'),
  'TV': Image.asset('images/TV.png'),
  'Washing Machine': Image.asset('images/Washing.png'),
  // 'Banquet Hall': Image.asset('images/LIFT.png'),
  // 'Banquet Hall': Image.asset('images/reserved parking.png'),
  // 'Banquet Hall': Image.asset('images/Power backup.png'),
  // 'Banquet Hall': Image.asset('images/Shoping complex.png'),
  // 'Banquet Hall': Image.asset('images/piped gas.png'),
};

List imagesForUpload = [];

/// ConstructionTypeList
class ConstructionTypeList {
  int? id;
  String? title;
  Function()? onTap;

  ConstructionTypeList({
    this.id,
    this.title,
    this.onTap,
  });

  static List<ConstructionTypeList> constructionTypeList({
    required BuildContext context,
  }) {
    return <ConstructionTypeList>[
      ConstructionTypeList(
        id: 1,
        title: turnkeyText,
        onTap: () {
          gotoNextPageWidget(
            context: context,
            title: turnkeyText,
            pageName: const TurnkeyPage(pageTitle: turnkeyText),
          );
        },
      ),
      ConstructionTypeList(
        id: 2,
        title: plotCollaborationText,
        onTap: () {
          gotoNextPageWidget(
            context: context,
            title: plotCollaborationText,
            pageName: const PlotCollaboration(pageTitle: plotCollaborationText),
          );
        },
      ),
      ConstructionTypeList(
        id: 3,
        title: commercialConstructionText,
        onTap: () {
          gotoNextPageWidget(
            context: context,
            title: commercialConstructionText,
            pageName: const CommercialConstructionPage(pageTitle: commercialConstructionText),
          );
        },
      ),
    ];
  }
}

/// RenovationTypeList
// class RenovationTypeList {
//   int? id;
//   String? title;
//   Function()? onTap;
//
//   RenovationTypeList({
//     this.id,
//     this.title,
//     this.onTap,
//   });
//
//   static List<RenovationTypeList> renovationTypeList({required BuildContext context}) {
//     return <RenovationTypeList>[
//       RenovationTypeList(
//         id: 1,
//         title: standardText,
//         onTap: () {
//           pageRoute(context: context, title: standardText);
//         },
//       ),
//       RenovationTypeList(
//         id: 2,
//         title: premiumText,
//         onTap: () {
//           pageRoute(context: context, title: premiumText);
//         },
//       ),
//       RenovationTypeList(
//         id: 3,
//         title: luxuryText,
//         onTap: () {
//           pageRoute(context: context, title: luxuryText);
//         },
//       ),
//     ];
//   }
// }

/// InteriorTypeList
// class InteriorTypeList {
//   int? id;
//   String? title;
//   Function()? onTap;
//   InteriorTypeList({
//     this.id,
//     this.title,
//     this.onTap,
//   });
//
//   static List<InteriorTypeList> interiorTypeList({required BuildContext context}) {
//     return <InteriorTypeList>[
//       InteriorTypeList(
//         id: 1,
//         title: standardText,
//         onTap: () {
//           pageRoute(context: context, title: standardText);
//         },
//       ),
//       InteriorTypeList(
//         id: 2,
//         title: premiumText,
//         onTap: () {
//           pageRoute(context: context, title: premiumText);
//         },
//       ),
//       InteriorTypeList(
//         id: 3,
//         title: luxuryText,
//         onTap: () {
//           pageRoute(context: context, title: luxuryText);
//         },
//       ),
//     ];
//   }
// }

/// ArchitectureTypeList
class ArchitectureTypeList {
  int? id;
  String? title;
  Function()? onTap;
  ArchitectureTypeList({
    this.id,
    this.title,
    this.onTap,
  });

  static List<ArchitectureTypeList> architectureTypeList({required BuildContext context}) {
    return <ArchitectureTypeList>[
      ArchitectureTypeList(
        id: 1,
        title: mapSanctioningText,
        onTap: () {
          pageRoute(context: context, title: mapSanctioningText);
        },
      ),
      ArchitectureTypeList(
        id: 2,
        title: layoutDesignText,
        onTap: () {
          pageRoute(context: context, title: layoutDesignText);
        },
      ),
      ArchitectureTypeList(
        id: 3,
        title: elevationDesignText,
        onTap: () {
          pageRoute(context: context, title: elevationDesignText);
        },
      ),
      ArchitectureTypeList(
        id: 4,
        title: interiorDesignText,
        onTap: () {
          pageRoute(context: context, title: interiorDesignText);
        },
      ),
      ArchitectureTypeList(
        id: 5,
        title: constructionProceduresText,
        onTap: () {
          pageRoute(context: context, title: constructionProceduresText);
        },
      ),
      ArchitectureTypeList(
        id: 6,
        title: constructionDetailingText,
        onTap: () {
          pageRoute(context: context, title: constructionDetailingText);
        },
      ),
      ArchitectureTypeList(
        id: 7,
        title: conceptualPlanText,
        onTap: () {
          pageRoute(context: context, title: conceptualPlanText);
        },
      ),
      ArchitectureTypeList(
        id: 8,
        title: renderingsText,
        onTap: () {
          pageRoute(context: context, title: renderingsText);
        },
      ),
      ArchitectureTypeList(
        id: 9,
        title: buildingMaterialsText,
        onTap: () {
          pageRoute(context: context, title: buildingMaterialsText);
        },
      ),
    ];
  }
}

/// OtherServicesTypeList
class OtherServicesTypeList {
  int? id;
  String? title;
  Function()? onTap;

  OtherServicesTypeList({
    this.id,
    this.title,
    this.onTap,
  });

  static List<OtherServicesTypeList> otherServicesTypeList({required BuildContext context}) {
    return <OtherServicesTypeList>[
      OtherServicesTypeList(
        id: 1,
        title: constructionText,
        onTap: () {
          gotoNextPageWidget(
            context: context,
            title: constructionText,
            pageName: const Home(),
          );
        },
      ),
      OtherServicesTypeList(
        id: 2,
        title: renovationText,
        onTap: () {
          gotoNextPageWidget(
            context: context,
            title: renovationText,
            pageName: const RenovationHome(),
          );
        },
      ),
      OtherServicesTypeList(
        id: 3,
        title: interiorText,
        onTap: () {
          gotoNextPageWidget(
            context: context,
            title: interiorText,
            pageName: const InteriorHome(pageTitle: interiorText),
          );
        },
      ),
      OtherServicesTypeList(
        id: 4,
        title: architectureText,
        onTap: () {
          gotoNextPageWidget(
            context: context,
            title: architectureText,
            pageName: const ArchitectureHome(),
          );
        },
      ),
      OtherServicesTypeList(
        id: 5,
        title: homeServicesText,
        onTap: () {
          gotoNextPageWidget(
            context: context,
            title: homeServicesText,
            pageName: const HomeServices(),
          );
        },
      ),
      OtherServicesTypeList(
        id: 6,
        title: legalServicesText,
        onTap: () {
          gotoNextPageWidget(
            context: context,
            title: legalServicesText,
            pageName: const LegalServicesHome(),
          );
        },
      ),
      OtherServicesTypeList(
        id: 7,
        title: materialsText,
        onTap: () {
          gotoNextPageWidget(
            context: context,
            title: materialsText,
            pageName: const Materials(),
          );
        },
      ),
      OtherServicesTypeList(
        id: 8,
        title: propertiesText,
        onTap: () {
          gotoNextPageWidget(
            context: context,
            title: propertiesText,
            pageName: const PostAddScreen(),
          );
        },
      ),
      OtherServicesTypeList(
        id: 9,
        title: homeLoanText,
        onTap: () {
          gotoNextPageWidget(
            context: context,
            title: homeLoanText,
            pageName: const HomeLoan(pageTitle: homeLoanText),
          );
        },
      ),
      OtherServicesTypeList(
        id: 10,
        title: propertyManagementServicesText,
        onTap: () {
          gotoNextPageWidget(
            context: context,
            title: propertyManagementServicesText,
            pageName: const PropertyManagementServicesHome(pageTitle: propertyManagementServicesText),
          );
        },
      ),
    ];
  }
}

/// HomeServicesTypeList
class HomeServicesTypeList {
  int? id;
  String? title;
  Function()? onTap;

  HomeServicesTypeList({
    this.id,
    this.title,
    this.onTap,
  });

  static List<HomeServicesTypeList> homeServicesTypeList({
    required BuildContext context,
  }) {
    return <HomeServicesTypeList>[
      HomeServicesTypeList(
        id: 1,
        title: "Painting",
        onTap: () {
          gotoNextPageWidget(
            context: context,
            title: electricianText,
            pageName: const SelectServices(),
          );
        },
      ),
      HomeServicesTypeList(
        id: 2,
        title: "Home Cleaning",
        onTap: () {
          gotoNextPageWidget(
            context: context,
            title: electricianText,
            pageName: const SelectServices(),
          );
        },
      ),
      HomeServicesTypeList(
        id: 3,
        title: "Bathroom Cleaning",
        onTap: () {
          gotoNextPageWidget(
            context: context,
            title: electricianText,
            pageName: const SelectServices(),
          );
        },
      ),
      HomeServicesTypeList(
        id: 4,
        title: "AC Service & Repair",
        onTap: () {
          gotoNextPageWidget(
            context: context,
            title: electricianText,
            pageName: const SelectServices(),
          );
        },
      ),
      HomeServicesTypeList(
        id: 5,
        title: "Home Renovation",
        onTap: () {
          gotoNextPageWidget(
            context: context,
            title: electricianText,
            pageName: const SelectServices(),
          );
        },
      ),
      HomeServicesTypeList(
        id: 6,
        title: "Packers & Movers",
        onTap: () {
          gotoNextPageWidget(
            context: context,
            title: electricianText,
            pageName: const SelectServices(),
          );
        },
      ),
      HomeServicesTypeList(
        id: 7,
        title: "Tempo Service",
        onTap: () {
          gotoNextPageWidget(
            context: context,
            title: electricianText,
            pageName: const SelectServices(),
          );
        },
      ),
      HomeServicesTypeList(
        id: 8,
        title: "Electrician",
        onTap: () {
          gotoNextPageWidget(
            context: context,
            title: electricianText,
            pageName: const SelectServices(),
          );
        },
      ),
      HomeServicesTypeList(
        id: 9,
        title: "Carpentry",
        onTap: () {
          gotoNextPageWidget(
            context: context,
            title: electricianText,
            pageName: const SelectServices(),
          );
        },
      ),
      HomeServicesTypeList(
        id: 10,
        title: "Plumbing",
        onTap: () {
          gotoNextPageWidget(
            context: context,
            title: electricianText,
            pageName: const SelectServices(),
          );
        },
      ),
      HomeServicesTypeList(
        id: 11,
        title: "Legal Services",
        onTap: () {
          gotoNextPageWidget(
            context: context,
            title: electricianText,
            pageName: const SelectServices(),
          );
        },
      ),
      HomeServicesTypeList(
        id: 12,
        title: "Sofa Cleaning",
        onTap: () {
          gotoNextPageWidget(
            context: context,
            title: electricianText,
            pageName: const SelectServices(),
          );
        },
      )
    ];
  }
}

/// LegalServicesTypeList
class LegalServicesTypeList {
  int? id;
  String? title;
  Function()? onTap;

  LegalServicesTypeList({
    this.id,
    this.title,
    this.onTap,
  });

  static List<LegalServicesTypeList> legalServicesTypeList({
    required BuildContext context,
  }) {
    return <LegalServicesTypeList>[
      LegalServicesTypeList(
        id: 1,
        title: notaryAgreementText,
        onTap: () {
          pageRoute(context: context, title: notaryAgreementText);
        },
      ),
      LegalServicesTypeList(
        id: 2,
        title: courtAgreementText,
        onTap: () {
          pageRoute(context: context, title: courtAgreementText);
        },
      ),
      LegalServicesTypeList(
        id: 3,
        title: titleSearchText,
        onTap: () {
          pageRoute(context: context, title: titleSearchText);
        },
      ),
      LegalServicesTypeList(
        id: 4,
        title: saleAgreementText,
        onTap: () {
          pageRoute(context: context, title: saleAgreementText);
        },
      ),
      LegalServicesTypeList(
        id: 5,
        title: gpaText,
        onTap: () {
          pageRoute(context: context, title: gpaText);
        },
      ),
      LegalServicesTypeList(
        id: 6,
        title: spaText,
        onTap: () {
          pageRoute(context: context, title: spaText);
        },
      ),
      LegalServicesTypeList(
        id: 7,
        title: mutationText,
        onTap: () {
          pageRoute(context: context, title: mutationText);
        },
      ),
      LegalServicesTypeList(
        id: 8,
        title: propertyComplaintsText,
        onTap: () {
          pageRoute(context: context, title: propertyComplaintsText);
        },
      ),
      LegalServicesTypeList(
        id: 9,
        title: personalDocumentsText,
        onTap: () {
          pageRoute(context: context, title: personalDocumentsText);
        },
      ),
      LegalServicesTypeList(
        id: 10,
        title: companyDocumentsText,
        onTap: () {
          pageRoute(context: context, title: companyDocumentsText);
        },
      ),
      LegalServicesTypeList(
        id: 11,
        title: nameChangeText,
        onTap: () {
          pageRoute(context: context, title: nameChangeText);
        },
      ),
      LegalServicesTypeList(
        id: 12,
        title: "",
        onTap: () {
          pageRoute(context: context, title: "");
        },
      )
    ];
  }
}

/// MaterialsTypeList
class MaterialsTypeList {
  int? id;
  String? title;
  Function()? onTap;

  MaterialsTypeList({
    this.id,
    this.title,
    this.onTap,
  });

  static List<MaterialsTypeList> materialsTypeList({
    required BuildContext context,
  }) {
    return <MaterialsTypeList>[
      MaterialsTypeList(
        id: 1,
        title: bathFittingsText,
        onTap: () {
          gotoNextPageWidget(
            context: context,
            title: bathFittingsText,
            pageName: const SubcategoryPage(pageTitle: bathFittingsText),
          );
        },
      ),
      MaterialsTypeList(
        id: 2,
        title: sanitaryWareText,
        onTap: () {
          gotoNextPageWidget(
            context: context,
            title: sanitaryWareText,
            pageName: const SubcategoryPage(pageTitle: sanitaryWareText),
          );
        },
      ),
      MaterialsTypeList(
        id: 3,
        title: lightingText,
        onTap: () {
          gotoNextPageWidget(
            context: context,
            title: lightingText,
            pageName: const SubcategoryPage(pageTitle: lightingText),
          );
        },
      ),
      MaterialsTypeList(
        id: 4,
        title: tilesText,
        onTap: () {
          gotoNextPageWidget(
            context: context,
            title: tilesText,
            pageName: const SubcategoryPage(pageTitle: tilesText),
          );
        },
      ),
      MaterialsTypeList(
        id: 5,
        title: modularKitchenText,
        onTap: () {
          gotoNextPageWidget(
            context: context,
            title: modularKitchenText,
            pageName: const SubcategoryPage(pageTitle: modularKitchenText),
          );
        },
      ),
      MaterialsTypeList(
        id: 6,
        title: hardwareToolsText,
        onTap: () {
          gotoNextPageWidget(
            context: context,
            title: hardwareToolsText,
            pageName: const SubcategoryPage(pageTitle: hardwareToolsText),
          );
        },
      ),
      MaterialsTypeList(
        id: 7,
        title: locksSafesText,
        onTap: () {
          gotoNextPageWidget(
            context: context,
            title: locksSafesText,
            pageName: const SubcategoryPage(pageTitle: locksSafesText),
          );
        },
      ),
      MaterialsTypeList(
        id: 8,
        title: appliancesText,
        onTap: () {
          gotoNextPageWidget(
            context: context,
            title: appliancesText,
            pageName: const SubcategoryPage(pageTitle: appliancesText),
          );
        },
      ),
      MaterialsTypeList(
        id: 9,
        title: switchesWiresText,
        onTap: () {
          gotoNextPageWidget(
            context: context,
            title: switchesWiresText,
            pageName: const SubcategoryPage(pageTitle: switchesWiresText),
          );
        },
      ),
      MaterialsTypeList(
        id: 10,
        title: paintsText,
        onTap: () {
          gotoNextPageWidget(
            context: context,
            title: paintsText,
            pageName: const SubcategoryPage(pageTitle: paintsText),
          );
        },
      ),
      MaterialsTypeList(
        id: 11,
        title: woodenFlooringText,
        onTap: () {
          gotoNextPageWidget(
            context: context,
            title: woodenFlooringText,
            pageName: const SubcategoryPage(pageTitle: woodenFlooringText),
          );
        },
      ),
      MaterialsTypeList(
        id: 12,
        title: laminatesText,
        onTap: () {
          gotoNextPageWidget(
            context: context,
            title: laminatesText,
            pageName: const SubcategoryPage(pageTitle: laminatesText),
          );
        },
      ),
      MaterialsTypeList(
        id: 12,
        title: woodenBoardsText,
        onTap: () {
          gotoNextPageWidget(
            context: context,
            title: woodenBoardsText,
            pageName: const SubcategoryPage(pageTitle: woodenBoardsText),
          );
        },
      ),
      MaterialsTypeList(
        id: 12,
        title: doorsText,
        onTap: () {
          gotoNextPageWidget(
            context: context,
            title: doorsText,
            pageName: const SubcategoryPage(pageTitle: doorsText),
          );
        },
      ),
      MaterialsTypeList(
        id: 12,
        title: plumbingText,
        onTap: () {
          gotoNextPageWidget(
            context: context,
            title: plumbingText,
            pageName: const SubcategoryPage(pageTitle: plumbingText),
          );
        },
      ),
      MaterialsTypeList(
        id: 12,
        title: cementSteelBrickText,
        onTap: () {
          gotoNextPageWidget(
            context: context,
            title: cementSteelBrickText,
            pageName: const SubcategoryPage(pageTitle: cementSteelBrickText),
          );
        },
      )
    ];
  }
}

/// ElectriciansList
class ElectriciansList {
  int? id;
  String? title;
  Function()? onTap;

  ElectriciansList({
    this.id,
    this.title,
    this.onTap,
  });

  static List<ElectriciansList> electriciansList({
    required BuildContext context,
  }) {
    return <ElectriciansList>[
      ElectriciansList(
        id: 1,
        title: quickBookingText,
        onTap: () {
          gotoNextPageWidget(
            context: context,
            title: quickBookingText,
            pageName: const QuickBooking(
              pageTitle: quickBookingText,
            ),
          );
        },
      ),
      ElectriciansList(
        id: 2,
        title: decorativeText,
        onTap: () {
          pageRoute(context: context, title: decorativeText);
        },
      ),
      ElectriciansList(
        id: 3,
        title: switchSocketText,
        onTap: () {
          pageRoute(context: context, title: switchSocketText);
        },
      ),
      ElectriciansList(
        id: 4,
        title: fanText,
        onTap: () {
          pageRoute(context: context, title: fanText);
        },
      ),
      ElectriciansList(
        id: 5,
        title: lightText,
        onTap: () {
          pageRoute(context: context, title: lightText);
        },
      ),
      ElectriciansList(
        id: 6,
        title: mcbFuseText,
        onTap: () {
          pageRoute(context: context, title: mcbFuseText);
        },
      ),
      ElectriciansList(
        id: 7,
        title: inverterStabilizerText,
        onTap: () {
          pageRoute(context: context, title: inverterStabilizerText);
        },
      ),
      ElectriciansList(
        id: 8,
        title: applianceText,
        onTap: () {
          pageRoute(context: context, title: applianceText);
        },
      ),
      ElectriciansList(
        id: 9,
        title: wiringText,
        onTap: () {
          pageRoute(context: context, title: wiringText);
        },
      ),
      ElectriciansList(
        id: 10,
        title: doorBellText,
        onTap: () {
          pageRoute(context: context, title: doorBellText);
        },
      ),
      ElectriciansList(
        id: 11,
        title: lookingSomethingElseText,
        onTap: () {
          pageRoute(context: context, title: lookingSomethingElseText);
        },
      ),
      ElectriciansList(
        id: 12,
        title: evChargerText,
        onTap: () {
          pageRoute(context: context, title: evChargerText);
        },
      ),
    ];
  }
}

/// CityList
class CityList {
  int? id;
  String? title;
  String? pinCode;

  CityList({
    this.id,
    this.title,
    this.pinCode,
  });

  static List<CityList> cityList() {
    return <CityList>[
      CityList(
        id: 1,
        title: "Delhi",
        pinCode: "110001",
      ),
      CityList(
        id: 2,
        title: "Delhi NCR",
        pinCode: "110001",
      ),
      CityList(
        id: 3,
        title: "Gurugram",
        pinCode: "122006",
      ),
      CityList(
        id: 4,
        title: "Noida",
        pinCode: "201301",
      ),
      CityList(
        id: 5,
        title: "Faridabad",
        pinCode: "121002",
      ),
    ];
  }
}

/// BrandList
class BrandList {
  int? id;
  String? imgName;
  Function()? onTap;

  BrandList({
    this.id,
    this.imgName,
    this.onTap,
  });

  static List<BrandList> brandList({
    required BuildContext context,
  }) {
    return <BrandList>[
      BrandList(
        id: 1,
        imgName: anchorImg,
        onTap: () {
          pageRoute(context: context, title: shopByPopularBrandText);
        },
      ),
      BrandList(
        id: 2,
        imgName: bhutantuffImg,
        onTap: () {
          pageRoute(
            context: context,
            title: shopByPopularBrandText,
          );
        },
      ),
      BrandList(
        id: 3,
        imgName: centuryImg,
        onTap: () {
          pageRoute(context: context, title: shopByPopularBrandText);
        },
      ),
      BrandList(
        id: 4,
        imgName: dorsetImg,
        onTap: () {
          pageRoute(context: context, title: shopByPopularBrandText);
        },
      ),
      BrandList(
        id: 5,
        imgName: ebcoImg,
        onTap: () {
          pageRoute(context: context, title: shopByPopularBrandText);
        },
      ),
      BrandList(
        id: 6,
        imgName: elicaImg,
        onTap: () {
          pageRoute(context: context, title: shopByPopularBrandText);
        },
      ),
      BrandList(
        id: 7,
        imgName: godrejImg,
        onTap: () {
          pageRoute(context: context, title: shopByPopularBrandText);
        },
      ),
      BrandList(
        id: 8,
        imgName: greenlamImg,
        onTap: () {
          pageRoute(context: context, title: shopByPopularBrandText);
        },
      ),
      BrandList(
        id: 9,
        imgName: groheImg,
        onTap: () {
          pageRoute(context: context, title: shopByPopularBrandText);
        },
      ),
      BrandList(
        id: 10,
        imgName: hafeleImg,
        onTap: () {
          pageRoute(context: context, title: shopByPopularBrandText);
        },
      ),
      BrandList(
        id: 11,
        imgName: havellsImg,
        onTap: () {
          pageRoute(context: context, title: shopByPopularBrandText);
        },
      ),
      BrandList(
        id: 12,
        imgName: hindwareImg,
        onTap: () {
          pageRoute(context: context, title: shopByPopularBrandText);
        },
      ),
      BrandList(
        id: 13,
        imgName: hrtticImg,
        onTap: () {
          pageRoute(context: context, title: shopByPopularBrandText);
        },
      ),
      BrandList(
        id: 14,
        imgName: ipsaImg,
        onTap: () {
          pageRoute(context: context, title: shopByPopularBrandText);
        },
      ),
      BrandList(
        id: 15,
        imgName: kajariaImg,
        onTap: () {
          pageRoute(context: context, title: shopByPopularBrandText);
        },
      ),
      BrandList(
        id: 16,
        imgName: kohlerImg,
        onTap: () {
          pageRoute(context: context, title: shopByPopularBrandText);
        },
      ),
      BrandList(
        id: 17,
        imgName: marinoImg,
        onTap: () {
          pageRoute(context: context, title: shopByPopularBrandText);
        },
      ),
      BrandList(
        id: 18,
        imgName: mercatoImg,
        onTap: () {
          pageRoute(context: context, title: shopByPopularBrandText);
        },
      ),
      BrandList(
        id: 19,
        imgName: orientbellImg,
        onTap: () {
          pageRoute(context: context, title: shopByPopularBrandText);
        },
      ),
      BrandList(
        id: 20,
        imgName: philipsImg,
        onTap: () {
          pageRoute(context: context, title: shopByPopularBrandText);
        },
      ),
      BrandList(
        id: 21,
        imgName: qubaImg,
        onTap: () {
          pageRoute(context: context, title: shopByPopularBrandText);
        },
      ),
      BrandList(
        id: 22,
        imgName: schnelderImg,
        onTap: () {
          pageRoute(context: context, title: shopByPopularBrandText);
        },
      ),
      BrandList(
        id: 23,
        imgName: simeroImg,
        onTap: () {
          pageRoute(context: context, title: shopByPopularBrandText);
        },
      ),
      BrandList(
        id: 24,
        imgName: sircaImg,
        onTap: () {
          pageRoute(context: context, title: shopByPopularBrandText);
        },
      ),
      BrandList(
        id: 25,
        imgName: somanyImg,
        onTap: () {
          pageRoute(context: context, title: shopByPopularBrandText);
        },
      ),
      BrandList(
        id: 26,
        imgName: tamronImg,
        onTap: () {
          pageRoute(context: context, title: shopByPopularBrandText);
        },
      ),
      BrandList(
        id: 27,
        imgName: tesaImg,
        onTap: () {
          pageRoute(context: context, title: shopByPopularBrandText);
        },
      ),
      BrandList(
        id: 28,
        imgName: virgoImg,
        onTap: () {
          pageRoute(context: context, title: shopByPopularBrandText);
        },
      ),
      BrandList(
        id: 29,
        imgName: wiproImg,
        onTap: () {
          pageRoute(context: context, title: shopByPopularBrandText);
        },
      ),
      BrandList(
        id: 30,
        imgName: yaleImg,
        onTap: () {
          pageRoute(context: context, title: shopByPopularBrandText);
        },
      ),
    ];
  }
}

///
/// OurPromiseList
class OurPromiseList {
  int? id;
  String? title;
  Function()? onTap;

  OurPromiseList({
    this.id,
    this.title,
    this.onTap,
  });

  static List<OurPromiseList> ourPromiseList({
    required BuildContext context,
  }) {
    return <OurPromiseList>[
      OurPromiseList(
        id: 1,
        title: op1,
        onTap: () {
          botToastWidget(title: op1);
        },
      ),
      OurPromiseList(
        id: 2,
        title: op2,
        onTap: () {
          botToastWidget(title: op2);
        },
      ),
      OurPromiseList(
        id: 3,
        title: op3,
        onTap: () {
          botToastWidget(title: op3);
        },
      ),
    ];
  }
}

class PropertyTypeList {
  int? id;
  String? title;
  String? imgName;
  Function()? onTap;

  PropertyTypeList({
    this.id,
    this.title,
    this.imgName,
    this.onTap,
  });

  static List<PropertyTypeList> propertyTypeList({
    required BuildContext context,
  }) {
    return <PropertyTypeList>[
      PropertyTypeList(
        id: 1,
        title: flatText,
        imgName: flatImage,
        onTap: () {
          botToastWidget(title: flatText);
        },
      ),
      PropertyTypeList(
        id: 2,
        title: houseText,
        imgName: houseImage,
        onTap: () {
          botToastWidget(title: houseText);
        },
      ),
      PropertyTypeList(
        id: 3,
        title: villaText,
        imgName: villaImage,
        onTap: () {
          botToastWidget(title: villaText);
        },
      ),
      PropertyTypeList(
        id: 4,
        title: builderFloorText,
        imgName: builderFloorImage,
        onTap: () {
          botToastWidget(title: builderFloorText);
        },
      ),
      PropertyTypeList(
        id: 5,
        title: studioApartmentText,
        imgName: studioApartmentImage,
        onTap: () {
          botToastWidget(title: studioApartmentText);
        },
      ),
      PropertyTypeList(
        id: 6,
        title: penthouseText,
        imgName: penthouseImage,
        onTap: () {
          botToastWidget(title: penthouseText);
        },
      ),
      PropertyTypeList(
        id: 7,
        title: residentialApartmentText,
        imgName: residentialApartmentImage,
        onTap: () {
          botToastWidget(title: residentialApartmentText);
        },
      ),
      PropertyTypeList(
        id: 8,
        title: plotLandText,
        imgName: plotImage,
        onTap: () {
          botToastWidget(title: plotLandText);
        },
      ),
      PropertyTypeList(
        id: 9,
        title: independentHouseText,
        imgName: independentHouseImage,
        onTap: () {
          botToastWidget(title: independentHouseText);
        },
      ),
      PropertyTypeList(
        id: 10,
        title: farmHouseText,
        imgName: farmHouseImage,
        onTap: () {
          botToastWidget(title: farmHouseText);
        },
      ),
      PropertyTypeList(
        id: 11,
        title: servicedApartmentsText,
        imgName: servicedApartmentImage,
        onTap: () {
          botToastWidget(title: servicedApartmentsText);
        },
      ),
      PropertyTypeList(
        id: 12,
        title: shopText,
        imgName: shopImage,
        onTap: () {
          botToastWidget(title: shopText);
        },
      ),
      PropertyTypeList(
        id: 13,
        title: shopText,
        imgName: officeImage,
        onTap: () {
          botToastWidget(title: shopText);
        },
      ),
      PropertyTypeList(
        id: 14,
        title: officeText,
        imgName: showroomImage,
        onTap: () {
          botToastWidget(title: officeText);
        },
      ),
      PropertyTypeList(
        id: 15,
        title: showroomText,
        imgName: commercialImage,
        onTap: () {
          botToastWidget(title: showroomText);
        },
      ),
      PropertyTypeList(
        id: 16,
        title: commercialLandText,
        imgName: goDownWarehouseImage,
        onTap: () {
          botToastWidget(title: commercialLandText);
        },
      ),
      PropertyTypeList(
        id: 17,
        title: godownWarehouseText,
        imgName: industryShedImage,
        onTap: () {
          botToastWidget(title: godownWarehouseText);
        },
      ),
      PropertyTypeList(
        id: 18,
        title: industrialShedText,
        imgName: basementImage,
        onTap: () {
          botToastWidget(title: industrialShedText);
        },
      ),
      PropertyTypeList(
        id: 19,
        title: basementText,
        imgName: factoryImage,
        onTap: () {
          botToastWidget(title: basementText);
        },
      ),
      PropertyTypeList(
        id: 20,
        title: factoryText,
        imgName: industryPlotImage,
        onTap: () {
          botToastWidget(title: factoryText);
        },
      ),
      PropertyTypeList(
        id: 21,
        title: banquetHallText,
        imgName: farmLandImage,
        onTap: () {
          botToastWidget(title: banquetHallText);
        },
      ),
      PropertyTypeList(
        id: 22,
        title: industrialPlotText,
        imgName: coWorkingSpaceImage,
        onTap: () {
          botToastWidget(title: industrialPlotText);
        },
      ),
    ];
  }
}

///bedroomSize
List<String> bedroomSizeList = [
  " 1 RK ",
  " 1 BHK  ",
  " 2 BHK  ",
  " 3 BHK  ",
  " 4 BHK+ ",
];

///
final List<String> sliderImgList = [
  sliderImg7,
  sliderImg6,
  sliderImg5,
  sliderImg4,
  sliderImg3,
  sliderImg2,
  sliderImg1,
];
final List<String> electricianImgList = [
  tv1Img,
  tv2Img,
];
final List<String> discountImgList = [
  d1Img,
  d2Img,
  d3Img,
  d4Img,
  d5Img,
  d6Img,
];
final List<String> howToUseList = [
  step1Img,
  step2Img,
  step3Img,
  step4Img,
];
final List<String> howToUseStepList = [
  searchProductText,
  comparePricesText,
  bookWithUsText,
  getItDeliveredText,
];
List<String> services = [
  turnkeyServicesText,
  collaborationServicesText,
  buyFloorBuiltByLandPlusText,
  generalInfoText,
  designAndConstructionServicesText,
  discussRightServiceForMeText,
];
List<String> howToMeet = [
  atShowhomeText,
  atOfficeText,
  videoCallText,
  phoneCallText,
];
List<String> hearAboutUs = [
  fromSomeoneText,
  internetSearchText,
  showAdOnInternetText,
  sawConstructionSiteText,
  emailOrWhatsappText,
  metEarlierText,
  otherText,
];

List specification = [
  {
    productTypeText: "DECORATIVE",
    productLineText: "CEILING",
    brandText: "HAVELLS",
    seriesText: "CEILING FAN",
    uomText: "PCE",
    countryOfOriginText: "India",
    manufacturerImporterNameText: "HAVELLS INDIA LIMITED",
    manufacturerImporterAddressText: "Plot No.6,Site 4,Industrial Area,Sahibabad, Sahibabad, Ghaziabad, UP, 201010",
  },
  {
    productTypeText: '',
    productLineText: "CEILING",
    brandText: "HAVELLS",
    seriesText: "",
    uomText: "PCE",
    countryOfOriginText: "India",
    manufacturerImporterNameText: "HAVELLS INDIA LIMITED",
    manufacturerImporterAddressText: "Plot No.6,Site 4,Industrial Area,Sahibabad, Sahibabad, Ghaziabad, UP, 201010",
  },
];

List productDetailsList = [
  {
    productImage: fanImg,
    productName: "HAVELLS FAN ANDRIA INDIGO BLUE 1200MM",
    productModel: "FHCWTSTWCC48",
    productPrice: "₹2176.75",
    productMRP: "₹13000.00",
    type: "SHACKLE TYPE (HOOK)",
    discount: "23% OFF",
    warrantyPolicyText: "The warranty applicable on this product is valid for 12 MONTHS from date of purchase. Subject to Manufacturer’s policy. For more details, please call at +91 93110 35035",
    returnsText: 'The article is non - returnable',
    dimensionText: '1200 mm',
    wattageText: '75 WATT',
    noOfBladesText: "3",
    baseMaterialText: "ALUMINIUM",
    colourFamilyText: "INDIGO BLUE",
    typeText: "SHACKLE TYPE (HOOK)",
    productTypeText: "DECORATIVE",
    productLineText: "CEILING",
    brandText: "HAVELLS",
    seriesText: "CEILING FAN",
    uomText: "PCE",
    countryOfOriginText: "India",
    manufacturerImporterNameText: "HAVELLS INDIA LIMITED",
    manufacturerImporterAddressText: "Plot No.6,Site 4,Industrial Area,Sahibabad, Sahibabad, Ghaziabad, UP, 201010",
  },
  {
    productImage: fan2Img,
    productName: "HAVELLS 1250 MM FAN STEALTH WOOD WALNUT-COLA CHR",
    productModel: "FHCWTSTWCC68",
    productPrice: "₹8176.75",
    productMRP: "₹13020.00",
    type: "SHACKLE TYPE (HOOK)",
    discount: "10% OFF",
    warrantyPolicyText: "The warranty applicable on this product is valid for 24 MONTHS from date of purchase. Subject to Manufacturer’s policy. For more details, please call at +91 93110 35035",
    returnsText: 'The article is non - returnable',
    dimensionText: '1100 mm',
    wattageText: '70 WATT',
    noOfBladesText: "3",
    baseMaterialText: "ALUMINIUM",
    colourFamilyText: "BROWN",
    typeText: "SHACKLE TYPE (HOOK)",
    productTypeText: '',
    productLineText: "CEILING",
    brandText: "HAVELLS",
    seriesText: "",
    uomText: "PCE",
    countryOfOriginText: "India",
    manufacturerImporterNameText: "HAVELLS INDIA LIMITED",
    manufacturerImporterAddressText: "Plot No.6,Site 4,Industrial Area,Sahibabad, Sahibabad, Ghaziabad, UP, 201010",
  },
];

class DashboardConstructionList {
  int? id;
  String? title;
  String? img;
  Function()? onTap;

  DashboardConstructionList({
    this.id,
    this.title,
    this.img,
    this.onTap,
  });

  static List<DashboardConstructionList> dashboardConstructionList({
    required BuildContext context,
  }) {
    return <DashboardConstructionList>[
      DashboardConstructionList(
        id: 1,
        title: myEnquiryText,
        img: constructionImg,
        onTap: () {
          botToastWidget(title: myEnquiryText);
        },
      ),
      DashboardConstructionList(
        id: 2,
        title: myWhitelistText,
        img: constructionImg,
        onTap: () {
          botToastWidget(title: myWhitelistText);
        },
      ),
      DashboardConstructionList(
        id: 3,
        title: myActivityText,
        img: constructionImg,
        onTap: () {
          botToastWidget(title: myActivityText);
        },
      ),
      DashboardConstructionList(
        id: 4,
        title: myDevelopersText,
        img: constructionImg,
        onTap: () {
          botToastWidget(title: myDevelopersText);
        },
      ),
      DashboardConstructionList(
        id: 5,
        title: myRequirementsText,
        img: constructionImg,
        onTap: () {
          botToastWidget(title: myRequirementsText);
        },
      ),
      DashboardConstructionList(
        id: 6,
        title: myShortlistText,
        img: constructionImg,
        onTap: () {
          botToastWidget(title: myShortlistText);
        },
      ),
    ];
  }
}

class DashboardPropertiesList {
  int? id;
  String? title;
  String? img;
  Function()? onTap;

  DashboardPropertiesList({
    this.id,
    this.title,
    this.img,
    this.onTap,
  });

  static List<DashboardPropertiesList> dashboardPropertiesList({
    required BuildContext context,
  }) {
    return <DashboardPropertiesList>[
      DashboardPropertiesList(
        id: 1,
        title: dashBoardP1Text,
        img: homeServicesImg,
        onTap: () {
          gotoNextPageWidget(
            context: context,
            title: postPropertyAdText,
            pageName: const DetailPage1(),
          );
        },
      ),
      DashboardPropertiesList(
        id: 2,
        title: dashBoardP2Text,
        img: homeServicesImg,
        onTap: () {
          gotoNextPageWidget(
            context: context,
            title: dashBoardP2Text,
            pageName: const MyListings(),
          );
        },
      ),
      DashboardPropertiesList(
        id: 3,
        title: dashBoardP3Text,
        img: homeServicesImg,
        onTap: () {
          botToastWidget(title: dashBoardP3Text);
        },
      ),
      DashboardPropertiesList(
        id: 4,
        title: dashBoardP4Text,
        img: homeServicesImg,
        onTap: () {
          botToastWidget(title: dashBoardP4Text);
        },
      ),
      DashboardPropertiesList(
        id: 5,
        title: dashBoardP5Text,
        img: homeServicesImg,
        onTap: () {
          botToastWidget(title: dashBoardP5Text);
        },
      ),
      DashboardPropertiesList(
        id: 6,
        title: dashBoardP6Text,
        img: homeServicesImg,
        onTap: () {
          botToastWidget(title: dashBoardP6Text);
        },
      ),
      DashboardPropertiesList(
        id: 7,
        title: dashBoardP7Text,
        img: homeServicesImg,
        onTap: () {
          botToastWidget(title: dashBoardP7Text);
        },
      ),
      DashboardPropertiesList(
        id: 8,
        title: dashBoardP8Text,
        img: homeServicesImg,
        onTap: () {
          botToastWidget(title: dashBoardP8Text);
        },
      ),
      DashboardPropertiesList(
        id: 9,
        title: dashBoardP9Text,
        img: homeServicesImg,
        onTap: () {
          botToastWidget(title: dashBoardP9Text);
        },
      ),
      DashboardPropertiesList(
        id: 10,
        title: dashBoardP10Text,
        img: homeServicesImg,
        onTap: () {
          botToastWidget(title: dashBoardP10Text);
        },
      ),
      DashboardPropertiesList(
        id: 11,
        title: dashBoardP11Text,
        img: homeServicesImg,
        onTap: () {
          botToastWidget(title: dashBoardP11Text);
        },
      ),
    ];
  }
}

class DashboardMaterialsList {
  int? id;
  String? title;
  String? img;
  Function()? onTap;

  DashboardMaterialsList({
    this.id,
    this.title,
    this.img,
    this.onTap,
  });

  static List<DashboardMaterialsList> dashboardMaterialsList({
    required BuildContext context,
  }) {
    return <DashboardMaterialsList>[
      DashboardMaterialsList(
        id: 1,
        title: dashBoardM1Text,
        img: materialImg,
        onTap: () {
          botToastWidget(title: dashBoardM1Text);
        },
      ),
      DashboardMaterialsList(
        id: 2,
        title: dashBoardM2Text,
        img: materialImg,
        onTap: () {
          botToastWidget(title: dashBoardM2Text);
        },
      ),
      DashboardMaterialsList(
        id: 3,
        title: dashBoardM3Text,
        img: materialImg,
        onTap: () {
          botToastWidget(title: dashBoardM3Text);
        },
      ),
      DashboardMaterialsList(
        id: 4,
        title: dashBoardM4Text,
        img: materialImg,
        onTap: () {
          botToastWidget(title: dashBoardM4Text);
        },
      ),
      DashboardMaterialsList(
        id: 5,
        title: dashBoardM5Text,
        img: materialImg,
        onTap: () {
          botToastWidget(title: dashBoardM5Text);
        },
      ),
      DashboardMaterialsList(
        id: 6,
        title: dashBoardM6Text,
        img: materialImg,
        onTap: () {
          botToastWidget(title: dashBoardM6Text);
        },
      ),
      DashboardMaterialsList(
        id: 7,
        title: dashBoardM7Text,
        img: materialImg,
        onTap: () {
          botToastWidget(title: dashBoardM7Text);
        },
      ),
      DashboardMaterialsList(
        id: 8,
        title: dashBoardM8Text,
        img: materialImg,
        onTap: () {
          botToastWidget(title: dashBoardM8Text);
        },
      ),
      DashboardMaterialsList(
        id: 9,
        title: dashBoardM9Text,
        img: materialImg,
        onTap: () {
          botToastWidget(title: dashBoardM9Text);
        },
      ),
    ];
  }
}

class DashboardHomeServiceList {
  int? id;
  String? title;
  String? img;
  Function()? onTap;

  DashboardHomeServiceList({
    this.id,
    this.title,
    this.img,
    this.onTap,
  });

  static List<DashboardHomeServiceList> dashboardHomeServiceList({
    required BuildContext context,
  }) {
    return <DashboardHomeServiceList>[
      DashboardHomeServiceList(
        id: 1,
        title: dashBoardH1Text,
        img: homeServicesImg,
        onTap: () {
          botToastWidget(title: dashBoardH1Text);
        },
      ),
      DashboardHomeServiceList(
        id: 2,
        title: dashBoardH2Text,
        img: homeServicesImg,
        onTap: () {
          botToastWidget(title: dashBoardH2Text);
        },
      ),
      DashboardHomeServiceList(
        id: 3,
        title: dashBoardH3Text,
        img: homeServicesImg,
        onTap: () {
          botToastWidget(title: dashBoardH3Text);
        },
      ),
      DashboardHomeServiceList(
        id: 4,
        title: dashBoardH4Text,
        img: homeServicesImg,
        onTap: () {
          botToastWidget(title: dashBoardH4Text);
        },
      ),
      DashboardHomeServiceList(
        id: 5,
        title: dashBoardH5Text,
        img: homeServicesImg,
        onTap: () {
          botToastWidget(title: dashBoardH5Text);
        },
      ),
      DashboardHomeServiceList(
        id: 6,
        title: dashBoardH6Text,
        img: homeServicesImg,
        onTap: () {
          botToastWidget(title: dashBoardH6Text);
        },
      ),
      DashboardHomeServiceList(
        id: 7,
        title: dashBoardH7Text,
        img: homeServicesImg,
        onTap: () {
          botToastWidget(title: dashBoardH7Text);
        },
      ),
    ];
  }
}

class DashboardLegalServiceList {
  int? id;
  String? title;
  String? img;
  Function()? onTap;

  DashboardLegalServiceList({
    this.id,
    this.title,
    this.img,
    this.onTap,
  });

  static List<DashboardLegalServiceList> dashboardLegalServiceList({
    required BuildContext context,
  }) {
    return <DashboardLegalServiceList>[
      DashboardLegalServiceList(
        id: 1,
        title: dashBoardL1Text,
        img: legalServiceImg,
        onTap: () {
          botToastWidget(title: dashBoardL1Text);
        },
      ),
      DashboardLegalServiceList(
        id: 2,
        title: dashBoardL2Text,
        img: legalServiceImg,
        onTap: () {
          botToastWidget(title: dashBoardL2Text);
        },
      ),
      DashboardLegalServiceList(
        id: 3,
        title: dashBoardL3Text,
        img: legalServiceImg,
        onTap: () {
          botToastWidget(title: dashBoardL3Text);
        },
      ),
      DashboardLegalServiceList(
        id: 4,
        title: dashBoardL4Text,
        img: legalServiceImg,
        onTap: () {
          botToastWidget(title: dashBoardL4Text);
        },
      ),
      DashboardLegalServiceList(
        id: 5,
        title: dashBoardL5Text,
        img: legalServiceImg,
        onTap: () {
          botToastWidget(title: dashBoardL5Text);
        },
      ),
      DashboardLegalServiceList(
        id: 6,
        title: dashBoardL6Text,
        img: legalServiceImg,
        onTap: () {
          botToastWidget(title: dashBoardL6Text);
        },
      ),
      DashboardLegalServiceList(
        id: 7,
        title: dashBoardL7Text,
        img: legalServiceImg,
        onTap: () {
          botToastWidget(title: dashBoardL7Text);
        },
      ),
      DashboardLegalServiceList(
        id: 8,
        title: dashBoardL8Text,
        img: legalServiceImg,
        onTap: () {
          botToastWidget(title: dashBoardL8Text);
        },
      ),
      DashboardLegalServiceList(
        id: 9,
        title: dashBoardL9Text,
        img: legalServiceImg,
        onTap: () {
          botToastWidget(title: dashBoardL9Text);
        },
      ),
    ];
  }
}

List<String> dashboardServicesList = [
  constructionText,
  propertiesText,
  materialsText,
  homeServicesText,
  legalServicesText,
];

///

class PackageServiceTypeList {
  int? id;
  String? title;
  String? image;
  Function()? onTap;
  List<List>? list;

  PackageServiceTypeList({
    this.id,
    this.title,
    this.image,
    this.onTap,
    this.list,
  });

  static List<PackageServiceTypeList> packageServiceTypeList({
    required BuildContext context,
  }) {
    return <PackageServiceTypeList>[
      PackageServiceTypeList(
        id: 1,
        title: structureText,
        image: structureImg,
        onTap: () {
          botToastWidget(title: structureText);
        },
        list: structureList,
      ),
      PackageServiceTypeList(
        id: 2,
        title: doorFramesText,
        image: doorFramesImg,
        onTap: () {
          botToastWidget(title: doorFramesText);
        },
        list: doorFramesList,
      ),
      PackageServiceTypeList(
        id: 3,
        title: doorShuttersText,
        image: doorShuttersImg,
        onTap: () {
          botToastWidget(title: doorShuttersText);
        },
        list: doorShuttersList,
      ),
      PackageServiceTypeList(
        id: 4,
        title: doorFittingsText,
        image: doorFittingsImg,
        onTap: () {
          botToastWidget(title: doorFittingsText);
        },
        list: doorFittingList,
      ),
      PackageServiceTypeList(
        id: 5,
        title: windowText,
        image: windowImg,
        onTap: () {
          botToastWidget(title: windowText);
        },
        list: windowList,
      ),
      PackageServiceTypeList(
        id: 6,
        title: flooringText,
        image: flooringImg,
        onTap: () {
          botToastWidget(title: flooringText);
        },
        list: flooringList,
      ),
      PackageServiceTypeList(
        id: 7,
        title: kitchenCounterText,
        image: kitchenCounterImg,
        onTap: () {
          botToastWidget(title: kitchenCounterText);
        },
        list: kitchenCounterList,
      ),
      PackageServiceTypeList(
        id: 8,
        title: bathroomText,
        image: bathroomImg,
        onTap: () {
          botToastWidget(title: bathroomText);
        },
        list: bathroomList,
      ),
      PackageServiceTypeList(
        id: 9,
        title: paintingText,
        image: paintingImg,
        onTap: () {
          botToastWidget(title: paintingText);
        },
        list: paintingList,
      ),
      PackageServiceTypeList(
        id: 10,
        title: electricalText,
        image: electricalImg,
        onTap: () {
          botToastWidget(title: electricalText);
        },
        list: electricalList,
      ),
      PackageServiceTypeList(
        id: 11,
        title: staircaseText,
        image: staircaseImg,
        onTap: () {
          botToastWidget(title: staircaseText);
        },
        list: staircaseList,
      ),
      PackageServiceTypeList(
        id: 12,
        title: plumbingSanitationLinesText,
        image: plumbingImg,
        onTap: () {
          botToastWidget(title: plumbingSanitationLinesText);
        },
        list: plumbingSanitationLinesList,
      ),
      PackageServiceTypeList(
        id: 13,
        title: switchesPlatesText,
        image: switchesImg,
        onTap: () {
          botToastWidget(title: switchesPlatesText);
        },
        list: switchesList,
      ),
    ];
  }
}

///
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

List<List> structureList = [
  standardStructureList,
  premiumStructureList,
  luxuryStructureList,
];
List standardStructureList = [
  "Steel: Turbo, Meenakshi, Sunvik, or equivalent brand. (TMT Reinforcement Steel to be provided at 2.75 kgs/sq ft of built-up area. All Steel designs are as per the Structural engineer‘s drawing)",
  "Cement: Ramco, Zuari, Birla Shakti, ACC or equivalent Brand(53 Grade for Concrete works & 43 Grade for other works)",
  "RMC",
  "PCC Works of M15 Grade 1: 2 :4",
  "RCC Works of M25 Grade for Column Footing, Plinth Beams, Columns, and Roof Slabs. The thickness of the roof slab shall be 5” thick",
  "RCC Works of M20 Grade for Lintel, Canopy Projections, Staircase",
  "Column Sizes will be of 8”x18” min",
  "Soil testing (SBC of 220kN/m2 at 5’ depth from EGL)",
  "WaterProofing: Dr. Fixit",
  "Roof to Roof Height be 10’0”",
  "6” Blocks for Exterior Wall & 4” for Interior Wall",
];
List premiumStructureList = [
  "Steel: Turbo, INDUS, or equivalent brand. (TMT Reinforcement Steel to be provided at 2.75 kgs/sq ft of built-up area. All Steel designs are as per the Structural engineer‘s drawing)",
  "Cement: Ramco, Bharathi, Birla Shakti, Zuari, ACC or equivalent Brand(53 Grade for Concrete works & 43 Grade for other works)",
  "RMC: ACC or Ultratech",
  "PCC Works of M15 Grade 1: 2:4",
  "RCC Works of M25 Grade for Column Footing, Plinth Beams, Columns, and Roof Slabs. The thickness of the roof slab shall be 5” thick",
  "RCC Works of M 20 Grade for Lintel, Canopy Projections, Staircase",
  "Column Sizes will be o 8”x18” min",
  "Soil testing (SBC of 220kN/m2 at 5’ depth from EGL)",
  "Waterproofing: Dr. Fixit",
  "Roof to Roof Height to be 10’0”",
  "8” Blocks for Exterior Wall & 4” for Interior Wall  ",
];
List luxuryStructureList = [
  "Steel: JSW, Vizag or equivalent brand. (TMT Reinforcement Steel to be provided at 2.75 kgs/sft of built up area. All Steel designs are as per Structural engineer‘s drawing)",
  "Cement: Ramco, Bharathi, Birla Shakti, ACC or equivalent Brand(53 Grade for Concrete works & 43 Grade for other works)",
  "RMC: ACC or Ultratech",
  "PCC Works of M15 Grade 1:2:4",
  "RCC Works of M25 Grade for Column Footing, Plinth Beams, Columns, and Roof Slabs. The thickness of the roof slab shall be 5” thick",
  "RCC Works of M 20 Grade for Lintel, Canopy Projections, Staircase",
  "Column Sizes will be o 8”x18” min",
  "Soil testing (SBC of 180kN/m2 at 5’ depth from EGL)",
  "Waterproofing: Dr. Fixit",
  "Roof to Roof Height to be 11’0”",
  "8” Blocks for Exterior Wall & 4” for Interior Wall",
];
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

List<List> doorFramesList = [
  standardDoorFramesList,
  premiumDoorFramesList,
  luxuryDoorFramesList,
];
List standardDoorFramesList = [
  "Main Door - Teak Wood Frame of size 5” x 4” or 6” x 3”}",
  "doorFramesListPooja Door - Teak Wood Frame of Size 5”x 3”}",
  "doorFramesListInternal Doors - All internal Doors including Red Sal of size 5”x 3”}",
  "doorFramesListBathroom Doors - Red Sal of size 5”x 3”",
];
List premiumDoorFramesList = [
  "Main Door - Teak Frame of Burma Border Worth at ₹ 4000/Cft(MRP) of Size 5” x 4” or 6” x 3”",
  "Pooja Door - Teak Frame of Burma Border Worth at ₹ 4000/Cft(MRP) of Size 5”x 3”",
  "Internal & Bathroom Doors –Ghana Teak Worth at ₹ 3000/Cft(MRP) of Size 5”x 3”",
  "Utility Doors - Red Sal of Size 5”x 3”",
];
List luxuryDoorFramesList = [
  "Main Door - Teak Frame of Burma Border Worth at ₹ 4000/Cft(MRP) of Size 8” x 4”",
  "Pooja Door - Teak Frame of Burma Border Worth at ₹ 4000/Cft(MRP) of Size 5”x 3”",
  "Internal & Bathroom Doors –Ghana Teak Worth at ₹ 4000/Cft(MRP) of Size 5”x 3”",
  "Utility Doors - Red Sal of Size 5”x 3”",
];
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

List<List> doorShuttersList = [
  standardDoorShuttersList,
  premiumDoorShuttersList,
  luxuryDoorShuttersList,
];
List standardDoorShuttersList = [
  "Main Door - 1 ½” thick Teak Shutter.",
  "Pooja Room Door - 1 ½” thick Teak Shutters.",
  "Internal Door- Readymade Solid Doors of 1 ½” thick.",
  "Bathroom Doors: FRP Doors.",
];
List premiumDoorShuttersList = [
  "Main Door - 1 ½” thick Teak Shutter `",
  "Pooja Room Door - 1 ½” thick Teak Shutters",
  "Internal Door- Veener Doors of 1 ½” thick",
  "Bathroom Doors: Laminated Doors",
  "Door Width Including Frame will be 3.5ft",
];
List luxuryDoorShuttersList = [
  "Main Door - 1 ½” thick Teak Wood Shutter `",
  "Pooja Room Door - 1 ½” thick Teak Wood Shutters",
  "Internal Door- Veener Doors(Both Sides) of 1 ½” thick",
  "Bathroom Doors: External Veneer & Internal Laminate.",
  "Door Width Including Frame will be 3.5ft  ",
];
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

List<List> doorFittingList = [
  standardDoorFittingList,
  premiumDoorFittingList,
  luxuryDoorFittingList,
];
List standardDoorFittingList = [
  "Main door and Pooja door are provided with Brass fittings: Main door lock worth of ₹2000, 2NOS of Door Handle worth of ₹ 1000 and 2nos of 8” tower bolt for each door",
  "Internal doors are provided with SS Fittings of ₹600 and 2nos of 6” tower bolt for each door",
  "Toilet Door Handles of ₹600",
];
List premiumDoorFittingList = [
  "Main door and Pooja door are provided with Brass fittings: Main door lock worth of ₹2000 @ MRP, 2nos of Door Handle worth of ₹1000 @ MRP, and 2nos of 8” tower bolt for each door",
  "Internal doors are provided with SS Fittings of ₹600 @ MRP and 2nos of 6” tower bolt for each door",
  "Toilet Door Handles of ₹600 @MRP",
];
List luxuryDoorFittingList = [
  "Main door and Pooja door are provided with Brass fittings: Main door lock worth of ₹3000 @ MRP, 2nos of Door Handle worth of ₹3000 @ MRP, and 2nos of 8” tower bolt for each door",
  "Internal doors are provided with SS Fittings of ₹2500 @ MRP and 2nos of 6” tower bolt for each door",
  "Toilet Door Handles of ₹1500 @MRP",
];
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

List<List> windowList = [
  standardWindowList,
  premiumWindowList,
  luxuryWindowList,
];
List standardWindowList = [
  "UPVC window: ₹ 400/sqft(@MRP) i.e. 125sft for every 1100sft of Super Built Up Area",
  "Window grill ₹150/sqft(@MRP) of Simple Design",
];
List premiumWindowList = [
  "UPVC Windows₹450/sq ft(MRP) i.e.125sq ft for every 1100sq ft of Super Built Up Area",
  "Window grill ₹180/sq ft(MRP)",
];
List luxuryWindowList = [
  "Teak window i.e. 125 sqft of Window area for every 1100 sqft of BUA",
];
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

List<List> flooringList = [
  standardFlooringList,
  premiumFlooringList,
  luxuryFlooringList,
];
List standardFlooringList = [
  "Granite flooring of ₹90/sq ft (@MRP)will be provided for Common areas (Kitchen, Living, Pooja Room & Internal staircase)",
  "Vitrified flooring of ₹60/sq ft (@MRP)will be provided for internal bedrooms",
  "Granite flooring will be provided for staircase of ₹65/sq ft Inclusive of taxes",
  "Ceramic Tiles for Parking, Balcony Flooring (Cost of Tile ₹40/sq ft)",
  "20mm Granite will be half round nosing for the staircase and skirting",
];
List premiumFlooringList = [
  "Granite flooring of ₹ 140/sqft(MRP) will be provided for common areas (Kitchen, Living, Pooja Room & Internal staircase)",
  "Vitrified flooring of ₹ 65/sqft (@MRP)will be provided for internal bedrooms",
  "Granite flooring will be provided for external staircase of ₹ 80/sqft Inclusive of taxes",
  "Ceramic Tiles for Parking, Balcony, Utility Flooring (Cost of Tile ₹ 50/sqft). 20mm Granite will be half round nosing for staircase and skirting.",
];
List luxuryFlooringList = [
  "Marble / Granite / Vitrified flooring of ₹300 /sqft (@MRP) will be provided for common areas (Kitchen, Dining, Living, Pooja Room & Internal staircase)",
  "Vitrified flooring of ₹ 120/sqft (@MRP) will be provided for internal bedrooms",
  "Ceramic Tiles for Parking, Balcony, Utility Flooring (Cost of Tile ₹ 60/sqft).",
  "20mm Granite will be half round nosing for staircase and skirting.",
];
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

List<List> kitchenCounterList = [
  standardKitchenCounterList,
  premiumKitchenCounterList,
  luxuryKitchenCounterList,
];
List standardKitchenCounterList = [
  "2’0” feet height Glazed tiles (₹50/sq ft) over 20mm thick Hassan Green granite platform one side with 18”x21” SS sink of ₹4000 @ MRP",
];
List premiumKitchenCounterList = [
  "2’0” feet height Glazed tiles (₹50/sqft) over 20mm thick Hassan Green granite platform one side with 18”x21” SS sink of ₹4000 @ MRP",
];
List luxuryKitchenCounterList = [
  "4’0” feet height Glazed tiles (₹65/sft) over 20mm thick Jet Black granite platform one side with 18”x21” SS sink of ₹7000 @ MRP",
];
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

List<List> bathroomList = [
  standardBathroomList,
  premiumBathroomList,
  luxuryBathroomList,
];
List standardBathroomList = [
  "Anti-skid Ceramic flooring for Toilets at ₹50/sq ft",
  "Dadoing Works - 7’ Height. Cost of Tile at ₹50/sq ft",
  "Bathroom Fittings - ₹20,000 for each Bathroom including floor mounted closet, Washbasin & CP Fittings of Jaquar, Cera or equivalent make.",
];
List premiumBathroomList = [
  "Anti-skid Ceramic flooring for Toilets at ₹50/sqft",
  "Dadoing Works - 10’ Height. Cost of Tile at ₹50/sqft",
  "Bathroom Fittings - ₹30,000 for each Bathroom including floor mounted closet, Washbasin & CP Fittings of Jaquar, Somany or equivalent make &₹ 15,000(MRP) for Powder Room",
];
List luxuryBathroomList = [
  "Anti-skid Ceramic Tile flooring for Toilets only (Cost of Tile ₹70/sqft Inclusive of taxes)",
  "Dadoing Works - 10’ Height. Cost of Tile at ₹70/sqft Inclusive of taxes",
  "Bathroom Fittings - ₹ 45,000 MRP for each Bathroom includes Wall mounted closet, Washbasin & CP fittings of Jaquar make & ₹ 20,000 MRP for Powder Room",
];
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

List<List> paintingList = [
  standardPaintingList,
  premiumPaintingList,
  luxuryPaintingList,
];
List standardPaintingList = [
  "Internal Walls and Ceilings- Two coats of Tractor Emulsion, ASIAN PAINT: over 1 coat of primer & 2 coats of J.K putty",
  "External - Two coats of ACE of ASIAN Paints over 1 coat of external primer",
];
List premiumPaintingList = [
  "Internal Walls and Ceilings- Two coats of Premium Emulsion, ASIAN PAINT: over 1 coat of primer & 2 coats of putty",
  "External - Two coats of APEX of ASIAN Paints over 1 coat of external primer",
];
List luxuryPaintingList = [
  "Internal Walls and Ceilings- Two coats of Premium Emulsion, ASIAN PAINT: over 1 coat of primer & 2 coats of putty(Light Colours)",
  "External - Two coats of APEX of ASIAN Paints over 1 coat of external primer.",
];
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

List<List> electricalList = [
  standardElectricalList,
  premiumElectricalList,
  luxuryElectricalList,
];
List standardElectricalList = [
  "3 Light points per 100 sq ft, 1 fan point & 3nos of 5 Amp plug point",
  "1 Heating point of for Each toilet & kitchen of 15 Amp Plug Point",
  "Distribution Box of Havells/Anchor/Indo Asian Equivalent make",
  "AC Points for rooms",
  "CCTV Points in parking, staircase",
  "V-Guard Wires",
];
List premiumElectricalList = [
  "3 Light points per 100 sqft, 1 fan point & 3nos of 5 Amp plug point",
  "1 Heating point of for Each toilet & kitchen of 15 Amp Plug Point",
  "Distribution Box of Havells/Anchor/Indo Asian Equivalent make",
  "AC Points for rooms",
  "CCTV Points in parking, staircase",
  "Finolex Wires",
];
List luxuryElectricalList = [
  "3 Light points per 100 sqft, 1 fan point & 3nos of 5 Amp plug point",
  "1 Heating point of for Each toilet & kitchen of 15 Amp Plug Point",
  "Distribution Box of Havells/Anchor/Indo Asian Equivalent make",
  "AC Points for rooms & CCTV Points in parking, staircase",
  "Finolex Wires",
];
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

List<List> staircaseList = [
  standardStaircaseList,
  premiumStaircaseList,
  luxuryStaircaseList,
];
List standardStaircaseList = [
  "MS Railings for external staircase",
  "SS railing for internal staircase (simple design without glass facade).",
];
List premiumStaircaseList = [
  "MS Railings for external staircase",
  "SS railing for internal staircase (simple design without glass facade).",
];
List luxuryStaircaseList = [
  "SS railing for external staircase (simple design without glass facade)",
  "SS railing for internal staircase (simple design with glass facade).",
];

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

List<List> plumbingSanitationLinesList = [
  standardSanitationLinesList,
  premiumSanitationLinesList,
  luxurySanitationLinesList,
];

List standardSanitationLinesList = [
  "CPVC pipes of Ashirwadh make",
  "1500 ltr capacity PVC HI Tank make to be provided as OHT",
  "PVC Rainwater down-take pipes and fittings.",
];
List premiumSanitationLinesList = [
  "CPVC pipes of Ashirwadh Make",
  "1500 ltr capacity PVC HI Tank make to be provided as OHT",
  " Sanitary down take lines & RWH lines will be of Supreme Make",
];
List luxurySanitationLinesList = [
  "CPVC pipes of Ashirwadh Make",
  "1500 ltr capacity PVC HI Tank make to be provided as OHT",
  "Sanitary down take lines & RWH lines will be of Supreme Make",
];
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
List<List> switchesList = [
  standardSwitchesList,
  premiumSwitchesList,
  luxurySwitchesList,
];

List standardSwitchesList = [
  "GM-G9 Switches/Plates or Anchor-Penta Switches/ Plates",
];
List premiumSwitchesList = [
  "GM-Casivava Switches/Plates",
];
List luxurySwitchesList = [
  "Anchor Switches/Plates of Legrand Brand",
];
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

List turnkeyNotesList = [
  "Parking costs will be 85% of Built-up Area Costs for Basic Packages, 80% of Built-up Area Cost for Standard, 70% of Built-up Area Cost for Premium & Luxury",
  "The rate of Cement quoted as – Rs 340 to Rs 350 for Basic(@MRP) per bag & Rs 390 to Rs 410(@MRP) per bag of 53 Grade for Concrete works & 43 Grade for other works for Standard, Premium & Luxury",
];

///
/// ConstructionTypeList
class StepsHomeConstructionList {
  int? id;
  String? title;
  String? imageName;
  Function()? onTap;

  StepsHomeConstructionList({
    this.id,
    this.title,
    this.imageName,
    this.onTap,
  });

  static List<StepsHomeConstructionList> stepsHomeConstructionList({
    required BuildContext context,
  }) {
    return <StepsHomeConstructionList>[
      StepsHomeConstructionList(
        id: 1,
        title: selectYourMaterialText,
        imageName: chooseImg,
        onTap: () {
          botToastWidget(title: selectYourMaterialText);
        },
      ),
      StepsHomeConstructionList(
        id: 2,
        title: coCreateYourDesignText,
        imageName: sketchImg,
        onTap: () {
          botToastWidget(title: coCreateYourDesignText);
        },
      ),
      StepsHomeConstructionList(
        id: 3,
        title: weConstructYourHomeText,
        imageName: craneImg,
        onTap: () {
          botToastWidget(title: weConstructYourHomeText);
        },
      ),
      StepsHomeConstructionList(
        id: 4,
        title: youMoveInText,
        imageName: logisticsImg,
        onTap: () {
          botToastWidget(title: youMoveInText);
        },
      ),
    ];
  }
}

class WhyUsList {
  int? id;
  String? title;
  String? imageName;
  Function()? onTap;

  WhyUsList({
    this.id,
    this.title,
    this.imageName,
    this.onTap,
  });

  static List<WhyUsList> whyUsList({
    required BuildContext context,
  }) {
    return <WhyUsList>[
      WhyUsList(
        id: 1,
        title: budgetFriendlyText,
        imageName: wu1Img,
        onTap: () {
          botToastWidget(title: budgetFriendlyText);
        },
      ),
      WhyUsList(
        id: 2,
        title: completeTransparencyText,
        imageName: wu2Img,
        onTap: () {
          botToastWidget(title: completeTransparencyText);
        },
      ),
      WhyUsList(
        id: 3,
        title: topBuilderText,
        imageName: wu3Img,
        onTap: () {
          botToastWidget(title: topBuilderText);
        },
      ),
      WhyUsList(
        id: 4,
        title: experiencedTeamText,
        imageName: wu4Img,
        onTap: () {
          botToastWidget(title: experiencedTeamText);
        },
      ),
      WhyUsList(
        id: 5,
        title: timelyDeliveryText,
        imageName: wu5Img,
        onTap: () {
          botToastWidget(title: timelyDeliveryText);
        },
      ),
      WhyUsList(
        id: 6,
        title: complimentaryDesignsText,
        imageName: wu6Img,
        onTap: () {
          botToastWidget(title: complimentaryDesignsText);
        },
      ),
    ];
  }
}

class OurValueToCustomersList {
  int? id;
  String? title;
  String? imageName;
  Function()? onTap;

  OurValueToCustomersList({
    this.id,
    this.title,
    this.imageName,
    this.onTap,
  });

  static List<OurValueToCustomersList> ourValueToCustomersList({
    required BuildContext context,
  }) {
    return <OurValueToCustomersList>[
      OurValueToCustomersList(
        id: 1,
        title: transparentDocumentationText,
        imageName: ovc1Img,
        onTap: () {
          botToastWidget(title: transparentDocumentationText);
        },
      ),
      OurValueToCustomersList(
        id: 2,
        title: saveMoneyConstructionText,
        imageName: ovc2Img,
        onTap: () {
          botToastWidget(title: saveMoneyConstructionText);
        },
      ),
      OurValueToCustomersList(
        id: 3,
        title: fullVisibilityProjectText,
        imageName: ovc3Img,
        onTap: () {
          botToastWidget(title: fullVisibilityProjectText);
        },
      ),
      OurValueToCustomersList(
        id: 4,
        title: flexiblePaymentStructureText,
        imageName: ovc4Img,
        onTap: () {
          botToastWidget(title: flexiblePaymentStructureText);
        },
      ),
      OurValueToCustomersList(
        id: 5,
        title: customizationMaterialCostText,
        imageName: ovc5Img,
        onTap: () {
          botToastWidget(title: customizationMaterialCostText);
        },
      ),
      OurValueToCustomersList(
        id: 6,
        title: qualityChecksText,
        imageName: ovc6Img,
        onTap: () {
          botToastWidget(title: qualityChecksText);
        },
      ),
    ];
  }
}

class LandplusPricingList {
  int? id;
  String? title;
  String? imageName;
  Function()? onTap;

  LandplusPricingList({
    this.id,
    this.title,
    this.imageName,
    this.onTap,
  });

  static List<LandplusPricingList> landplusPricingList({
    required BuildContext context,
  }) {
    return <LandplusPricingList>[
      LandplusPricingList(
        id: 1,
        title: transparentText,
        imageName: transparentImg,
        onTap: () {
          botToastWidget(title: transparentText);
        },
      ),
      LandplusPricingList(
        id: 2,
        title: flexibleText,
        imageName: flexibleImg,
        onTap: () {
          botToastWidget(title: flexibleText);
        },
      ),
      LandplusPricingList(
        id: 3,
        title: competitiveText,
        imageName: competitiveImg,
        onTap: () {
          botToastWidget(title: competitiveText);
        },
      ),
    ];
  }
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
class CommercialServiceTypeList {
  int? id;
  String? title;
  String? image;
  Function()? onTap;
  List<List>? list;

  CommercialServiceTypeList({
    this.id,
    this.title,
    this.image,
    this.onTap,
    this.list,
  });

  static List<CommercialServiceTypeList> commercialServiceTypeList({
    required BuildContext context,
  }) {
    return <CommercialServiceTypeList>[
      CommercialServiceTypeList(
        id: 1,
        title: structureText,
        image: structureImg,
        onTap: () {
          botToastWidget(title: structureText);
        },
        list: structureList,
      ),
      CommercialServiceTypeList(
        id: 2,
        title: windowText,
        image: windowImg,
        onTap: () {
          botToastWidget(title: windowText);
        },
        list: windowList,
      ),
      CommercialServiceTypeList(
        id: 3,
        title: flooringText,
        image: flooringImg,
        onTap: () {
          botToastWidget(title: flooringText);
        },
        list: flooringList,
      ),
      CommercialServiceTypeList(
        id: 4,
        title: bathroomText,
        image: bathroomImg,
        onTap: () {
          botToastWidget(title: bathroomText);
        },
        list: bathroomList,
      ),
      CommercialServiceTypeList(
        id: 5,
        title: paintingText,
        image: paintingImg,
        onTap: () {
          botToastWidget(title: paintingText);
        },
        list: paintingList,
      ),
      CommercialServiceTypeList(
        id: 6,
        title: switchesPlatesText,
        image: switchesImg,
        onTap: () {
          botToastWidget(title: switchesPlatesText);
        },
        list: doorFramesList,
      ),
      CommercialServiceTypeList(
        id: 7,
        title: electricalText,
        image: electricalImg,
        onTap: () {
          botToastWidget(title: electricalText);
        },
        list: electricalList,
      ),
      CommercialServiceTypeList(
        id: 8,
        title: sanitaryPlumbingText,
        image: plumbingImg,
        onTap: () {
          botToastWidget(title: sanitaryPlumbingText);
        },
        list: plumbingSanitationLinesList,
      ),
      CommercialServiceTypeList(
        id: 9,
        title: staircaseText,
        image: staircaseImg,
        onTap: () {
          botToastWidget(title: staircaseText);
        },
        list: staircaseList,
      ),
    ];
  }
}

final List<String> turnkeyImgList = [
  sliderImg7,
  sliderImg6,
  sliderImg5,
];

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///get Construction estimate
List<String> cityOptionWidget() {
  var cityOption = [
    "Delhi",
    "Delhi NCR",
    "Gurugram",
    "Noida",
    "Faridabad",
  ];
  return cityOption;
}

List<String> localityOptionWidget() {
  var localityOption = [
    "Adarsh Nagar",
    "Ashok Vihar",
    "Azadpur",
    "Bhai Permanand Colony",
    "Bijli Apartments",
    "Burari",
    "CC Colony",
    "Civil Lines",
    "Derawal Nagar",
    "Dhaka Village",
    "GT Karnal Road",
    "GTB Nagar",
    "Gujranwala Town",
    "Hakikat Nagar",
    "Hudson Lane",
    "Ishawar colony",
    "Jawahar Nagar",
    "Kalyan vihar",
    "Kamla Nagar",
    "Kewal park",
    "Kingsway Camp",
    "Laxman Dwar, Gujranwala Town",
    "M2K Victoria Garden, Azadpur",
    "Maa Kalyani kunj Apartments",
    "Mahendru Enclave",
    "Majlis Park",
    "Model Town",
    "Mukherjee Nagar",
    "Netaji Subhash Place",
    "New Gupta Colony",
    "Nirankari Colony",
    "North-Ex, Model Town",
    "Old Gupta Colony",
    "Priyadarshni Vihar",
    "Rameshwar Nagar",
    "Rani Bagh",
    "Rohini",
    "Roop Nagar",
    "Shakti Nagar",
    "Shalimar Bagh",
    "Signature view Apartment",
    "State Bank Colony",
    "Suraj Nagar",
    "Tagore Park",
    "Vijay Nagar-Double Storey",
    "Vijay Nagar-Single Storey",
    "Gurugram ",
  ];
  return localityOption;
}

List<String> numberOfFloorsOptionWidget() {
  var numberOfFloorsOption = [
    "1 (Ground Floor) ",
    "2 (G + 1)",
    "3 (G + 2)",
    "4 (G + 3)",
    "5 (G + 4)",
    "6 (G + 5)",
  ];
  return numberOfFloorsOption;
}

List<String> planningWithinOptionWidget() {
  var planningWithinOption = [
    "within 1 month",
    "within 3 months",
    "within 6 month",
  ];
  return planningWithinOption;
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
class CivilWorkSpecificationList {
  int? id;
  String? title;
  Function()? onTap;
  List<ConstructionEstimateProductModel>? list;

  CivilWorkSpecificationList({
    this.id,
    this.title,
    this.onTap,
    this.list,
  });

  static List<CivilWorkSpecificationList> civilWorkSpecificationList({
    required BuildContext context,
  }) {
    return <CivilWorkSpecificationList>[
      CivilWorkSpecificationList(
        id: 1,
        title: heavyDutyRibbedText,
        onTap: () {
          botToastWidget(title: heavyDutyRibbedText);
        },
        list: heavyDutyRibbedList,
      ),
      CivilWorkSpecificationList(
        id: 2,
        title: brickText,
        onTap: () {
          botToastWidget(title: brickText);
        },
        list: brickList,
      ),
      CivilWorkSpecificationList(
        id: 3,
        title: dustText,
        onTap: () {
          botToastWidget(title: dustText);
        },
        list: dustList,
      ),
      CivilWorkSpecificationList(
        id: 4,
        title: cementText,
        onTap: () {
          botToastWidget(title: cementText);
        },
        list: cementList,
      ),
      CivilWorkSpecificationList(
        id: 5,
        title: roriText,
        onTap: () {
          botToastWidget(title: roriText);
        },
        list: roriList,
      ),
    ];
  }

  // static List<CivilWorkSpecificationList> mixtureRatioStructureWorkSpecificationList({
  //   required BuildContext context,
  // }) {
  //   return <CivilWorkSpecificationList>[
  //     CivilWorkSpecificationList(
  //       id: 1,
  //       title: "4.5” WALL",
  //       onTap: () {
  //         botToastWidget(title: heavyDutyRibbedText);
  //       },
  //       list: heavyDutyRibbedList,
  //     ),
  //     CivilWorkSpecificationList(
  //       id: 2,
  //       title: "9” WALL",
  //       onTap: () {
  //         botToastWidget(title: brickText);
  //       },
  //       list: brickList,
  //     ),
  //     CivilWorkSpecificationList(
  //       id: 3,
  //       title: "Neev/Foundation",
  //       onTap: () {
  //         botToastWidget(title: dustText);
  //       },
  //       list: dustList,
  //     ),
  //     CivilWorkSpecificationList(
  //       id: 4,
  //       title: "PLASTER",
  //       onTap: () {
  //         botToastWidget(title: cementText);
  //       },
  //       list: cementList,
  //     ),
  //     CivilWorkSpecificationList(
  //       id: 5,
  //       title: "RCC SLAB",
  //       onTap: () {
  //         botToastWidget(title: roriText);
  //       },
  //       list: roriList,
  //     ),
  //     CivilWorkSpecificationList(
  //       id: 6,
  //       title: "COLUMN",
  //       onTap: () {
  //         botToastWidget(title: roriText);
  //       },
  //       list: roriList,
  //     ),
  //     CivilWorkSpecificationList(
  //       id: 7,
  //       title: "FLOORING",
  //       onTap: () {
  //         botToastWidget(title: roriText);
  //       },
  //       list: roriList,
  //     ),
  //     CivilWorkSpecificationList(
  //       id: 8,
  //       title: "Thickness of RCC Slab after Vibrate",
  //       onTap: () {
  //         botToastWidget(title: roriText);
  //       },
  //       list: roriList,
  //     ),
  //     CivilWorkSpecificationList(
  //       id: 9,
  //       title: "DEPTH OF COLUMN FROM ROAD LEVEL IN PARKING AREA",
  //       onTap: () {
  //         botToastWidget(title: roriText);
  //       },
  //       list: roriList,
  //     ),
  //     CivilWorkSpecificationList(
  //       id: 10,
  //       title: "DEPT OF FOUNDATION FROM ROAD LEVEL",
  //       onTap: () {
  //         botToastWidget(title: roriText);
  //       },
  //       list: roriList,
  //     ),
  //     CivilWorkSpecificationList(
  //       id: 11,
  //       title: "ANTI-TERMITE TERATMENT IN FOUNDATION AND WHOLE BUILDING",
  //       onTap: () {
  //         botToastWidget(title: roriText);
  //       },
  //       list: roriList,
  //     ),
  //     CivilWorkSpecificationList(
  //       id: 12,
  //       title: "COMPLETE WATER PROOFING TREATMENT TO BE DONE WITH THE SUPERVISION OF DR. FIXIT TEAM",
  //       onTap: () {
  //         botToastWidget(title: roriText);
  //       },
  //       list: roriList,
  //     ),
  //   ];
  // }

  static List<CivilWorkSpecificationList> sanitaryWorkSpecificationList({
    required BuildContext context,
  }) {
    return <CivilWorkSpecificationList>[
      CivilWorkSpecificationList(
        id: 1,
        title: "sanitary 1",
        onTap: () {
          botToastWidget(title: "sanitary 1");
        },
        list: sanitary1List,
      ),
      CivilWorkSpecificationList(
        id: 2,
        title: "sanitary 2",
        onTap: () {
          botToastWidget(title: "sanitary 2");
        },
        list: sanitary2List,
      ),
      CivilWorkSpecificationList(
        id: 3,
        title: "sanitary 3",
        onTap: () {
          botToastWidget(title: "sanitary 3");
        },
        list: sanitary3List,
      ),
      CivilWorkSpecificationList(
        id: 4,
        title: "sanitary 4",
        onTap: () {
          botToastWidget(title: "sanitary 4");
        },
        list: sanitary4List,
      ),
      CivilWorkSpecificationList(
        id: 5,
        title: "sanitary 5",
        onTap: () {
          botToastWidget(title: "sanitary 5");
        },
        list: sanitary5List,
      ),
    ];
  }

  static List<CivilWorkSpecificationList> mixtureRatioStructureWorkSpecificationList({
    required BuildContext context,
  }) {
    return <CivilWorkSpecificationList>[
      CivilWorkSpecificationList(
        id: 1,
        title: "Mixture Ratio Structure 1",
        onTap: () {
          botToastWidget(title: "Mixture Ratio Structure 1");
        },
        list: mixtureRatioStructure1List,
      ),
      CivilWorkSpecificationList(
        id: 2,
        title: "Mixture Ratio Structure 2",
        onTap: () {
          botToastWidget(title: "Mixture Ratio Structure 2");
        },
        list: mixtureRatioStructure2List,
      ),
      CivilWorkSpecificationList(
        id: 3,
        title: "Mixture Ratio Structure 3",
        onTap: () {
          botToastWidget(title: "Mixture Ratio Structure 3");
        },
        list: mixtureRatioStructure3List,
      ),
      CivilWorkSpecificationList(
        id: 4,
        title: "Mixture Ratio Structure 4",
        onTap: () {
          botToastWidget(title: "Mixture Ratio Structure 4");
        },
        list: mixtureRatioStructure4List,
      ),
      CivilWorkSpecificationList(
        id: 5,
        title: "Mixture Ratio Structure 5",
        onTap: () {
          botToastWidget(title: "Mixture Ratio Structure 5");
        },
        list: mixtureRatioStructure5List,
      ),
    ];
  }

  static List<CivilWorkSpecificationList> electricWorkSpecificationList({
    required BuildContext context,
  }) {
    return <CivilWorkSpecificationList>[
      CivilWorkSpecificationList(
        id: 1,
        title: "electric 1",
        onTap: () {
          botToastWidget(title: "electric 1");
        },
        list: electric1List,
      ),
      CivilWorkSpecificationList(
        id: 2,
        title: "electric 2",
        onTap: () {
          botToastWidget(title: "electric 2");
        },
        list: electric2List,
      ),
      CivilWorkSpecificationList(
        id: 3,
        title: "electric 3",
        onTap: () {
          botToastWidget(title: "electric 3");
        },
        list: electric3List,
      ),
      CivilWorkSpecificationList(
        id: 4,
        title: "electric 4",
        onTap: () {
          botToastWidget(title: "electric 4");
        },
        list: electric4List,
      ),
      CivilWorkSpecificationList(
        id: 5,
        title: "electric 5",
        onTap: () {
          botToastWidget(title: "electric 5");
        },
        list: electric5List,
      ),
    ];
  }

  static List<CivilWorkSpecificationList> woodWorkSpecificationList({
    required BuildContext context,
  }) {
    return <CivilWorkSpecificationList>[
      CivilWorkSpecificationList(
        id: 1,
        title: "wood 1",
        onTap: () {
          botToastWidget(title: "wood 1");
        },
        list: wood1List,
      ),
      CivilWorkSpecificationList(
        id: 2,
        title: "wood 2",
        onTap: () {
          botToastWidget(title: "wood 2");
        },
        list: wood2List,
      ),
      CivilWorkSpecificationList(
        id: 3,
        title: "wood 3",
        onTap: () {
          botToastWidget(title: "wood 3");
        },
        list: wood3List,
      ),
      CivilWorkSpecificationList(
        id: 4,
        title: "wood 4",
        onTap: () {
          botToastWidget(title: "wood 4");
        },
        list: wood4List,
      ),
      CivilWorkSpecificationList(
        id: 5,
        title: "wood 5",
        onTap: () {
          botToastWidget(title: "wood 5");
        },
        list: wood5List,
      ),
    ];
  }

  static List<CivilWorkSpecificationList> kitchenWorkSpecificationList({
    required BuildContext context,
  }) {
    return <CivilWorkSpecificationList>[
      CivilWorkSpecificationList(
        id: 1,
        title: "kitchen 1",
        onTap: () {
          botToastWidget(title: "kitchen 1");
        },
        list: kitchen1List,
      ),
      CivilWorkSpecificationList(
        id: 2,
        title: "kitchen 2",
        onTap: () {
          botToastWidget(title: "kitchen 2");
        },
        list: kitchen2List,
      ),
      CivilWorkSpecificationList(
        id: 3,
        title: "kitchen 3",
        onTap: () {
          botToastWidget(title: "kitchen 3");
        },
        list: kitchen3List,
      ),
      CivilWorkSpecificationList(
        id: 4,
        title: "kitchen 4",
        onTap: () {
          botToastWidget(title: "kitchen 4");
        },
        list: kitchen4List,
      ),
      CivilWorkSpecificationList(
        id: 5,
        title: "kitchen 5",
        onTap: () {
          botToastWidget(title: "kitchen 5");
        },
        list: kitchen5List,
      ),
    ];
  }

  static List<CivilWorkSpecificationList> flooringTilesWorkSpecificationList({
    required BuildContext context,
  }) {
    return <CivilWorkSpecificationList>[
      CivilWorkSpecificationList(
        id: 1,
        title: "flooringTiles 1",
        onTap: () {
          botToastWidget(title: "flooringTiles 1");
        },
        list: flooringTiles1List,
      ),
      CivilWorkSpecificationList(
        id: 2,
        title: "flooringTiles 2",
        onTap: () {
          botToastWidget(title: "flooringTiles 2");
        },
        list: flooringTiles2List,
      ),
      CivilWorkSpecificationList(
        id: 3,
        title: "flooringTiles 3",
        onTap: () {
          botToastWidget(title: "flooringTiles 3");
        },
        list: flooringTiles3List,
      ),
      CivilWorkSpecificationList(
        id: 4,
        title: "flooringTiles 4",
        onTap: () {
          botToastWidget(title: "flooringTiles 4");
        },
        list: flooringTiles4List,
      ),
      CivilWorkSpecificationList(
        id: 5,
        title: "flooringTiles 5",
        onTap: () {
          botToastWidget(title: "flooringTiles 5");
        },
        list: flooringTiles5List,
      ),
    ];
  }

  static List<CivilWorkSpecificationList> elevationWorkSpecificationList({
    required BuildContext context,
  }) {
    return <CivilWorkSpecificationList>[
      CivilWorkSpecificationList(
        id: 1,
        title: "elevation 1",
        onTap: () {
          botToastWidget(title: "elevation 1");
        },
        list: elevation1List,
      ),
      CivilWorkSpecificationList(
        id: 2,
        title: "elevation 2",
        onTap: () {
          botToastWidget(title: "elevation 2");
        },
        list: elevation2List,
      ),
      CivilWorkSpecificationList(
        id: 3,
        title: "elevation 3",
        onTap: () {
          botToastWidget(title: "elevation 3");
        },
        list: elevation3List,
      ),
      CivilWorkSpecificationList(
        id: 4,
        title: "elevation 4",
        onTap: () {
          botToastWidget(title: "elevation 4");
        },
        list: elevation4List,
      ),
      CivilWorkSpecificationList(
        id: 5,
        title: "elevation 5",
        onTap: () {
          botToastWidget(title: "elevation 5");
        },
        list: elevation5List,
      ),
    ];
  }

  static List<CivilWorkSpecificationList> glassPaintPolishWorkSpecificationList({
    required BuildContext context,
  }) {
    return <CivilWorkSpecificationList>[
      CivilWorkSpecificationList(
        id: 1,
        title: "Glass Paint Polish 1",
        onTap: () {
          botToastWidget(title: "Glass Paint Polish 1");
        },
        list: glassPaintPolish1List,
      ),
      CivilWorkSpecificationList(
        id: 2,
        title: "Glass Paint Polish 2",
        onTap: () {
          botToastWidget(title: "Glass Paint Polish 2");
        },
        list: glassPaintPolish2List,
      ),
      CivilWorkSpecificationList(
        id: 3,
        title: "Glass Paint Polish 3",
        onTap: () {
          botToastWidget(title: "Glass Paint Polish 3");
        },
        list: glassPaintPolish3List,
      ),
      CivilWorkSpecificationList(
        id: 4,
        title: "Glass Paint Polish 4",
        onTap: () {
          botToastWidget(title: "Glass Paint Polish 4");
        },
        list: glassPaintPolish4List,
      ),
      CivilWorkSpecificationList(
        id: 5,
        title: "Glass Paint Polish 5",
        onTap: () {
          botToastWidget(title: "Glass Paint Polish 5");
        },
        list: glassPaintPolish5List,
      ),
    ];
  }

  static List<CivilWorkSpecificationList> liftWorkSpecificationList({
    required BuildContext context,
  }) {
    return <CivilWorkSpecificationList>[
      CivilWorkSpecificationList(
        id: 1,
        title: "Lift 1",
        onTap: () {
          botToastWidget(title: "Lift 1");
        },
        list: lift1List,
      ),
      CivilWorkSpecificationList(
        id: 2,
        title: "Lift 2",
        onTap: () {
          botToastWidget(title: "Lift 2");
        },
        list: lift2List,
      ),
      CivilWorkSpecificationList(
        id: 3,
        title: "Lift 3",
        onTap: () {
          botToastWidget(title: "Lift 3");
        },
        list: lift3List,
      ),
      CivilWorkSpecificationList(
        id: 4,
        title: "Lift 4",
        onTap: () {
          botToastWidget(title: "Lift 4");
        },
        list: lift4List,
      ),
      CivilWorkSpecificationList(
        id: 5,
        title: "Lift 5",
        onTap: () {
          botToastWidget(title: "Lift 5");
        },
        list: lift5List,
      ),
    ];
  }

  static List<CivilWorkSpecificationList> miscSpecificationList({
    required BuildContext context,
  }) {
    return <CivilWorkSpecificationList>[
      CivilWorkSpecificationList(
        id: 1,
        title: "Misc 1",
        onTap: () {
          botToastWidget(title: "Misc 1");
        },
        list: misc1List,
      ),
      CivilWorkSpecificationList(
        id: 2,
        title: "Misc 2",
        onTap: () {
          botToastWidget(title: "Misc 2");
        },
        list: misc2List,
      ),
      CivilWorkSpecificationList(
        id: 3,
        title: "Misc 3",
        onTap: () {
          botToastWidget(title: "Misc 3");
        },
        list: misc3List,
      ),
      CivilWorkSpecificationList(
        id: 4,
        title: "Misc 4",
        onTap: () {
          botToastWidget(title: "Misc 4");
        },
        list: misc4List,
      ),
      CivilWorkSpecificationList(
        id: 5,
        title: "Misc 5",
        onTap: () {
          botToastWidget(title: "Misc 5");
        },
        list: misc5List,
      ),
    ];
  }
}

///
List<ConstructionEstimateProductModel> heavyDutyRibbedList = [
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: tmtImg,
    productPrice: 500,
    productName: "Tata Steel",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: tmtImg,
    productPrice: 400,
    productName: "Sail",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: tmtImg,
    productPrice: 300,
    productName: "Captain",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: tmtImg,
    productPrice: 200,
    productName: "Captain 1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: tmtImg,
    productPrice: 100,
    productName: "Captain 2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: tmtImg,
    productPrice: 300,
    productName: "Captain 3",
    onTap: () {},
  ),
];
List<ConstructionEstimateProductModel> brickList = [
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: bricksImg,
    productPrice: 500,
    productName: "Cement Brick",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: bricksImg,
    productPrice: 400,
    productName: "Brick",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: bricksImg,
    productPrice: 300,
    productName: "Red Clay Brick",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: bricksImg,
    productPrice: 200,
    productName: "Red Clay Brick 1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: bricksImg,
    productPrice: 300,
    productName: "Red Clay Brick 2",
    onTap: () {},
  ),
];
List<ConstructionEstimateProductModel> dustList = [
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: dustImg,
    productPrice: 500,
    productName: "Dust 1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: dustImg,
    productPrice: 400,
    productName: "Dust 2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: dustImg,
    productPrice: 300,
    productName: "Dust 3",
    onTap: () {},
  ),
];
List<ConstructionEstimateProductModel> cementList = [
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: cementImg,
    productPrice: 500,
    productName: "Cement 1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: cementImg,
    productPrice: 400,
    productName: "Cement 2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: cementImg,
    productPrice: 300,
    productName: "Cement 3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: cementImg,
    productPrice: 300,
    productName: "Cement 4",
    onTap: () {},
  ),
];
List<ConstructionEstimateProductModel> roriList = [
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: roriImg,
    productPrice: 500,
    productName: "Rori 1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: roriImg,
    productPrice: 400,
    productName: "Rori 2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: roriImg,
    productPrice: 300,
    productName: "Rori 3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: roriImg,
    productPrice: 300,
    productName: "Rori 4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: roriImg,
    productPrice: 300,
    productName: "Rori 5",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: roriImg,
    productPrice: 300,
    productName: "Rori 6",
    onTap: () {},
  ),
];
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
List<ConstructionEstimateProductModel> mixtureRatioStructure1List = [
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: mixtureRatioStructureImg,
    productPrice: 500,
    productName: "Mixture Ratio 1-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: mixtureRatioStructureImg,
    productPrice: 300,
    productName: "Mixture Ratio 1-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: mixtureRatioStructureImg,
    productPrice: 200,
    productName: "Mixture Ratio 1-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: mixtureRatioStructureImg,
    productPrice: 100,
    productName: "Mixture Ratio 1-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: mixtureRatioStructureImg,
    productPrice: 300,
    productName: "Mixture Ratio 1-5",
    onTap: () {},
  ),
];
List<ConstructionEstimateProductModel> mixtureRatioStructure2List = [
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: mixtureRatioStructureImg,
    productPrice: 500,
    productName: "Mixture Ratio 2-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: mixtureRatioStructureImg,
    productPrice: 300,
    productName: "Mixture Ratio 2-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: mixtureRatioStructureImg,
    productPrice: 200,
    productName: "Mixture Ratio 2-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: mixtureRatioStructureImg,
    productPrice: 100,
    productName: "Mixture Ratio 2-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: mixtureRatioStructureImg,
    productPrice: 300,
    productName: "Mixture Ratio 2-5",
    onTap: () {},
  ),
];
List<ConstructionEstimateProductModel> mixtureRatioStructure3List = [
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: mixtureRatioStructureImg,
    productPrice: 500,
    productName: "Mixture Ratio 3-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: mixtureRatioStructureImg,
    productPrice: 300,
    productName: "Mixture Ratio 3-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: mixtureRatioStructureImg,
    productPrice: 200,
    productName: "Mixture Ratio 3-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: mixtureRatioStructureImg,
    productPrice: 100,
    productName: "Mixture Ratio 3-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: mixtureRatioStructureImg,
    productPrice: 300,
    productName: "Mixture Ratio 3-5",
    onTap: () {},
  ),
];
List<ConstructionEstimateProductModel> mixtureRatioStructure4List = [
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: mixtureRatioStructureImg,
    productPrice: 500,
    productName: "Mixture Ratio 4-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: mixtureRatioStructureImg,
    productPrice: 300,
    productName: "Mixture Ratio 4-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: mixtureRatioStructureImg,
    productPrice: 200,
    productName: "Mixture Ratio 4-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: mixtureRatioStructureImg,
    productPrice: 100,
    productName: "Mixture Ratio 4-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: mixtureRatioStructureImg,
    productPrice: 300,
    productName: "Mixture Ratio 4-5",
    onTap: () {},
  ),
];
List<ConstructionEstimateProductModel> mixtureRatioStructure5List = [
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: mixtureRatioStructureImg,
    productPrice: 500,
    productName: "Mixture Ratio 5-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: mixtureRatioStructureImg,
    productPrice: 300,
    productName: "Mixture Ratio 5-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: mixtureRatioStructureImg,
    productPrice: 200,
    productName: "Mixture Ratio 5-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: mixtureRatioStructureImg,
    productPrice: 100,
    productName: "Mixture Ratio 5-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: mixtureRatioStructureImg,
    productPrice: 300,
    productName: "Mixture Ratio 5-5",
    onTap: () {},
  ),
];
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
List<ConstructionEstimateProductModel> sanitary1List = [
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: sanitaryImg,
    productPrice: 500,
    productName: "Sanitary 1-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: sanitaryImg,
    productPrice: 300,
    productName: "Sanitary 1-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: sanitaryImg,
    productPrice: 200,
    productName: "Sanitary 1-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: sanitaryImg,
    productPrice: 100,
    productName: "Sanitary 1-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: sanitaryImg,
    productPrice: 300,
    productName: "Sanitary 1-5",
    onTap: () {},
  ),
];
List<ConstructionEstimateProductModel> sanitary2List = [
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: sanitaryImg,
    productPrice: 500,
    productName: "Sanitary 2-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: sanitaryImg,
    productPrice: 300,
    productName: "Sanitary 2-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: sanitaryImg,
    productPrice: 200,
    productName: "Sanitary 2-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: sanitaryImg,
    productPrice: 100,
    productName: "Sanitary 2-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: sanitaryImg,
    productPrice: 300,
    productName: "Sanitary 2-5",
    onTap: () {},
  ),
];
List<ConstructionEstimateProductModel> sanitary3List = [
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: sanitaryImg,
    productPrice: 500,
    productName: "Sanitary 3-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: sanitaryImg,
    productPrice: 300,
    productName: "Sanitary 3-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: sanitaryImg,
    productPrice: 200,
    productName: "Sanitary 3-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: sanitaryImg,
    productPrice: 100,
    productName: "Sanitary 3-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: sanitaryImg,
    productPrice: 300,
    productName: "Sanitary 3-5",
    onTap: () {},
  ),
];
List<ConstructionEstimateProductModel> sanitary4List = [
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: sanitaryImg,
    productPrice: 500,
    productName: "Sanitary 4-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: sanitaryImg,
    productPrice: 300,
    productName: "Sanitary 4-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: sanitaryImg,
    productPrice: 200,
    productName: "Sanitary 4-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: sanitaryImg,
    productPrice: 100,
    productName: "Sanitary 4-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: sanitaryImg,
    productPrice: 300,
    productName: "Sanitary 4-5",
    onTap: () {},
  ),
];
List<ConstructionEstimateProductModel> sanitary5List = [
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: sanitaryImg,
    productPrice: 500,
    productName: "Sanitary 5-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: sanitaryImg,
    productPrice: 300,
    productName: "Sanitary 5-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: sanitaryImg,
    productPrice: 200,
    productName: "Sanitary 5-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: sanitaryImg,
    productPrice: 100,
    productName: "Sanitary 5-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: sanitaryImg,
    productPrice: 300,
    productName: "Sanitary 5-5",
    onTap: () {},
  ),
];
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
List<ConstructionEstimateProductModel> electric1List = [
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: electricImg,
    productPrice: 500,
    productName: "Electric 1-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: electricImg,
    productPrice: 300,
    productName: "Electric 1-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: electricImg,
    productPrice: 200,
    productName: "Electric 1-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: electricImg,
    productPrice: 100,
    productName: "Electric 1-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: electricImg,
    productPrice: 300,
    productName: "Electric 1-5",
    onTap: () {},
  ),
];
List<ConstructionEstimateProductModel> electric2List = [
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: electricImg,
    productPrice: 500,
    productName: "Electric 2-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: electricImg,
    productPrice: 300,
    productName: "Electric 2-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: electricImg,
    productPrice: 200,
    productName: "Electric 2-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: electricImg,
    productPrice: 100,
    productName: "Electric 2-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: electricImg,
    productPrice: 300,
    productName: "Electric 2-5",
    onTap: () {},
  ),
];
List<ConstructionEstimateProductModel> electric3List = [
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: electricImg,
    productPrice: 500,
    productName: "Electric 3-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: electricImg,
    productPrice: 300,
    productName: "Electric 3-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: electricImg,
    productPrice: 200,
    productName: "Electric 3-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: electricImg,
    productPrice: 100,
    productName: "Electric 3-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: electricImg,
    productPrice: 300,
    productName: "Electric 3-5",
    onTap: () {},
  ),
];
List<ConstructionEstimateProductModel> electric4List = [
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: electricImg,
    productPrice: 500,
    productName: "Electric 4-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: electricImg,
    productPrice: 300,
    productName: "Electric 4-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: electricImg,
    productPrice: 200,
    productName: "Electric 4-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: electricImg,
    productPrice: 100,
    productName: "Electric 4-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: electricImg,
    productPrice: 300,
    productName: "Electric 4-5",
    onTap: () {},
  ),
];
List<ConstructionEstimateProductModel> electric5List = [
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: electricImg,
    productPrice: 500,
    productName: "Electric 5-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: electricImg,
    productPrice: 300,
    productName: "Electric 5-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: electricImg,
    productPrice: 200,
    productName: "Electric 5-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: electricImg,
    productPrice: 100,
    productName: "Electric 5-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: electricImg,
    productPrice: 300,
    productName: "Electric 5-5",
    onTap: () {},
  ),
];
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
List<ConstructionEstimateProductModel> wood1List = [
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: woodImg,
    productPrice: 500,
    productName: "Wood 1-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: woodImg,
    productPrice: 300,
    productName: "Wood 1-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: woodImg,
    productPrice: 200,
    productName: "Wood 1-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: woodImg,
    productPrice: 100,
    productName: "Wood 1-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: woodImg,
    productPrice: 300,
    productName: "Wood 1-5",
    onTap: () {},
  ),
];
List<ConstructionEstimateProductModel> wood2List = [
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: woodImg,
    productPrice: 500,
    productName: "Wood 2-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: woodImg,
    productPrice: 300,
    productName: "Wood 2-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: woodImg,
    productPrice: 200,
    productName: "Wood 2-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: woodImg,
    productPrice: 100,
    productName: "Wood 2-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: woodImg,
    productPrice: 300,
    productName: "Wood 2-5",
    onTap: () {},
  ),
];
List<ConstructionEstimateProductModel> wood3List = [
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: woodImg,
    productPrice: 500,
    productName: "Wood 3-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: woodImg,
    productPrice: 300,
    productName: "Wood 3-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: woodImg,
    productPrice: 200,
    productName: "Wood 3-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: woodImg,
    productPrice: 100,
    productName: "Wood 3-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: woodImg,
    productPrice: 300,
    productName: "Wood 3-5",
    onTap: () {},
  ),
];
List<ConstructionEstimateProductModel> wood4List = [
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: woodImg,
    productPrice: 500,
    productName: "Wood 4-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: woodImg,
    productPrice: 300,
    productName: "Wood 4-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: woodImg,
    productPrice: 200,
    productName: "Wood 4-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: woodImg,
    productPrice: 100,
    productName: "Wood 4-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: woodImg,
    productPrice: 300,
    productName: "Wood 4-5",
    onTap: () {},
  ),
];
List<ConstructionEstimateProductModel> wood5List = [
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: woodImg,
    productPrice: 500,
    productName: "Wood 5-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: woodImg,
    productPrice: 300,
    productName: "Wood 5-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: woodImg,
    productPrice: 200,
    productName: "Wood 5-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: woodImg,
    productPrice: 100,
    productName: "Wood 5-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: woodImg,
    productPrice: 300,
    productName: "Wood 5-5",
    onTap: () {},
  ),
];
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
List<ConstructionEstimateProductModel> kitchen1List = [
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: kitchenImg,
    productPrice: 500,
    productName: "Kitchen 1-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: kitchenImg,
    productPrice: 300,
    productName: "Kitchen 1-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: kitchenImg,
    productPrice: 200,
    productName: "Kitchen 1-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: kitchenImg,
    productPrice: 100,
    productName: "Kitchen 1-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: kitchenImg,
    productPrice: 300,
    productName: "Kitchen 1-5",
    onTap: () {},
  ),
];
List<ConstructionEstimateProductModel> kitchen2List = [
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: kitchenImg,
    productPrice: 500,
    productName: "Kitchen 2-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: kitchenImg,
    productPrice: 300,
    productName: "Kitchen 2-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: kitchenImg,
    productPrice: 200,
    productName: "Kitchen 2-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: kitchenImg,
    productPrice: 100,
    productName: "Kitchen 2-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: kitchenImg,
    productPrice: 300,
    productName: "Kitchen 2-5",
    onTap: () {},
  ),
];
List<ConstructionEstimateProductModel> kitchen3List = [
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: kitchenImg,
    productPrice: 500,
    productName: "Kitchen 3-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: kitchenImg,
    productPrice: 300,
    productName: "Kitchen 3-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: kitchenImg,
    productPrice: 200,
    productName: "Kitchen 3-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: kitchenImg,
    productPrice: 100,
    productName: "Kitchen 3-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: kitchenImg,
    productPrice: 300,
    productName: "Kitchen 3-5",
    onTap: () {},
  ),
];
List<ConstructionEstimateProductModel> kitchen4List = [
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: kitchenImg,
    productPrice: 500,
    productName: "Kitchen 4-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: kitchenImg,
    productPrice: 300,
    productName: "Kitchen 4-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: kitchenImg,
    productPrice: 200,
    productName: "Kitchen 4-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: kitchenImg,
    productPrice: 100,
    productName: "Kitchen 4-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: kitchenImg,
    productPrice: 300,
    productName: "Kitchen 4-5",
    onTap: () {},
  ),
];
List<ConstructionEstimateProductModel> kitchen5List = [
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: kitchenImg,
    productPrice: 500,
    productName: "Kitchen 5-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: kitchenImg,
    productPrice: 300,
    productName: "Kitchen 5-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: kitchenImg,
    productPrice: 200,
    productName: "Kitchen 5-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: kitchenImg,
    productPrice: 100,
    productName: "Kitchen 5-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: kitchenImg,
    productPrice: 300,
    productName: "Kitchen 5-5",
    onTap: () {},
  ),
];
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
List<ConstructionEstimateProductModel> flooringTiles1List = [
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: flooringTilesImg,
    productPrice: 500,
    productName: "Flooring Tiles 1-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: flooringTilesImg,
    productPrice: 300,
    productName: "Flooring Tiles 1-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: flooringTilesImg,
    productPrice: 200,
    productName: "Flooring Tiles 1-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: flooringTilesImg,
    productPrice: 100,
    productName: "Flooring Tiles 1-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: flooringTilesImg,
    productPrice: 300,
    productName: "Flooring Tiles 1-5",
    onTap: () {},
  ),
];
List<ConstructionEstimateProductModel> flooringTiles2List = [
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: flooringTilesImg,
    productPrice: 500,
    productName: "Flooring Tiles 2-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: flooringTilesImg,
    productPrice: 300,
    productName: "Flooring Tiles 2-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: flooringTilesImg,
    productPrice: 200,
    productName: "Flooring Tiles 2-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: flooringTilesImg,
    productPrice: 100,
    productName: "Flooring Tiles 2-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: flooringTilesImg,
    productPrice: 300,
    productName: "Flooring Tiles 2-5",
    onTap: () {},
  ),
];
List<ConstructionEstimateProductModel> flooringTiles3List = [
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: flooringTilesImg,
    productPrice: 500,
    productName: "Flooring Tiles 3-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: flooringTilesImg,
    productPrice: 300,
    productName: "Flooring Tiles 3-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: flooringTilesImg,
    productPrice: 200,
    productName: "Flooring Tiles 3-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: flooringTilesImg,
    productPrice: 100,
    productName: "Flooring Tiles 3-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: flooringTilesImg,
    productPrice: 300,
    productName: "Flooring Tiles 3-5",
    onTap: () {},
  ),
];
List<ConstructionEstimateProductModel> flooringTiles4List = [
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: flooringTilesImg,
    productPrice: 500,
    productName: "Flooring Tiles 4-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: flooringTilesImg,
    productPrice: 300,
    productName: "Flooring Tiles 4-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: flooringTilesImg,
    productPrice: 200,
    productName: "Flooring Tiles 4-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: flooringTilesImg,
    productPrice: 100,
    productName: "Flooring Tiles 4-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: flooringTilesImg,
    productPrice: 300,
    productName: "Flooring Tiles 4-5",
    onTap: () {},
  ),
];
List<ConstructionEstimateProductModel> flooringTiles5List = [
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: flooringTilesImg,
    productPrice: 500,
    productName: "Flooring Tiles 5-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: flooringTilesImg,
    productPrice: 300,
    productName: "Flooring Tiles 5-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: flooringTilesImg,
    productPrice: 200,
    productName: "Flooring Tiles 5-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: flooringTilesImg,
    productPrice: 100,
    productName: "Flooring Tiles 5-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: flooringTilesImg,
    productPrice: 300,
    productName: "Flooring Tiles 5-5",
    onTap: () {},
  ),
];
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
List<ConstructionEstimateProductModel> elevation1List = [
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: elevationImg,
    productPrice: 500,
    productName: "Elevation 1-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: elevationImg,
    productPrice: 300,
    productName: "Elevation 1-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: elevationImg,
    productPrice: 200,
    productName: "Elevation 1-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: elevationImg,
    productPrice: 100,
    productName: "Elevation 1-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: elevationImg,
    productPrice: 300,
    productName: "Elevation 1-5",
    onTap: () {},
  ),
];
List<ConstructionEstimateProductModel> elevation2List = [
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: elevationImg,
    productPrice: 500,
    productName: "Elevation 2-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: elevationImg,
    productPrice: 300,
    productName: "Elevation 2-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: elevationImg,
    productPrice: 200,
    productName: "Elevation 2-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: elevationImg,
    productPrice: 100,
    productName: "Elevation 2-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: elevationImg,
    productPrice: 300,
    productName: "Elevation 2-5",
    onTap: () {},
  ),
];
List<ConstructionEstimateProductModel> elevation3List = [
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: elevationImg,
    productPrice: 500,
    productName: "Elevation 3-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: elevationImg,
    productPrice: 300,
    productName: "Elevation 3-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: elevationImg,
    productPrice: 200,
    productName: "Elevation 3-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: elevationImg,
    productPrice: 100,
    productName: "Elevation 3-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: elevationImg,
    productPrice: 300,
    productName: "Elevation 3-5",
    onTap: () {},
  ),
];
List<ConstructionEstimateProductModel> elevation4List = [
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: elevationImg,
    productPrice: 500,
    productName: "Elevation 4-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: elevationImg,
    productPrice: 300,
    productName: "Elevation 4-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: elevationImg,
    productPrice: 200,
    productName: "Elevation 4-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: elevationImg,
    productPrice: 100,
    productName: "Elevation 4-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: elevationImg,
    productPrice: 300,
    productName: "Elevation 4-5",
    onTap: () {},
  ),
];
List<ConstructionEstimateProductModel> elevation5List = [
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: elevationImg,
    productPrice: 500,
    productName: "Elevation 5-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: elevationImg,
    productPrice: 300,
    productName: "Elevation 5-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: elevationImg,
    productPrice: 200,
    productName: "Elevation 5-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: elevationImg,
    productPrice: 100,
    productName: "Elevation 5-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: elevationImg,
    productPrice: 300,
    productName: "Elevation 5-5",
    onTap: () {},
  ),
];
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
List<ConstructionEstimateProductModel> glassPaintPolish1List = [
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: glassPaintPolishImg,
    productPrice: 500,
    productName: "Glass Paint Polish 1-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: glassPaintPolishImg,
    productPrice: 300,
    productName: "Glass Paint Polish 1-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: glassPaintPolishImg,
    productPrice: 200,
    productName: "Glass Paint Polish 1-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: glassPaintPolishImg,
    productPrice: 100,
    productName: "Glass Paint Polish 1-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: glassPaintPolishImg,
    productPrice: 300,
    productName: "Glass Paint Polish 1-5",
    onTap: () {},
  ),
];
List<ConstructionEstimateProductModel> glassPaintPolish2List = [
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: glassPaintPolishImg,
    productPrice: 500,
    productName: "Glass Paint Polish 2-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: glassPaintPolishImg,
    productPrice: 300,
    productName: "Glass Paint Polish 2-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: glassPaintPolishImg,
    productPrice: 200,
    productName: "Glass Paint Polish 2-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: glassPaintPolishImg,
    productPrice: 100,
    productName: "Glass Paint Polish 2-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: glassPaintPolishImg,
    productPrice: 300,
    productName: "Glass Paint Polish 2-5",
    onTap: () {},
  ),
];
List<ConstructionEstimateProductModel> glassPaintPolish3List = [
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: glassPaintPolishImg,
    productPrice: 500,
    productName: "Glass Paint Polish 3-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: glassPaintPolishImg,
    productPrice: 300,
    productName: "Glass Paint Polish 3-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: glassPaintPolishImg,
    productPrice: 200,
    productName: "Glass Paint Polish 3-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: glassPaintPolishImg,
    productPrice: 100,
    productName: "Glass Paint Polish 3-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: glassPaintPolishImg,
    productPrice: 300,
    productName: "Glass Paint Polish 3-5",
    onTap: () {},
  ),
];
List<ConstructionEstimateProductModel> glassPaintPolish4List = [
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: glassPaintPolishImg,
    productPrice: 500,
    productName: "Glass Paint Polish 4-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: glassPaintPolishImg,
    productPrice: 300,
    productName: "Glass Paint Polish 4-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: glassPaintPolishImg,
    productPrice: 200,
    productName: "Glass Paint Polish 4-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: glassPaintPolishImg,
    productPrice: 100,
    productName: "Glass Paint Polish 4-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: glassPaintPolishImg,
    productPrice: 300,
    productName: "Glass Paint Polish 4-5",
    onTap: () {},
  ),
];
List<ConstructionEstimateProductModel> glassPaintPolish5List = [
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: glassPaintPolishImg,
    productPrice: 500,
    productName: "Glass Paint Polish 5-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: glassPaintPolishImg,
    productPrice: 300,
    productName: "Glass Paint Polish 5-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: glassPaintPolishImg,
    productPrice: 200,
    productName: "Glass Paint Polish 5-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: glassPaintPolishImg,
    productPrice: 100,
    productName: "Glass Paint Polish 5-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: glassPaintPolishImg,
    productPrice: 300,
    productName: "Glass Paint Polish 5-5",
    onTap: () {},
  ),
];
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
List<ConstructionEstimateProductModel> lift1List = [
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: liftImg,
    productPrice: 500,
    productName: "Lift 1-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: liftImg,
    productPrice: 300,
    productName: "Lift 1-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: liftImg,
    productPrice: 200,
    productName: "Lift 1-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: liftImg,
    productPrice: 100,
    productName: "Lift 1-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: liftImg,
    productPrice: 300,
    productName: "Lift 1-5",
    onTap: () {},
  ),
];
List<ConstructionEstimateProductModel> lift2List = [
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: liftImg,
    productPrice: 500,
    productName: "Lift 2-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: liftImg,
    productPrice: 300,
    productName: "Lift 2-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: liftImg,
    productPrice: 200,
    productName: "Lift 2-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: liftImg,
    productPrice: 100,
    productName: "Lift 2-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: liftImg,
    productPrice: 300,
    productName: "Lift 2-5",
    onTap: () {},
  ),
];
List<ConstructionEstimateProductModel> lift3List = [
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: liftImg,
    productPrice: 500,
    productName: "Lift 3-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: liftImg,
    productPrice: 300,
    productName: "Lift 3-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: liftImg,
    productPrice: 200,
    productName: "Lift 3-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: liftImg,
    productPrice: 100,
    productName: "Lift 3-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: liftImg,
    productPrice: 300,
    productName: "Lift 3-5",
    onTap: () {},
  ),
];
List<ConstructionEstimateProductModel> lift4List = [
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: liftImg,
    productPrice: 500,
    productName: "Lift 4-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: liftImg,
    productPrice: 300,
    productName: "Lift 4-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: liftImg,
    productPrice: 200,
    productName: "Lift 4-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: liftImg,
    productPrice: 100,
    productName: "Lift 4-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: liftImg,
    productPrice: 300,
    productName: "Lift 4-5",
    onTap: () {},
  ),
];
List<ConstructionEstimateProductModel> lift5List = [
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: liftImg,
    productPrice: 500,
    productName: "Lift 5-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: liftImg,
    productPrice: 300,
    productName: "Lift 5-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: liftImg,
    productPrice: 200,
    productName: "Lift 5-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: liftImg,
    productPrice: 100,
    productName: "Lift 5-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: liftImg,
    productPrice: 300,
    productName: "Lift 5-5",
    onTap: () {},
  ),
];
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
List<ConstructionEstimateProductModel> misc1List = [
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: miscImg,
    productPrice: 500,
    productName: "Misc 1-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: miscImg,
    productPrice: 300,
    productName: "Misc 1-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: miscImg,
    productPrice: 200,
    productName: "Misc 1-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: miscImg,
    productPrice: 100,
    productName: "Misc 1-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 1,
    productImage: miscImg,
    productPrice: 300,
    productName: "Misc 1-5",
    onTap: () {},
  ),
];
List<ConstructionEstimateProductModel> misc2List = [
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: miscImg,
    productPrice: 500,
    productName: "Misc 2-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: miscImg,
    productPrice: 300,
    productName: "Misc 2-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: miscImg,
    productPrice: 200,
    productName: "Misc 2-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: miscImg,
    productPrice: 100,
    productName: "Misc 2-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 2,
    productImage: miscImg,
    productPrice: 300,
    productName: "Misc 2-5",
    onTap: () {},
  ),
];
List<ConstructionEstimateProductModel> misc3List = [
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: miscImg,
    productPrice: 500,
    productName: "Misc 3-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: miscImg,
    productPrice: 300,
    productName: "Misc 3-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: miscImg,
    productPrice: 200,
    productName: "Misc 3-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: miscImg,
    productPrice: 100,
    productName: "Misc 3-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 3,
    productImage: miscImg,
    productPrice: 300,
    productName: "Misc 3-5",
    onTap: () {},
  ),
];
List<ConstructionEstimateProductModel> misc4List = [
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: miscImg,
    productPrice: 500,
    productName: "Misc 4-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: miscImg,
    productPrice: 300,
    productName: "Misc 4-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: miscImg,
    productPrice: 200,
    productName: "Misc 4-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: miscImg,
    productPrice: 100,
    productName: "Misc 4-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 4,
    productImage: miscImg,
    productPrice: 300,
    productName: "Misc 4-5",
    onTap: () {},
  ),
];
List<ConstructionEstimateProductModel> misc5List = [
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: miscImg,
    productPrice: 500,
    productName: "Misc 5-1",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: miscImg,
    productPrice: 300,
    productName: "Misc 5-2",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: miscImg,
    productPrice: 200,
    productName: "Misc 5-3",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: miscImg,
    productPrice: 100,
    productName: "Misc 5-4",
    onTap: () {},
  ),
  ConstructionEstimateProductModel(
    productCategory: 5,
    productImage: miscImg,
    productPrice: 300,
    productName: "Misc 5-5",
    onTap: () {},
  ),
];
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
List workSpecificationNotesList = [
  "Lights and profile will be provided (BRAND THE LIGHT HOUSE).",
  "Double sink will be provided.",
  "Chimney will be provided Brand KAFF.",
  "Under sink RO unit provisioning will be provided.",
  "Sink area will be made in Granite.",
  "4 burner gas hob will be provided brand KAFF.",
  "Microwave area will be built in shutter.",
];

final List<String> fadImgList = [
  fad1Img,
  fad2Img,
  fad3Img,
  fad4Img,
  fad5Img,
];
final List<String> homeConstructionImgList = [
  bedRoomImg,
  bathRoomImg,
  kitchenImg2,
];

/// FinancialServicesList
class FinancialServicesList {
  int? id;
  String? title;
  Function()? onTap;

  FinancialServicesList({
    this.id,
    this.title,
    this.onTap,
  });

  static List<FinancialServicesList> financialServicesList({
    required BuildContext context,
  }) {
    return <FinancialServicesList>[
      FinancialServicesList(
        id: 1,
        title: rentPaymentText,
        onTap: () {
          gotoNextPageWidget(
            context: context,
            title: rentPaymentText,
            pageName: const EmptyPage(
              pageTitle: rentPaymentText,
            ),
          );
        },
      ),
      FinancialServicesList(
        id: 2,
        title: utilityBillPaymentText,
        onTap: () {
          gotoNextPageWidget(
            context: context,
            title: utilityBillPaymentText,
            pageName: const EmptyPage(
              pageTitle: utilityBillPaymentText,
            ),
          );
        },
      ),
      FinancialServicesList(
        id: 2,
        title: maintenanceBillPaymentText,
        onTap: () {
          gotoNextPageWidget(
            context: context,
            title: maintenanceBillPaymentText,
            pageName: const EmptyPage(
              pageTitle: maintenanceBillPaymentText,
            ),
          );
        },
      ),
      FinancialServicesList(
        id: 2,
        title: feesText,
        onTap: () {
          gotoNextPageWidget(
            context: context,
            title: feesText,
            pageName: const EmptyPage(
              pageTitle: feesText,
            ),
          );
        },
      ),
    ];
  }
}

import 'package:flutter/material.dart';
import 'package:landplush/utils/strings.dart';

const fontRegular = 'Regular';
const fontMedium = 'Medium';
const fontSemibold = 'Semibold';
const fontBold = 'Bold';
/* font sizes*/
const textSizeSmall = 12.0;
const textSizeSMedium = 14.0;
const textSizeMedium = 16.0;
const textSizeLargeMedium = 18.0;
const textSizeNormal = 20.0;
const textSizeLarge = 24.0;
const textSizeXLarge = 30.0;
const profileImage = 'assets/images/profile.png';

/// variable for initializations
var propertyForPicked = 'Sell';
var propertyTypeChoosed = " ";
var foodSelectionPG = 'Veg';
var furnishValue;
var gateSecurityChoosed = " ";
var vegAllowedChoosed = " ";
var totalNoOfFloor;
var floorNo;
var totalAreaValue = 'Sqft';
var carpetAreaValue = 'Sqft';
var superAreaValue = 'Sqft';
var maintenanceValue = 'Monthly';
var selectBrokerageValue;
var agreementTypeValue;
var propNoticePeriodValue;
var propertyOwnershipSelection;
var agreementChargeValue;
var ageOfConstructionValue;
var ownerResidentValue;
var govtChargesValue;
var flooringOptionValue;
var powerOptionValue;
var carParkingValue;
var carParkingValuePG;
var noOfCupBoardValue;
var waterSupplyValue;
var cityValue;
var localityOptionValue = selectLocalityText;
var listingRemainder = '4';
var bathroom;
var balcony;
var bhk;
var availability;
var facingVal;
var propertyTypeResorCom;
var featureSet = [];
var porpFeatureSet = [];
var pgSecuritySet = [];
var pgMoreFeaturesSet = [];
var pgRoomFeaturesSet = [];
var pgTopAmenitiesSet = [];
var pgCommonAreasSet = [];

var tenantOptionSelection;
DateTime? datePicked;

// PG Exclusive data
var pgName;
var closingTimeValue;
var pgPresentIn;
var pgBrandValue;
var genderPreferenceValue;
var noticePGValue;
var pgManagedByValue;
var pgManagerStaysAtValue;
var pgRoomTypeValue;
var singleRooms;
var doubleRooms;
var tripleRooms;
var quadRooms;
var otherRooms;
var minRent;

// Queries
String localityInitValue = "";

int perQuery = 15;

var queryFor = 'Sell';
var searchQry;

// Query? addSearchQuery;
// Query? getItemsQuery;
// Query? currentQuery;
// Query? baseQuery;
// Query? queryWithFilter;

//sorting / Filter options
bool residential = true;
var sortByvalue = 'postingTime';
int sortValue = 2;
bool availFilter = false;
RangeValues priceRange = const RangeValues(0, 10000);
int postedIndex = 0;
var postedForQuery;
bool buy = true;
bool rent = false;
bool add = true;
var floorPrefValMin;
var floorPrefValMax;
var bathroomMinValue;
var budgetMinVal;
var budgetMaxVal;
var budgetMinPref = 1;
var budgetMaxPref = 1000000000;
var areaMinVal;
var areaMaxVal;
var areaOptionSelection;
var bathroomPref = '0';
var areaMinPref = '0';
var areaMaxPref = '10000';
var floorPrefMin;
var floorPrefMax;

///bool values for selection

bool isChoosing = false;
bool value1 = false;
bool value2 = false;
bool isChecked = false;
bool freePackage = true;
bool goldPackage = false;
bool permiumPackage = false;
bool immediately = false;
bool dateOK = false;
bool yearOK = false;
bool newProperty = false;
bool reSale = false;
bool transactionResale = false;
bool transactionNewPropery = false;

/// TextEditingControllers for textFormField
var localityController = TextEditingController();
var addressController = TextEditingController();
var nearByController = TextEditingController();
var totalAreaText = TextEditingController();
var carpetAreaText = TextEditingController();
var youtubeLink = TextEditingController();
var facingRoadWidth = TextEditingController();
var reasonForSelling = TextEditingController();
var superAreaText = TextEditingController();
var monthlyRent = TextEditingController();
var otherCharges = TextEditingController();
var tokenCharges = TextEditingController();
var securityAmount = TextEditingController();
var maintainanceCharge = TextEditingController();
var waterCharge = TextEditingController();
var electricCharge = TextEditingController();
var pincodeController = TextEditingController();
var pgNameController = TextEditingController();
var pgOperationController = TextEditingController();
var pgOperationFilterController = TextEditingController();
var nameController = TextEditingController();
var emailController = TextEditingController();
var singleRoomController = TextEditingController();
var doubleRoomController = TextEditingController();
var tripleRoomController = TextEditingController();
var quadRoomController = TextEditingController();
var otherRoomController = TextEditingController();
var foodChargeController = TextEditingController();
var singleRoomNo = TextEditingController();
var doubleRoomNo = TextEditingController();
var tripleRoomNo = TextEditingController();
var quadRoomNo = TextEditingController();
var otherRoomNo = TextEditingController();
var searchNodeController = TextEditingController();
var comLength = TextEditingController();
var comDepth = TextEditingController();
var comFront = TextEditingController();
var minBudget = TextEditingController();
var maxBudget = TextEditingController();
var furnishing = TextEditingController();
var description = TextEditingController();
var pgMoveIn = TextEditingController();
var pgMealCharges = TextEditingController();
var pgWaterCharges = TextEditingController();
var pgElectricityCharges = TextEditingController();

// User details
String mobNumber = "";
String name = "";
String? role;
String? mail;
var uid;
String? propertyIndex;
double? lat, lng;

// razorpay options
var paymentAmount = 0;
var options = {
  'key': 'rzp_test_kPLnY9UKXI5bgh',
  'amount': paymentAmount * 100,
  'name': 'Property Clinic',
  'description': 'Online Property Store',
  'prefill': {'contact': mobNumber, 'email': mail},
  'external': {
    'wallets': ['paytm']
  }
};

// Main Scaffold Key
final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

List<String> servicesTitles = ['Create\nRental Agreement'];
List<IconData> servicesIcons = [Icons.assignment_turned_in];

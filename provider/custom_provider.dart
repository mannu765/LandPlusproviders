import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../screen/home/calculator/far_calculator.dart';
import '../screen/home/calculator/thankyou.dart';
import '../utils/strings.dart';

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
class ImageSliderProvider extends ChangeNotifier {
  int _currentPos = 0;
  int get currentPos => _currentPos;
  void onPageChanged(int index) {
    _currentPos = index;
    notifyListeners();
  }
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
class DropdownProvider extends ChangeNotifier {
  String _selectedValue = "";
  String get selectedValue => _selectedValue;
  void onChanged(String value) {
    _selectedValue = value;
    notifyListeners();
  }
}

class CalculatorProvider extends ChangeNotifier {
  double _far = 0;
  double _groundCoverage = 0.0;
  String _isStiltMandatory = noText;
  int _maxDwellingUnits = 0;

  AreaUnit _selectedUnit = AreaUnit.sqYard;
  String _buildStilt = yesText;
  String _buildBasement = yesText;
  String _plotCategory = ndmcText;

  int _selectedIndex = 0;

  double _emi = 0.0;
  double _loanAmount = 0.0;

  double get far => _far;
  double get groundCoverage => _groundCoverage;
  String get isStiltMandatory => _isStiltMandatory;
  int get maxDwellingUnits => _maxDwellingUnits;

  AreaUnit get selectedUnit => _selectedUnit;
  String get buildStilt => _buildStilt;
  String get buildBasement => _buildBasement;
  String get plotCategory => _plotCategory;

  int get selectedIndex => _selectedIndex;
  double get emi => _emi;
  double get loanAmount => _loanAmount;
  void onSubmit({
    required double far,
    required double groundCoverage,
    required String isStiltMandatory,
    required int maxDwellingUnits,
  }) {
    _far = far;
    _groundCoverage = groundCoverage;
    _isStiltMandatory = isStiltMandatory;
    _maxDwellingUnits = maxDwellingUnits;
    notifyListeners();
  }

  void onChangeUnit({
    required AreaUnit selectedUnit,
  }) {
    _selectedUnit = selectedUnit;
    notifyListeners();
  }

  void onChangeStilt({
    required String buildStilt,
  }) {
    _buildStilt = buildStilt;
    notifyListeners();
  }

  void onChangeBasement({
    required String buildBasement,
  }) {
    _buildBasement = buildBasement;
    notifyListeners();
  }

  void onChangePlotCategory({
    required String plotCategory,
  }) {
    _plotCategory = plotCategory;
    notifyListeners();
  }

  void selectCalculator({
    required int selectedIndex,
  }) {
    _selectedIndex = selectedIndex;
    notifyListeners();
  }

  void getEMI({
    required double emi,
  }) {
    _emi = emi;
    notifyListeners();
  }

  void getLoanAmt({
    required double loanAmount,
  }) {
    _loanAmount = loanAmount;
    notifyListeners();
  }

  ///
  bool _foreclosureCheck = false;
  bool get foreclosureCheck => _foreclosureCheck;
  void getForeclosureCheck({
    required bool foreclosureCheck,
  }) {
    _foreclosureCheck = foreclosureCheck;
    notifyListeners();
  }

  ///
  int _isShortListed = 0;
  int get isShortListed => _isShortListed;
  void shortListed({
    required int isShortListed,
  }) {
    _isShortListed = isShortListed;
    notifyListeners();
  }

  ///
  int _loanIndex = 0;
  int get loanIndex => _loanIndex;
  void selectedLoanType({
    required int loanIndex,
  }) {
    _loanIndex = loanIndex;
    notifyListeners();
  }

  ///
  int _genderIndex = 0;
  int get genderIndex => _genderIndex;
  void selectedGender({
    required int genderIndex,
  }) {
    _genderIndex = genderIndex;
    notifyListeners();
  }

  ///
  int _employmentIndex = 0;
  int get employmentIndex => _employmentIndex;
  void selectedEmployment({
    required int employmentIndex,
  }) {
    _employmentIndex = employmentIndex;
    notifyListeners();
  }

  ///
  int _csIndex = 0;
  int get csIndex => _csIndex;
  void creditScore({
    required int csIndex,
  }) {
    _csIndex = csIndex;
    notifyListeners();
  }

  ///
  int _caIndex = 0;
  int get caIndex => _caIndex;
  void coApplicant({
    required int caIndex,
  }) {
    _caIndex = caIndex;
    notifyListeners();
  }

  ///
  DateTime _selectedLoanDate = DateTime.now();
  DateTime _selectedNewLoanDate = DateTime.now();
  DateTime get selectedLoanDate => _selectedLoanDate;
  DateTime get selectedNewLoanDate => _selectedNewLoanDate;
  void loanDate({
    required DateTime selectedLoanDate,
  }) {
    _selectedLoanDate = selectedLoanDate;
    notifyListeners();
  }

  void newLoanDate({
    required DateTime selectedNewLoanDate,
  }) {
    _selectedNewLoanDate = selectedNewLoanDate;
    notifyListeners();
  }
}

class OtpTimerProvider with ChangeNotifier {
  int _otpTimer = 60; // Timer duration in seconds
  Timer? _timer;
  bool _resendButtonEnabled = false;

  int get otpTimer => _otpTimer;
  bool get resendButtonEnabled => _resendButtonEnabled;

  OtpTimerProvider() {
    startTimer();
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_otpTimer > 0) {
        _otpTimer--;
      } else {
        _timer!.cancel();
        _resendButtonEnabled = true;
      }
      notifyListeners();
    });
  }

  void resendOTP() {
    _otpTimer = 60;
    _resendButtonEnabled = false;
    startTimer();
    notifyListeners();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}

///
class StepperProvider extends ChangeNotifier {
  StepperType _stepperType = StepperType.vertical;
  int _currentStep = 0;

  StepperType get stepperType => _stepperType;
  int get currentStep => _currentStep;

  void switchStepsType() {
    _stepperType = _stepperType == StepperType.vertical ? StepperType.horizontal : StepperType.vertical;
    notifyListeners();
  }

  void tapped(int step) {
    _currentStep = step;
    notifyListeners();
  }

  void continuedHomeLoan(BuildContext context, GlobalKey<FormState> formKey1, GlobalKey<FormState> formKey2, GlobalKey<FormState> formKey3) {
    if (_currentStep < 2) {
      if (_currentStep == 0) {
        if (formKey1.currentState!.validate()) {
          formKey1.currentState!.save();
          _currentStep += 1;
        }
      }
      if (_currentStep == 1) {
        if (formKey2.currentState!.validate()) {
          formKey2.currentState!.save();
          _currentStep += 1;
        }
      }
    } else {
      if (formKey3.currentState!.validate()) {
        formKey3.currentState!.save();
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ThankYouPage()),
        );
      }
    }
    notifyListeners();
  }

  void continuedMaterial() {
    if (_currentStep < 2) {
      _currentStep++;
      notifyListeners();
    }
  }

  void cancel() {
    if (_currentStep > 0) {
      _currentStep -= 1;
      notifyListeners();
    }
  }

  int _selectedPaymentMethod = 0;
  int _selectedWallet = 0;
  int get selectedPaymentMethod => _selectedPaymentMethod;
  int get selectedWallet => _selectedWallet;
  void paymentMethod(selectedPaymentMethod) {
    _selectedPaymentMethod = selectedPaymentMethod;
    notifyListeners();
  }

  void wallet(selectedPaymentMethod) {
    _selectedWallet = selectedWallet;
    notifyListeners();
  }
}

//
class ExpandedProvider extends ChangeNotifier {
  final List<ItemModel> _itemData = <ItemModel>[
    ItemModel(
      headerItem: faq1qText,
      description: faq1aText,
    ),
    ItemModel(
      headerItem: faq1qText,
      description: faq1aText,
    ),
    ItemModel(
      headerItem: faq1qText,
      description: faq1aText,
    ),
    ItemModel(
      headerItem: faq1qText,
      description: faq1aText,
    ),
  ];
  List<ItemModel> get itemData => _itemData;
  void isExpand(index) {
    _itemData[index].expanded = !_itemData[index].expanded;
    notifyListeners();
  }
}

class ItemModel {
  bool expanded;
  String? headerItem;
  String? description;

  ItemModel({
    this.expanded = false,
    this.headerItem,
    this.description,
  });
}

///
class SelectedTileProvider extends ChangeNotifier {
  int _selectedTile = -1;

  int get selectedTile => _selectedTile;

  void setSelectedTile(int index) {
    _selectedTile = index;
    notifyListeners();
  }

  void resetSelectedTile() {
    _selectedTile = -1;
    notifyListeners();
  }
}

class LoginPageProvider extends ChangeNotifier {
  Timer? _timer;
  int _seconds = 0;

  int get seconds => _seconds;

  void startTimer({bool reset = true}) {
    if (reset) {
      resetTimer();
    }
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (_) {
        if (_seconds > 0) {
          _seconds--;
          notifyListeners();
        } else {
          stopTimer(reset: false);
        }
      },
    );
  }

  void resetTimer() {
    _seconds = 60;
    notifyListeners();
  }

  void stopTimer({bool reset = true}) {
    if (reset) {
      resetTimer();
    }
    _timer?.cancel();
    notifyListeners();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  bool _phoneNumberVisible = true;
  bool _otpNumberVisible = false;
  bool get phoneNumberVisible => _phoneNumberVisible;
  bool get otpNumberVisible => _otpNumberVisible;
  void changeScreen({
    required bool phoneNumberVisible,
    required bool otpNumberVisible,
  }) {
    _phoneNumberVisible = phoneNumberVisible;
    _otpNumberVisible = otpNumberVisible;
    notifyListeners();
  }
}

class ProgressStateProvider extends ChangeNotifier {
  double _progress = 0.0;

  double get progress => _progress;

  void updateProgress(double newProgress) {
    _progress = newProgress;
    notifyListeners();
  }
}

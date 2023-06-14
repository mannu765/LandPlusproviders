import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';


class ScheduleServiceProvider extends ChangeNotifier{
  int selectedButtonIndex = 0;
  List<String> buttonNames = [];
  bool _showTimeSlots = false;
  bool _allTimeSlotsAvailable = true;
  int selectedSlotIndex = -1;
  bool _isTodaySelected = false; // Track if today button is selected
  bool _isNextDaySelected = false; // Track if next day button is selected
  bool _isOtherDaySelected = false;

  ScheduleServiceProvider(){
    updateButtonNames();
  }

  bool get showTimeSlots => _showTimeSlots;
  set showTimeSlots(bool value) {
    _showTimeSlots = value;
    notifyListeners();
  }
  bool get allTimeSlotsAvailable => _allTimeSlotsAvailable;
  set allTimeSlotsAvailable(bool value) {
    _allTimeSlotsAvailable = value;
    notifyListeners();
  }
   bool get isTodaySelected => _isTodaySelected;
  set isTodaySelected(bool value) {
    _isTodaySelected = value;
    notifyListeners();
  }
  bool get isNextDaySelected => _isNextDaySelected;
  set isNextDaySelected(bool value) {
    _isNextDaySelected = value;
    notifyListeners();
  }
  bool get isOtherDaySelected => _isOtherDaySelected;
  set isOtherDaySelected(bool value) {
    _isOtherDaySelected = value;
    notifyListeners();
  }


  void setSelectedSlotIndex(int index) {
    selectedSlotIndex = index;
    notifyListeners();
  }

  void setSelectedButtonIndex(int index) {
    selectedButtonIndex = index;
    updateButtonNames();
    notifyListeners();
  }

  void updateButtonNames() {
    final DateFormat dateFormat = DateFormat('EEE, dd');
    final DateTime now = DateTime.now();

    buttonNames = List.generate(4, (index) {
      final date = now.add(Duration(days: index));
      final formattedDate = dateFormat.format(date);
      return formattedDate;
    });
    notifyListeners();
  }
}
import 'package:flutter/foundation.dart';

import '../utils/strings.dart';

class SelectedItemsProvider extends ChangeNotifier {
  final List<Map<String, dynamic>> _selectedItems = [];
  bool _itemCountButtons = false;
  String _finalAmount = '';
  final List<String> _cart = [];

  String get finalAmount => _finalAmount;

  List<Map<String, dynamic>> get selectedItems => _selectedItems;
  List<String> get cart => _cart;



  bool get itemCountButtons => _itemCountButtons;


  set itemCountButtons(bool value) {
    _itemCountButtons = value;
    notifyListeners();
  }

  void addItem(Map<String, dynamic> item) {
    _selectedItems.add(item);
    print(_selectedItems);

    notifyListeners();
  }

  void updateQuantity(int index, int quantity) {
    _selectedItems[index][quantityText] = quantity;
    print(_selectedItems[index][costText]);
    // _selectedItems[index][costText] =  _selectedItems[index][quantityText] * _selectedItems[index][costText] ;
    print(_selectedItems[index][costText]);


    print(_selectedItems);
    notifyListeners();
  }


  void calculateTotalCost() {
    _cart.clear();
    int totalCost = 0;
    for (var item in selectedItems) {
      int quantity = item[quantityText];
      int cost = item[costText];
      totalCost += quantity * cost;
      _cart.add(item['name']);
    }


    _finalAmount = totalCost.toString();
    notifyListeners();
  }


  void removeItem(int index) {
    _selectedItems.removeAt(index);
    notifyListeners();
  }

  int getItemQuantity(String itemName) {
    int index = _selectedItems.indexWhere((item) => item['name'] == itemName);

    return index != -1 ? _selectedItems[index]['quantity'] : 0;
  }
}

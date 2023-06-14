import 'package:flutter/material.dart';
import 'package:landplush/utils/widgets.dart';

import '../model/my_model.dart';
import '../screen/home/construction_estimate/create_pdf.dart';
import '../utils/class_and_methods.dart';
import '../utils/strings.dart';

class ChoosePackageProvider extends ChangeNotifier {
  bool _isStandardPackage = true;
  bool _isPremiumPackage = false;
  bool _isLuxuryPackage = false;
  int _tappedIndex = 0;
  int _packageIndex = 0;
  String _selectedPackage = standardPackagesText;
  int _totalCost = 0;
  final List<MyCartModel> _civilCart = [];
  final int _counter = 0;
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  getStandardPackage() => _isStandardPackage;
  getPremiumPackage() => _isPremiumPackage;
  getLuxuryPackage() => _isLuxuryPackage;
  getSelectedPackage() => _selectedPackage;
  getTappedIndex() => _tappedIndex;
  getPackageIndex() => _packageIndex;
  getTotalCost() => _totalCost;
  getCivilCart() => _civilCart;
  getCounter() => _counter;
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  void onTapStandardPackage() {
    if (_isStandardPackage == false) {
      _selectedPackage = standardPackagesText;
      _packageIndex = 0;
      _isStandardPackage = true;
      _isPremiumPackage = false;
      _isLuxuryPackage = false;
      notifyListeners();
    }
  }

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  void onTapPremiumPackage() {
    if (_isPremiumPackage == false) {
      _selectedPackage = premiumPackagesText;
      _packageIndex = 1;
      _isPremiumPackage = true;
      _isStandardPackage = false;
      _isLuxuryPackage = false;
      notifyListeners();
    }
  }

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  void onTapLuxuryPackage() {
    if (_isLuxuryPackage == false) {
      _selectedPackage = luxuryPackagesText;
      _packageIndex = 2;
      _isLuxuryPackage = true;
      _isStandardPackage = false;
      _isPremiumPackage = false;
      notifyListeners();
    }
  }

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  void onTapListIndex(int index) {
    if (_tappedIndex != index) {
      _tappedIndex = index;
      notifyListeners();
    }
  }

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  void addToCivilCart(String productName, String productImage, int productPrice, int productCategory) {
    _totalCost = 0;
    _civilCart.removeWhere((e) {
      return e.productCategory == productCategory;
    });
    customPrint("this is remove");
    _civilCart.add(
      MyCartModel(
        productCategory: productCategory,
        productImage: productImage,
        productName: productName,
        productPrice: productPrice,
      ),
    );
    customPrint("this is add");
    getTotal();
    customPrint("this is cost $_totalCost");
    notifyListeners();
  }

  void removeFromCivilCart(String productName, String productImage, int productPrice, int productCategory) {
    _totalCost = 0;
    _civilCart.removeWhere((e) {
      return e.productName == productName;
    });
    customPrint("this is remove");
    getTotal();
    customPrint("this is cost $_totalCost");
    notifyListeners();
  }

  void onPressedSubmit(context, ConstructionEstimateModel myData) {
    checkSelectedItems(context, myData);
  }

  ///
  void checkSelectedItems(BuildContext context, ConstructionEstimateModel myData) {
    List<String> messages = [
      "Please select $heavyDutyRibbedText",
      "Please select $brickText",
      "Please select $dustText",
      "Please select $cementText",
      "Please select $roriText",
      "Please select sanitary 1",
      "Please select sanitary 2",
      "Please select sanitary 3",
      "Please select sanitary 4",
      "Please select sanitary 5",
      "Please select electric 1",
      "Please select electric 2",
      "Please select electric 3",
      "Please select electric 4",
      "Please select electric 5",
      "Please select wood 1",
      "Please select wood 2",
      "Please select wood 3",
      "Please select wood 4",
      "Please select wood 5",
      "Please select kitchen 1",
      "Please select kitchen 2",
      "Please select kitchen 3",
      "Please select kitchen 4",
      "Please select kitchen 5",
      "Please select flooring tiles 1",
      "Please select flooring tiles 2",
      "Please select flooring tiles 3",
      "Please select flooring tiles 4",
      "Please select flooring tiles 5",
      "Please select Glass Paint Polish 1",
      "Please select Glass Paint Polish 2",
      "Please select Glass Paint Polish 3",
      "Please select Glass Paint Polish 4",
      "Please select Glass Paint Polish 5",
    ];

    for (int i = 0; i < messages.length; i++) {
      if (i < 5) {
        if (!_civilCart.map((e) => e.productCategory).contains(i + 1)) {
          botToastWidget(title: messages[i]);
          return;
        }
      } else if (i < 10) {
        if (!_sanitaryCart.map((e) => e.productCategory).contains(i - 4)) {
          botToastWidget(title: messages[i]);
          return;
        }
      } else if (i < 15) {
        if (!_electricCart.map((e) => e.productCategory).contains(i - 9)) {
          botToastWidget(title: messages[i]);
          return;
        }
      } else if (i < 20) {
        if (!_woodCart.map((e) => e.productCategory).contains(i - 14)) {
          botToastWidget(title: messages[i]);
          return;
        }
      } else if (i < 25) {
        if (!_kitchenCart.map((e) => e.productCategory).contains(i - 19)) {
          botToastWidget(title: messages[i]);
          return;
        }
      } else if (i < 30) {
        if (!_flooringTilesCart.map((e) => e.productCategory).contains(i - 24)) {
          botToastWidget(title: messages[i]);
          return;
        }
      } else if (i < 35) {
        if (!_glassPaintCart.map((e) => e.productCategory).contains(i - 29)) {
          botToastWidget(title: messages[i]);
          return;
        }
      }
      if (i == 34) {
        gotoNextPageWidget(
          context: context,
          title: "",
          pageName: CreatePdf(
            myData: myData,
          ),
        );
      }
      customPrint(i);
    }
  }

  ///
  ///////////////////////////////////////////////////////////////////////////////////////////////
  ///Sanitary
  ///////////////////////////////////////////////////////////////////////////////////////////////
  int _sanitaryTappedIndex = 0;
  getSanitaryTappedIndex() => _sanitaryTappedIndex;
  final List<MyCartModel> _sanitaryCart = [];
  getSanitaryCart() => _sanitaryCart;
  void onTapSanitaryListIndex(int index) {
    if (_sanitaryTappedIndex != index) {
      _sanitaryTappedIndex = index;
      notifyListeners();
    }
  }

  void addToSanitaryCart(String productName, String productImage, int productPrice, int productCategory) {
    _totalCost = 0;
    _sanitaryCart.removeWhere((e) {
      return e.productCategory == productCategory;
    });
    customPrint("this is remove");
    _sanitaryCart.add(
      MyCartModel(
        productCategory: productCategory,
        productImage: productImage,
        productName: productName,
        productPrice: productPrice,
      ),
    );
    customPrint("this is add");
    getTotal();
    customPrint("this is cost $_totalCost");
    notifyListeners();
  }

  void removeFromSanitaryCart(String productName, String productImage, int productPrice, int productCategory) {
    _totalCost = 0;
    _sanitaryCart.removeWhere((e) {
      return e.productName == productName;
    });
    getTotal();
    customPrint("this is cost $_totalCost");
    notifyListeners();
  }

  ///////////////////////////////////////////////////////////////////////////////////////////////
  ///Electric
  ///////////////////////////////////////////////////////////////////////////////////////////////
  int _electricTappedIndex = 0;
  getElectricTappedIndex() => _electricTappedIndex;
  final List<MyCartModel> _electricCart = [];
  getElectricCart() => _electricCart;
  void onTapElectricListIndex(int index) {
    if (_electricTappedIndex != index) {
      _electricTappedIndex = index;
      notifyListeners();
    }
  }

  void addToElectricCart(String productName, String productImage, int productPrice, int productCategory) {
    _totalCost = 0;
    _electricCart.removeWhere((e) {
      return e.productCategory == productCategory;
    });
    customPrint("this is remove");
    _electricCart.add(
      MyCartModel(
        productCategory: productCategory,
        productImage: productImage,
        productName: productName,
        productPrice: productPrice,
      ),
    );
    customPrint("this is add");
    getTotal();
    customPrint("this is cost $_totalCost");
    notifyListeners();
  }

  void removeFromElectricCart(String productName, String productImage, int productPrice, int productCategory) {
    _totalCost = 0;
    _electricCart.removeWhere((e) {
      return e.productName == productName;
    });
    getTotal();
    customPrint("this is cost $_totalCost");
    notifyListeners();
  }

  ///////////////////////////////////////////////////////////////////////////////////////////////
  ///Wood
  ///////////////////////////////////////////////////////////////////////////////////////////////
  int _woodTappedIndex = 0;
  getWoodTappedIndex() => _woodTappedIndex;
  final List<MyCartModel> _woodCart = [];
  getWoodCart() => _woodCart;
  void onTapWoodListIndex(int index) {
    if (_woodTappedIndex != index) {
      _woodTappedIndex = index;
      notifyListeners();
    }
  }

  void addToWoodCart(String productName, String productImage, int productPrice, int productCategory) {
    _totalCost = 0;
    _woodCart.removeWhere((e) {
      return e.productCategory == productCategory;
    });
    customPrint("this is remove");
    _woodCart.add(
      MyCartModel(
        productCategory: productCategory,
        productImage: productImage,
        productName: productName,
        productPrice: productPrice,
      ),
    );
    customPrint("this is add");
    getTotal();
    customPrint("this is cost $_totalCost");
    notifyListeners();
  }

  void removeFromWoodCart(String productName, String productImage, int productPrice, int productCategory) {
    _totalCost = 0;
    _woodCart.removeWhere((e) {
      return e.productName == productName;
    });
    getTotal();
    customPrint("this is cost $_totalCost");
    notifyListeners();
  }

///////////////////////////////////////////////////////////////////////////////////////////////
  ///Kitchen
  ///////////////////////////////////////////////////////////////////////////////////////////////
  int _kitchenTappedIndex = 0;
  getKitchenTappedIndex() => _kitchenTappedIndex;
  final List<MyCartModel> _kitchenCart = [];
  getKitchenCart() => _kitchenCart;
  void onTapKitchenListIndex(int index) {
    if (_kitchenTappedIndex != index) {
      _kitchenTappedIndex = index;
      notifyListeners();
    }
  }

  void addToKitchenCart(String productName, String productImage, int productPrice, int productCategory) {
    _totalCost = 0;
    _kitchenCart.removeWhere((e) {
      return e.productCategory == productCategory;
    });
    customPrint("this is remove");
    _kitchenCart.add(
      MyCartModel(
        productCategory: productCategory,
        productImage: productImage,
        productName: productName,
        productPrice: productPrice,
      ),
    );
    customPrint("this is add");
    getTotal();
    customPrint("this is cost $_totalCost");
    notifyListeners();
  }

  void removeFromKitchenCart(String productName, String productImage, int productPrice, int productCategory) {
    _totalCost = 0;
    _kitchenCart.removeWhere((e) {
      return e.productName == productName;
    });
    getTotal();
    customPrint("this is cost $_totalCost");
    notifyListeners();
  }

  ///////////////////////////////////////////////////////////////////////////////////////////////
  ///Mixture
  ///////////////////////////////////////////////////////////////////////////////////////////////
  int _mixtureTappedIndex = 0;
  getMixtureTappedIndex() => _mixtureTappedIndex;
  final List<MyCartModel> _mixtureCart = [];
  getMixtureCart() => _mixtureCart;
  void onTapMixtureListIndex(int index) {
    if (_mixtureTappedIndex != index) {
      _mixtureTappedIndex = index;
      notifyListeners();
    }
  }

  void addToMixtureCart(String productName, String productImage, int productPrice, int productCategory) {
    _totalCost = 0;
    _mixtureCart.removeWhere((e) {
      return e.productCategory == productCategory;
    });
    customPrint("this is remove");
    _mixtureCart.add(
      MyCartModel(
        productCategory: productCategory,
        productImage: productImage,
        productName: productName,
        productPrice: productPrice,
      ),
    );
    customPrint("this is add");
    getTotal();
    customPrint("this is cost $_totalCost");
    notifyListeners();
  }

  void removeFromMixtureCart(String productName, String productImage, int productPrice, int productCategory) {
    _totalCost = 0;
    _mixtureCart.removeWhere((e) {
      return e.productName == productName;
    });
    getTotal();
    customPrint("this is cost $_totalCost");
    notifyListeners();
  }

  ///////////////////////////////////////////////////////////////////////////////////////////////
  ///FlooringTiles
  ///////////////////////////////////////////////////////////////////////////////////////////////
  int _flooringTilesTappedIndex = 0;
  getFlooringTilesTappedIndex() => _flooringTilesTappedIndex;
  final List<MyCartModel> _flooringTilesCart = [];
  getFlooringTilesCart() => _flooringTilesCart;
  void onTapFlooringTilesListIndex(int index) {
    if (_flooringTilesTappedIndex != index) {
      _flooringTilesTappedIndex = index;
      notifyListeners();
    }
  }

  void addToFlooringTilesCart(String productName, String productImage, int productPrice, int productCategory) {
    _totalCost = 0;
    _flooringTilesCart.removeWhere((e) {
      return e.productCategory == productCategory;
    });
    customPrint("this is remove");
    _flooringTilesCart.add(
      MyCartModel(
        productCategory: productCategory,
        productImage: productImage,
        productName: productName,
        productPrice: productPrice,
      ),
    );
    customPrint("this is add");
    getTotal();
    customPrint("this is cost $_totalCost");
    notifyListeners();
  }

  void removeFromFlooringTilesCart(String productName, String productImage, int productPrice, int productCategory) {
    _totalCost = 0;
    _flooringTilesCart.removeWhere((e) {
      return e.productName == productName;
    });
    getTotal();
    customPrint("this is cost $_totalCost");
    notifyListeners();
  }

///////////////////////////////////////////////////////////////////////////////////////////////
  ///Elevation
  ///////////////////////////////////////////////////////////////////////////////////////////////
  int _elevationTappedIndex = 0;
  getElevationTappedIndex() => _elevationTappedIndex;
  final List<MyCartModel> _elevationCart = [];
  getElevationCart() => _elevationCart;
  void onTapElevationListIndex(int index) {
    if (_elevationTappedIndex != index) {
      _elevationTappedIndex = index;
      notifyListeners();
    }
  }

  void addToElevationCart(String productName, String productImage, int productPrice, int productCategory) {
    _totalCost = 0;
    _elevationCart.removeWhere((e) {
      return e.productCategory == productCategory;
    });
    customPrint("this is remove");
    _elevationCart.add(
      MyCartModel(
        productCategory: productCategory,
        productImage: productImage,
        productName: productName,
        productPrice: productPrice,
      ),
    );
    customPrint("this is add");
    getTotal();
    customPrint("this is cost $_totalCost");
    notifyListeners();
  }

  void removeFromElevationCart(String productName, String productImage, int productPrice, int productCategory) {
    _totalCost = 0;
    _elevationCart.removeWhere((e) {
      return e.productName == productName;
    });
    getTotal();
    customPrint("this is cost $_totalCost");
    notifyListeners();
  }

  ///////////////////////////////////////////////////////////////////////////////////////////////
  ///GlassPaint
  ///////////////////////////////////////////////////////////////////////////////////////////////
  int _glassPaintTappedIndex = 0;
  getGlassPaintTappedIndex() => _glassPaintTappedIndex;
  final List<MyCartModel> _glassPaintCart = [];
  getGlassPaintCart() => _glassPaintCart;
  void onTapGlassPaintListIndex(int index) {
    if (_glassPaintTappedIndex != index) {
      _glassPaintTappedIndex = index;
      notifyListeners();
    }
  }

  void addToGlassPaintCart(String productName, String productImage, int productPrice, int productCategory) {
    _totalCost = 0;
    _glassPaintCart.removeWhere((e) {
      return e.productCategory == productCategory;
    });
    customPrint("this is remove");
    _glassPaintCart.add(
      MyCartModel(
        productCategory: productCategory,
        productImage: productImage,
        productName: productName,
        productPrice: productPrice,
      ),
    );
    customPrint("this is add");
    getTotal();
    customPrint("this is cost $_totalCost");
    notifyListeners();
  }

  void removeFromGlassPaintCart(String productName, String productImage, int productPrice, int productCategory) {
    _totalCost = 0;
    _glassPaintCart.removeWhere((e) {
      return e.productName == productName;
    });
    getTotal();
    customPrint("this is cost $_totalCost");
    notifyListeners();
  }

  ///////////////////////////////////////////////////////////////////////////////////////////////
  ///Lift
  ///////////////////////////////////////////////////////////////////////////////////////////////
  int _liftTappedIndex = 0;
  getLiftTappedIndex() => _liftTappedIndex;
  final List<MyCartModel> _liftCart = [];
  getLiftCart() => _liftCart;
  void onTapLiftListIndex(int index) {
    if (_liftTappedIndex != index) {
      _liftTappedIndex = index;
      notifyListeners();
    }
  }

  void addToLiftCart(String productName, String productImage, int productPrice, int productCategory) {
    _totalCost = 0;
    _liftCart.removeWhere((e) {
      return e.productCategory == productCategory;
    });
    customPrint("this is remove");
    _liftCart.add(
      MyCartModel(
        productCategory: productCategory,
        productImage: productImage,
        productName: productName,
        productPrice: productPrice,
      ),
    );
    customPrint("this is add");
    getTotal();
    customPrint("this is cost $_totalCost");
    notifyListeners();
  }

  void removeFromLiftCart(String productName, String productImage, int productPrice, int productCategory) {
    _totalCost = 0;
    _liftCart.removeWhere((e) {
      return e.productName == productName;
    });
    getTotal();
    customPrint("this is cost $_totalCost");
    notifyListeners();
  }

  ///////////////////////////////////////////////////////////////////////////////////////////////////
  getTotal() {
    civilSpecificationTotal();
    sanitarySpecificationTotal();
    electricSpecificationTotal();
    woodSpecificationTotal();
    kitchenSpecificationTotal();
    // mixtureSpecificationTotal();
    flooringTilesSpecificationTotal();
    // elevationSpecificationTotal();
    glassPaintSpecificationTotal();
    // liftSpecificationTotal();
  }

  civilSpecificationTotal() {
    for (int value in _civilCart.map((e) => e.productPrice!)) {
      _totalCost += value;
    }
  }

  sanitarySpecificationTotal() {
    for (int value in _sanitaryCart.map((e) => e.productPrice!)) {
      _totalCost += value;
    }
  }

  electricSpecificationTotal() {
    for (int value in _electricCart.map((e) => e.productPrice!)) {
      _totalCost += value;
    }
  }

  woodSpecificationTotal() {
    for (int value in _woodCart.map((e) => e.productPrice!)) {
      _totalCost += value;
    }
  }

  kitchenSpecificationTotal() {
    for (int value in _kitchenCart.map((e) => e.productPrice!)) {
      _totalCost += value;
    }
  }

  mixtureSpecificationTotal() {
    for (int value in _mixtureCart.map((e) => e.productPrice!)) {
      _totalCost += value;
    }
  }

  flooringTilesSpecificationTotal() {
    for (int value in _flooringTilesCart.map((e) => e.productPrice!)) {
      _totalCost += value;
    }
  }

  elevationSpecificationTotal() {
    for (int value in _elevationCart.map((e) => e.productPrice!)) {
      _totalCost += value;
    }
  }

  glassPaintSpecificationTotal() {
    for (int value in _glassPaintCart.map((e) => e.productPrice!)) {
      _totalCost += value;
    }
  }

  liftSpecificationTotal() {
    for (int value in _liftCart.map((e) => e.productPrice!)) {
      _totalCost += value;
    }
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../utils/colors.dart';
import '../utils/images.dart';
import '../utils/strings.dart';
import '../utils/style.dart';
import '../utils/widgets.dart';

class MaterialOrderNotify extends ChangeNotifier {
  List<MaterialOrder> items = [];

  void addOrder(MaterialOrder materialOrder) {
    // check list materialList in item
    final i = items.indexWhere((e) => e.materialList == materialOrder.materialList);
    if (i > -1) {
      items[i].qty += materialOrder.qty;
    } else {
      items.add(materialOrder);
      customPrint(items.length);
    }
    notifyListeners();
  }

  removeOrder(o) {
    items.remove(o);
    notifyListeners();
  }

  decrementQty(materialOrder) {
    final i = items.indexWhere((e) => e.materialList == materialOrder.materialList);
    if (items[i].qty == 1) {
      removeOrder(materialOrder);
    } else {
      items[i].qty -= 1;
      notifyListeners();
    }
  }

  incrementQty(materialOrder) {
    items[items.indexOf(materialOrder)].qty += 1;
    notifyListeners();
  }
}

///

class MaterialOrder {
  MaterialList materialList;
  int qty = 1;
  double price;

  MaterialOrder({required this.materialList, required this.qty, required this.price});
}

class MaterialList {
  int id;
  String productName;
  String productImage;
  String productModel;
  double productPrice;
  String productMRP;
  String type;
  String discount;
  String warrantyPolicyText;
  String returnsText;
  String dimensionText;
  String wattageText;
  String noOfBladesText;
  String baseMaterialText;
  String colourFamilyText;
  String typeText;
  String productTypeText;
  String productLineText;
  String brandText;
  String seriesText;
  String uomText;
  String countryOfOriginText;
  String manufacturerImporterNameText;
  String manufacturerImporterAddressText;

  MaterialList({
    required this.id,
    required this.productName,
    required this.productImage,
    required this.productModel,
    required this.productPrice,
    required this.productMRP,
    required this.type,
    required this.discount,
    required this.warrantyPolicyText,
    required this.returnsText,
    required this.dimensionText,
    required this.wattageText,
    required this.noOfBladesText,
    required this.baseMaterialText,
    required this.colourFamilyText,
    required this.typeText,
    required this.productTypeText,
    required this.productLineText,
    required this.brandText,
    required this.seriesText,
    required this.uomText,
    required this.countryOfOriginText,
    required this.manufacturerImporterNameText,
    required this.manufacturerImporterAddressText,
  });
}

List<MaterialList> items = [
  MaterialList(
    id: 1,
    productImage: fanImg,
    productName: "HAVELLS FAN ANDRIA INDIGO BLUE 1200MM",
    productModel: "FHCWTSTWCC48",
    productPrice: 2176.75,
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
  ),
  MaterialList(
    id: 2,
    productImage: fan2Img,
    productName: "HAVELLS 1250 MM FAN STEALTH WOOD WALNUT-COLA CHR",
    productModel: "FHCWTSTWCC48",
    productPrice: 8176.75,
    productMRP: "₹13020.00",
    type: "SHACKLE TYPE (HOOK)",
    discount: "10% OFF",
    warrantyPolicyText: "The warranty applicable on this product is valid for 12 MONTHS from date of purchase. Subject to Manufacturer’s policy. For more details, please call at +91 93110 35035",
    returnsText: 'The article is non - returnable',
    dimensionText: '1100 mm',
    wattageText: '70 WATT',
    noOfBladesText: "3",
    baseMaterialText: "ALUMINIUM",
    colourFamilyText: "Brown",
    typeText: "SHACKLE TYPE (HOOK)",
    productTypeText: "DECORATIVE",
    productLineText: "CEILING",
    brandText: "HAVELLS",
    seriesText: "CEILING FAN",
    uomText: "PCE",
    countryOfOriginText: "India",
    manufacturerImporterNameText: "HAVELLS INDIA LIMITED",
    manufacturerImporterAddressText: "Plot No.6,Site 4,Industrial Area,Sahibabad, Sahibabad, Ghaziabad, UP, 201010",
  ),
];

///
class AddToCartWidget extends StatelessWidget {
  MaterialList materialList;
  AddToCartWidget(this.materialList, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: GestureDetector(
            onTap: () {
              var o = MaterialOrder(materialList: materialList, qty: 1, price: materialList.productPrice);
              context.read<MaterialOrderNotify>().addOrder(o);
            },
            child: Container(
              decoration: BoxDecoration(
                color: blackColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  addToCartText,
                  textAlign: TextAlign.center,
                  style: btnTextStyle,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

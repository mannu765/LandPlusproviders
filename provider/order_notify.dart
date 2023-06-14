import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../screen/home_services/quick_booking.dart';
import '../utils/class_and_methods.dart';
import '../utils/colors.dart';
import '../utils/strings.dart';
import '../utils/style.dart';
import '../utils/variable.dart';
import '../utils/widgets.dart';
import '../widget/appbar.dart';
import '../widget/button.dart';
import 'custom_provider.dart';

class OrderNotify extends ChangeNotifier {
  List<Order> items = [];
  List totalItemsPriceList = [];

  void addOrder(Order order) {
    // check list quickBookingList in item
    final i = items.indexWhere((e) => e.quickBookingList == order.quickBookingList);

    if (i > -1) {
      items[i].qty += order.qty;
    } else {
      items.add(order);
      totalItemsPriceList.add(order.price);
      getItemsTotalPrice();
    }
    notifyListeners();
  }

  removeOrder(o) {
    items.remove(o);
    notifyListeners();
  }

  decrementQty(order) {
    final i = items.indexWhere((e) => e.quickBookingList == order.quickBookingList);
    if (items[i].qty == 1) {
      removeOrder(order);
      totalItemsPriceList.remove(totalItemsPriceList[i]);
      getItemsTotalPrice();
    } else {
      items[i].qty -= 1;
      totalItemsPriceList[i] = items[i].price * items[i].qty;
      getItemsTotalPrice();

      notifyListeners();
    }
  }

  incrementQty(order) {
    items[items.indexOf(order)].qty += 1;
    totalItemsPriceList[items.indexOf(order)] = items[items.indexOf(order)].price * items[items.indexOf(order)].qty;
    getItemsTotalPrice();
    notifyListeners();
  }

  /// getItemsTotalPrice
  getItemsTotalPrice() {
    totalItemsPrice = 0;
    for (int i = 0; i < totalItemsPriceList.length; i++) {
      totalItemsPrice = totalItemsPrice + totalItemsPriceList[i];
    }
  }

  ///
  bool _isChecked = false;
  bool get isChecked => _isChecked;
  void avoidCalling(value) {
    _isChecked = value;
    notifyListeners();
  }
}

///

class Order {
  QuickBookingList quickBookingList;
  int qty = 1;
  double price;

  Order({required this.quickBookingList, required this.qty, required this.price});
}

class QuickBookingList {
  int id;
  String title;
  String image;
  String rating;
  String time;
  String desc;
  double price;

  QuickBookingList({
    required this.id,
    required this.title,
    required this.image,
    required this.rating,
    required this.time,
    required this.price,
    required this.desc,
  });
}

class OrderCard extends StatelessWidget {
  Order order;

  OrderCard(this.order, {super.key});
  @override
  Widget build(BuildContext context) {
    final po = Provider.of<OrderNotify>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 2,
          child: Text(
            order.quickBookingList.title,
            style: productTitleTextStyle,
          ),
        ),
        Expanded(
          flex: 2,
          child: SizedBox(
            height: height! * 0.05,
            width: height! * 0.18,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  child: Container(
                    padding: const EdgeInsets.all(5.0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Colors.black,
                    ),
                    child: const Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),

                  // onTap: widget.onTapRemove,
                  onTap: () {
                    po.decrementQty(order);
                  },
                ),
                const SizedBox(width: 15),
                Text(
                  order.qty.toString(),
                  style: btnTextStyle.copyWith(color: blackColor),
                ),
                const SizedBox(width: 15),
                GestureDetector(
                  child: Container(
                    padding: const EdgeInsets.all(5.0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Colors.black,
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    po.incrementQty(order);
                  },
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            rsText + (order.qty * order.price).toString(),
            style: priceTextStyle.copyWith(color: appColorTheme, fontSize: 18),
            textAlign: TextAlign.right,
          ),
        ),
      ],
    );
  }
}

class ScreenOrder extends StatelessWidget {
  const ScreenOrder({super.key});

  @override
  Widget build(BuildContext context) {
    final order = Provider.of<OrderNotify>(context);
    return Scaffold(
      //backgroundColor: whiteColor,
      appBar: mainAppbarWidget(
        leading: backBtn(context: context),
        context: context,
        pageTitle: myOrderText,
        actions: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                order.items.length.toString(),
                style: appBarTextStyle,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                trailing: const Icon(
                  Icons.offline_bolt_rounded,
                  color: Colors.teal,
                  size: 30,
                ),
                title: Text(
                  "Your saving total ${rsText}892 on this order!",
                  style: productTitleTextStyle,
                ),
              ),
              customDivider,
              const SizedBox(
                height: 15,
              ),
              ListView(
                shrinkWrap: true,
                children: order.items
                    .map(
                      (e) => Dismissible(
                        direction: DismissDirection.endToStart,
                        onDismissed: (dir) {
                          order.removeOrder(e);
                        },
                        background: Container(
                          color: Colors.red,
                          padding: const EdgeInsets.only(right: 8),
                          child: const Align(
                            alignment: Alignment.centerRight,
                            child: Icon(
                              Icons.delete,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        key: Key(UniqueKey().toString()),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 5,
                          ),
                          child: OrderCard(e),
                        ),
                      ),
                    )
                    .toList(),
              ),
              customDivider,
              const SizedBox(
                height: 15,
              ),
              boldTitleTextWidget(
                title: deliveryInstructionText,
              ),
              CheckboxListTile(
                contentPadding: EdgeInsets.zero,
                activeColor: appColorTheme,
                checkboxShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                title: Text(avoidCallingText, style: productTitleTextStyle),
                value: order.isChecked,
                onChanged: (value) {
                  order.avoidCalling(value);
                },
              ),
              const SizedBox(
                height: 15,
              ),
              customDivider,
              const SizedBox(
                height: 15,
              ),
              boldTitleTextWidget(
                title: paymentSummaryText,
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(itemTotalText, style: productTitleTextStyle),
                  Text("$rsText${totalItemsPrice}", style: productTitleTextStyle.copyWith(color: greyColor)),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    minOrderFeeText,
                    style: productTitleTextStyle,
                  ),
                  Text(
                    freeText,
                    style: productTitleTextStyle.copyWith(color: greyColor),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    taxesAndFeeText,
                    style: productTitleTextStyle,
                  ),
                  Text(
                    "$rsText $taxFee",
                    style: productTitleTextStyle.copyWith(color: greyColor),
                  ),
                ],
              ),
              customDivider,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    totalText,
                    style: productTitleTextStyle,
                  ),
                  Text(
                    "$rsText ${totalItemsPrice + taxFee}",
                    style: productTitleTextStyle.copyWith(color: greyColor),
                  ),
                ],
              ),
              bottomSpace(),
              GestureDetector(
                onTap: () {
                  botToastWidget(title: paymentText);
                },
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: colorPrimary,
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          paymentText,
                          style: mainBtnTextStyle,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              bottomSpace(),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  QuickBookingList quickBookingList;
  ProductCard(this.quickBookingList);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: GestureDetector(
        onTap: () {
          bottomSheetWidget(context: context);
        },
        child: Container(
          decoration: BoxDecoration(
            color: greyColor.shade100,
            borderRadius: BorderRadius.circular(10),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 15),
          height: height! * 0.3,
          width: width! * 0.8,
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(quickBookingList.title, style: productTitleTextStyle),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  size: 15,
                                ),
                                Text(
                                  quickBookingList.rating,
                                  style: productTitleTextStyle.copyWith(color: greyColor),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Row(
                              children: [
                                Text(
                                  rsText,
                                  style: productTitleTextStyle,
                                ),
                                Text(
                                  quickBookingList.price.toString(),
                                  style: productTitleTextStyle,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    quickBookingList.time.toString(),
                                    style: productTitleTextStyle.copyWith(
                                      color: greyColor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          customDivider,
                          Text(
                            quickBookingList.desc,
                            style: productTitleTextStyle.copyWith(color: greyColor, fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width! * 0.05,
                  ),
                  Container(
                    height: height! * 0.20,
                    width: height! * 0.20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: AssetImage(quickBookingList.image),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              ButtonBar(
                overflowDirection: VerticalDirection.down,
                alignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      bottomSheetWidget(context: context);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: appColorTheme,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          viewDetailsText,
                          textAlign: TextAlign.center,
                          style: btnTextStyle,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      var o = Order(quickBookingList: quickBookingList, qty: 1, price: quickBookingList.price);
                      context.read<OrderNotify>().addOrder(o);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: blackColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          addToCartText,
                          textAlign: TextAlign.center,
                          style: btnTextStyle,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

///

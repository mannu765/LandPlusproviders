import 'package:flutter/material.dart';
import 'package:landplush/utils/colors.dart';
import 'package:provider/provider.dart';

import '../utils/style.dart';
import '../utils/variable.dart';
import '../utils/widgets.dart';

class MyCounter with ChangeNotifier {
  int _counter = 0;
  int _totalAmt = 0;
  final int _itemAmt = 599;
  int _totalAmtWithTax = 0;
  final int _tax = 69;

  getItemAmt() => _itemAmt;
  getCounter() => _counter;
  setCounter(int counter) => _counter = counter;
  getTotal() => _totalAmt;
  setTotal(int totalAmt) => _totalAmt = totalAmt;
  getTax() => _totalAmtWithTax;
  setTax(int totalAmtWithTax) => _totalAmtWithTax = totalAmtWithTax;

  void incrementCounter() {
    _totalAmt = _totalAmt + _itemAmt;
    _totalAmtWithTax = _tax + _totalAmt;
    _counter++;
    notifyListeners();
  }

  void decrementCounter() {
    _totalAmt = _totalAmt - _itemAmt;
    _totalAmtWithTax = _tax + _totalAmt;
    _counter--;
    notifyListeners();
  }

  void reset() {
    _totalAmt = 0;
    _counter = 0;
    _totalAmtWithTax = 0;
    notifyListeners();
  }
}

/// counter
class CounterBtnWidget extends StatefulWidget {
  final Function()? onTapRemove;
  final Function()? onTapAdd;
  final int itemCounter;
  const CounterBtnWidget({super.key, required this.onTapRemove, required this.onTapAdd, required this.itemCounter});

  @override
  CounterBtnWidgetState createState() => CounterBtnWidgetState();
}

class CounterBtnWidgetState extends State<CounterBtnWidget> {
  @override
  Widget build(BuildContext context) {
    final counterModel = Provider.of<MyCounter>(context);
    return SizedBox(
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
            onTap: () {
              if (counterModel.getCounter() <= 1) {
                counterModel.reset();
              } else {
                counterModel.decrementCounter();
              }
              customPrint("this is total items in cart : ${counterModel.getCounter()}");
            },
          ),
          const SizedBox(width: 15),
          Text(
            '${counterModel.getCounter()}',
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
              counterModel.incrementCounter();
              customPrint("this is total items in cart : ${counterModel.getCounter()}");
            },
          ),
        ],
      ),
    );
  }
}

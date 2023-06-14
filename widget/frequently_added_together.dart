import 'package:flutter/material.dart';
import 'package:landplush/widget/button.dart';
import 'package:provider/provider.dart';

import '../provider/counter.dart';
import '../utils/colors.dart';
import '../utils/images.dart';
import '../utils/strings.dart';
import '../utils/style.dart';
import '../utils/variable.dart';

class FATogether extends StatefulWidget {
  const FATogether({Key? key}) : super(key: key);

  @override
  State<FATogether> createState() => _FATogetherState();
}

class _FATogetherState extends State<FATogether> {
  @override
  Widget build(BuildContext context) {
    final counterModel = Provider.of<MyCounter>(context);

    return SizedBox(
      height: width! > 500 ? height! * 0.35 : height! * 0.40,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Container(
                width: width! * 0.5,
                decoration: BoxDecoration(
                  color: greyColor.shade100,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: height! * 0.2,
                      decoration: BoxDecoration(
                        color: appColorTheme,
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: AssetImage(tv1Img),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Text(
                              qb1Text,
                              style: productTitleTextStyle,
                            ),
                          ),
                          Text(
                            "$rsText${counterModel.getItemAmt().toString()}",
                            style: productSubtitleTextStyle,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          addBtnWidget(
                            onPressed: () {},
                            btnTitle: addText,
                            btnColor: blackColor.withOpacity(0.8),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

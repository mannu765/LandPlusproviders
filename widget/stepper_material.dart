import 'package:flutter/material.dart';
import 'package:landplush/screen/materials/material_details.dart';
import 'package:landplush/utils/colors.dart';
import 'package:landplush/utils/strings.dart';
import 'package:provider/provider.dart';

import '../provider/custom_provider.dart';
import '../utils/lists.dart';
import '../utils/style.dart';
import '../utils/variable.dart';
import '../utils/widgets.dart';
import 'appbar.dart';
import 'button.dart';
import 'dropdown.dart';

class StepperMaterial extends StatefulWidget {
  final int productIndex;
  const StepperMaterial({super.key, required this.productIndex});
  @override
  State<StepperMaterial> createState() => _StepperMaterialState();
}

class _StepperMaterialState extends State<StepperMaterial> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => StepperProvider(),
      child: Consumer<StepperProvider>(
        builder: (context, stepperProvider, _) {
          return Scaffold(
            //backgroundColor: whiteColor,
            appBar: mainAppbarWidget(
              leading: backBtn(context: context),
              context: context,
              pageTitle: shareYourRequirementsHereText,
              actions: [
                const DeliveryDropdown(),
                cartIconBtn(context: context),
                profileIconBtn(context: context),
              ],
            ),
            body: Column(
              children: [
                Expanded(
                  child: Theme(
                    data: ThemeData(
                      canvasColor: whiteColor,
                      colorScheme: const ColorScheme.light(
                        primary: appColorTheme,
                      ),
                    ),
                    child: Stepper(
                      elevation: 20,
                      type: stepperProvider.stepperType,
                      physics: const ScrollPhysics(),
                      currentStep: stepperProvider.currentStep,
                      onStepTapped: (step) => stepperProvider.tapped(step),
                      onStepContinue: () => stepperProvider.continuedMaterial(),
                      onStepCancel: () => stepperProvider.cancel(),
                      steps: <Step>[
                        Step(
                          title: const Text(myCartText),
                          content: Column(
                            children: <Widget>[
                              iconWithTitleSubtitleWidget(
                                title: deliverToText,
                                subtitle: deliverToVText,
                              ),
                              spaceBtwText(),
                              MyCartImgWidget(imageName: productDetailsList[widget.productIndex]["productImage"]),
                              customDivider,
                              const PriceDetails(),
                            ],
                          ),
                          isActive: stepperProvider.currentStep >= 0,
                          state: stepperProvider.currentStep >= 0 ? StepState.complete : StepState.disabled,
                        ),
                        Step(
                          title: const Text(deliveryText),
                          content: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              deliveryAddressWidget(),
                              spaceBtwText(),
                              billingAddressWidget(),
                              spaceBtwText(),
                              const PriceDetails(),
                            ],
                          ),
                          isActive: stepperProvider.currentStep >= 0,
                          state: stepperProvider.currentStep >= 1 ? StepState.complete : StepState.disabled,
                        ),
                        Step(
                          title: const Text(paymentText),
                          content: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              landPlusWallet(),
                              spaceBtwText(),
                              paymentMethod(),
                              spaceBtwText(),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 20, top: 10),
                                child: Text(
                                  textAlign: TextAlign.left,
                                  paymentNoticeText,
                                  style: productTitleTextStyle,
                                ),
                              ),
                              spaceBtwText(),
                              const PriceDetails(),
                            ],
                          ),
                          isActive: stepperProvider.currentStep >= 0,
                          state: stepperProvider.currentStep >= 2 ? StepState.complete : StepState.disabled,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  ///
  Widget deliveryAddressWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          deliveryAddressText,
          textAlign: TextAlign.start,
          style: productTitleTextStyle,
        ),
        spaceBtwText(),
        Text(
          "Delivery available at 110001 DELHI",
          textAlign: TextAlign.start,
          style: productTitleTextStyle.copyWith(color: appColorTheme),
        ),
        spaceBtwText(),
        Container(
          decoration: BoxDecoration(
            color: greyColor.shade100,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: addressText,
                        style: productTitleTextStyle,
                      ),
                      TextSpan(
                        text: demoAddressText,
                        style: productTitleTextStyle.copyWith(color: greyColor),
                      ),
                    ],
                  ),
                ),
                spaceBtwText(),
                RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: moNumberText,
                        style: productTitleTextStyle,
                      ),
                      TextSpan(
                        text: mobileNumber,
                        style: productTitleTextStyle.copyWith(color: greyColor),
                      ),
                    ],
                  ),
                ),
                customDivider,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    btnWidget(color: appColorTheme, title: editCurrentAddressText),
                    btnWidget(color: blackColor, title: changeAddressText),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget billingAddressWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          billingAddressText,
          textAlign: TextAlign.start,
          style: productTitleTextStyle,
        ),
        spaceBtwText(),
        Container(
          decoration: BoxDecoration(
            color: greyColor.shade100,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: addressText,
                        style: productTitleTextStyle,
                      ),
                      TextSpan(
                        text: demoAddressText,
                        style: productTitleTextStyle.copyWith(color: greyColor),
                      ),
                    ],
                  ),
                ),
                spaceBtwText(),
                RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: moNumberText,
                        style: productTitleTextStyle,
                      ),
                      TextSpan(
                        text: mobileNumber,
                        style: productTitleTextStyle.copyWith(color: greyColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget btnWidget({required String title, required Color color}) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          title,
          style: btnTextStyle,
        ),
      ),
    );
  }

  Widget paymentMethod() {
    var provider = Provider.of<StepperProvider>(context);

    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(color: greyColor.shade100),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Text(
                  selectPaymentMethodText,
                  style: productTitleTextStyle,
                ),
              ],
            ),
            SizedBox(
              height: height! * 0.02,
            ),
            RadioListTile(
              dense: true,
              contentPadding: EdgeInsets.zero,
              toggleable: true,
              value: 1,
              groupValue: provider.selectedPaymentMethod,
              title: Text(
                onlinePaymentText,
                style: productTitleTextStyle.copyWith(color: greyColor),
              ),
              onChanged: (val) {
                provider.paymentMethod(val);
              },
              activeColor: appColorTheme,
              selected: true,
            ),
          ],
        ),
      ),
    );
  }

  Widget landPlusWallet() {
    var provider = Provider.of<StepperProvider>(context);

    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(color: greyColor.shade100),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Text(
                  landPlusWalletText,
                  style: productTitleTextStyle,
                ),
              ],
            ),
            SizedBox(
              height: height! * 0.02,
            ),
            RadioListTile(
              dense: true,
              contentPadding: EdgeInsets.zero,
              toggleable: true,
              value: 1,
              groupValue: provider.selectedWallet,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    totalWalletBalanceText,
                    style: productTitleTextStyle.copyWith(color: greyColor),
                  ),
                  Text(
                    " ₹ 0.00",
                    style: productTitleTextStyle,
                  ),
                ],
              ),
              onChanged: (val) {
                provider.wallet(val);
              },
              activeColor: appColorTheme,
              selected: true,
            ),
          ],
        ),
      ),
    );
  }
}

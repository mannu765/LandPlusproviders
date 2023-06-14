import 'package:flutter/material.dart';
import 'package:landplush/widget/button.dart';

import '../utils/class_and_methods.dart';
import '../utils/colors.dart';
import 'appbar.dart';

class EmptyPage extends StatefulWidget {
  final String? pageTitle;
  const EmptyPage({super.key, this.pageTitle});

  @override
  State<EmptyPage> createState() => _EmptyPageState();
}

class _EmptyPageState extends State<EmptyPage> {
  ScrollController scrollController = ScrollController();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  void initState() {
    newOtherServiceList(context: context, pageTitle: widget.pageTitle!);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: whiteColor,
      key: scaffoldKey,
      appBar: mainAppbarWidget(
        leading: backToHomeBtn(context: context),
        context: context,
        pageTitle: widget.pageTitle!,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_rounded,
              color: blackColor,
            ),
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        controller: scrollController,
        children: [],
      ),
    );
  }
}

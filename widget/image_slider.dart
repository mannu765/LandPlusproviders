import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/custom_provider.dart';
import '../utils/colors.dart';
import '../utils/images.dart';
import '../utils/lists.dart';
import '../utils/strings.dart';
import '../utils/style.dart';
import '../utils/variable.dart';
import '../utils/widgets.dart';

class ImageSlider extends StatelessWidget {
  final List list;
  final double? aspectRatio;

  const ImageSlider({
    Key? key,
    required this.list,
    this.aspectRatio,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Consumer<ImageSliderProvider>(
      builder: (context, provider, child) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: width! * 1,
              child: CarouselSlider.builder(
                itemCount: list.length,
                options: CarouselOptions(
                  aspectRatio: aspectRatio ?? 16 / 9,
                  viewportFraction: 1,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 5),
                  autoPlayAnimationDuration: const Duration(milliseconds: 1000),
                  enlargeCenterPage: false,
                  onPageChanged: (index, reason) {
                    provider.onPageChanged(index);
                  },
                ),
                itemBuilder: (context, index, _) {
                  return MyImageView(
                    list[index],
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: list.map((url) {
                int index = list.indexOf(url);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: provider.currentPos == index ? colorPrimary : appColor3,
                  ),
                );
              }).toList(),
            ),
          ],
        );
      },
    );
  }
}

class MyImageView extends StatelessWidget {
  String imgPath;
  MyImageView(this.imgPath, {super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imgPath,
      width: width,
      fit: BoxFit.cover,
    );
  }
}

class MyPropertyImgSlider extends StatelessWidget {
  final List list;
  const MyPropertyImgSlider({Key? key, required this.list}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Consumer<ImageSliderProvider>(
      builder: (context, provider, child) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider.builder(
              itemCount: list.length,
              options: CarouselOptions(
                viewportFraction: 1,
                aspectRatio: 1,
                autoPlayInterval: const Duration(seconds: 5),
                autoPlayAnimationDuration: const Duration(milliseconds: 1000),
                enlargeCenterPage: false,
                onPageChanged: (index, reason) {
                  provider.onPageChanged(index);
                },
              ),
              itemBuilder: (context, index, _) {
                return MyPropertyImageView(
                  list[index],
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: list.map((url) {
                int index = list.indexOf(url);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: provider.currentPos == index ? colorPrimary : appColor3,
                  ),
                );
              }).toList(),
            ),
          ],
        );
      },
    );
  }
}

class MyPropertyImageView extends StatelessWidget {
  String imgPath;
  MyPropertyImageView(this.imgPath, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(imgPath),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class ImageSliderWidget extends StatelessWidget {
  final List list;
  const ImageSliderWidget({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ImageSliderProvider>(
      builder: (context, provider, child) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: width! * 1,
              child: CarouselSlider.builder(
                itemCount: list.length,
                options: CarouselOptions(
                  viewportFraction: 1,
                  aspectRatio: width! > 500 ? 1.5 : 1,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 5),
                  autoPlayAnimationDuration: const Duration(milliseconds: 1000),
                  enlargeCenterPage: false,
                  onPageChanged: (index, reason) {
                    provider.onPageChanged(index);
                  },
                ),
                itemBuilder: (context, index, _) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: appColorTheme,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Container(
                              height: height! * 0.25,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: const DecorationImage(
                                  image: AssetImage(myListingImg),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 5),
                                    child: Text(
                                      "11 WAYS TO CREATE THE PERFECT BACKSPLASH WITH KITCHEN TILES ",
                                      style: homePageBoldTitleTextStyle,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 5),
                                    child: Text(
                                      "Kitchen backsplash is one of the simplest tactics to improve your kitchen appearance. Here are some best types of tiles for Kitchen Backsplash... read more.... ",
                                      maxLines: 3,
                                      style: myListingSubtitleTextStyle,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 5),
                                    child: Text(
                                      "Update 4 years ago",
                                      style: myListingSubtitleTextStyle,
                                    ),
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
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: list.map(
                (url) {
                  int index = list.indexOf(url);
                  return Container(
                    width: 8.0,
                    height: 8.0,
                    margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: provider.currentPos == index ? colorPrimary : appColor3,
                    ),
                  );
                },
              ).toList(),
            ),
          ],
        );
      },
    );
  }
}

///
Container howEasyItIsToUse(BuildContext context) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        boldTitleTextWidget(title: howEasyItIsToUseText),
        HowToUseImgSlider(list: howToUseList, stepList: howToUseStepList),
      ],
    ),
  );
}

///
///
class HowToUseImgSlider extends StatelessWidget {
  final List list;
  final List stepList;
  const HowToUseImgSlider({Key? key, required this.list, required this.stepList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ImageSliderProvider>(
      builder: (context, provider, child) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider.builder(
              itemCount: list.length,
              options: CarouselOptions(
                viewportFraction: 1,
                aspectRatio: 5,
                height: height! * 0.3,
                autoPlay: false,
                autoPlayInterval: const Duration(seconds: 5),
                autoPlayAnimationDuration: const Duration(milliseconds: 1000),
                enlargeCenterPage: false,
                onPageChanged: (index, reason) {
                  provider.onPageChanged(index);
                },
              ),
              itemBuilder: (context, index, _) {
                return HowToUseImgView(
                  stepList[index],
                  list[index],
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: list.map((url) {
                int index = list.indexOf(url);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: provider.currentPos == index ? colorPrimary : appColor3,
                  ),
                );
              }).toList(),
            ),
          ],
        );
      },
    );
  }
}

class HowToUseImgView extends StatelessWidget {
  String steps;
  String imgPath;
  HowToUseImgView(this.steps, this.imgPath, {super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(imgPath),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 2,
          right: 2,
          child: Text(
            steps,
            textAlign: TextAlign.center,
            style: homePageBoldTitleTextStyle.copyWith(color: appColorTheme, letterSpacing: 5, wordSpacing: 5),
          ),
        ),
      ],
    );
  }
}

class InteriorImageSlider extends StatelessWidget {
  final List list;
  final double? aspectRatio;
  final ValueNotifier<int> currentIndexNotifier;

  const InteriorImageSlider({
    Key? key,
    required this.list,
    this.aspectRatio,
    required this.currentIndexNotifier,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ImageSliderProvider>(context);
    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: width! * 1,
              child: CarouselSlider.builder(
                itemCount: list.length,
                options: CarouselOptions(
                  aspectRatio: aspectRatio ?? 16 / 9,
                  viewportFraction: 1,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 5),
                  autoPlayAnimationDuration: const Duration(milliseconds: 1000),
                  enlargeCenterPage: false,
                  onPageChanged: (index, reason) {
                    currentIndexNotifier.value = index;
                    provider.onPageChanged(index);
                  },
                ),
                itemBuilder: (context, index, _) {
                  return InteriorImageView(
                    list[index],
                  );
                },
              ),
            ),
          ],
        ),
        Positioned.fill(
          bottom: height! * 0.01,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: list.map((url) {
                int index = list.indexOf(url);
                return ValueListenableBuilder<int>(
                  valueListenable: currentIndexNotifier,
                  builder: (context, currentIndex, _) {
                    return Container(
                      width: 8.0,
                      height: 8.0,
                      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentIndex == index ? appColorTheme : appColor3,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}

class InteriorImageView extends StatelessWidget {
  String imgPath;
  InteriorImageView(this.imgPath, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height! * 0.25,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(imgPath),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: blackColor.withOpacity(0.5),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border_rounded,
                  color: whiteColor,
                  size: 15,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

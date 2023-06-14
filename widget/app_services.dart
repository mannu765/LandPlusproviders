import 'package:flutter/material.dart';
import 'package:landplush/utils/colors.dart';

import '../../../utils/images.dart';
import '../../../utils/lists.dart';
import '../../../utils/strings.dart';
import '../../../utils/widgets.dart';
import '../utils/variable.dart';

Container construction(BuildContext context) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        boldTitleTextWidget(title: constructionText),
        Center(
          child: dynamicGrid(
            grid: 3,
            color: colorPrimary,
            imageName: constructionImg,
            context: context,
            list: ConstructionTypeList.constructionTypeList(context: context),
          ),
        ),
      ],
    ),
  );
}

// ///
// Container renovation(BuildContext context) {
//   return Container(
//     padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         boldTitleTextWidget(title: renovationText),
//         Center(
//           child: dynamicGrid(
//             grid: 3,
//             color: redColor,
//             imageName: renovationImg,
//             context: context,
//             list: RenovationTypeList.renovationTypeList(context: context),
//           ),
//         ),
//       ],
//     ),
//   );
// }
//
// ///
// Container interior(BuildContext context) {
//   return Container(
//     padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         boldTitleTextWidget(title: interiorText),
//         Center(
//           child: dynamicGrid(
//             grid: 3,
//             color: Colors.amber,
//             imageName: interiorImg,
//             context: context,
//             list: InteriorTypeList.interiorTypeList(context: context),
//           ),
//         ),
//       ],
//     ),
//   );
// }
//
// ///
Container architecture(BuildContext context) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // boldTitleTextWidget(title: architectureText),
        Center(
          child: dynamicGrid(
            grid: 3,
            color: Colors.indigo,
            imageName: architectureImg,
            context: context,
            list: ArchitectureTypeList.architectureTypeList(context: context),
          ),
        ),
      ],
    ),
  );
}

///
Container ourServices(BuildContext context) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        boldTitleTextWidget(title: ourServicesText),
        Center(
          child: dynamicGrid(
            grid: 3,
            color: Colors.blueAccent,
            imageName: otherServiceImg,
            context: context,
            list: newOtherServiceTypeList,
          ),
        ),
      ],
    ),
  );
}

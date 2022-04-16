import 'package:advanced_flutter_arabic/presentation/resources/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PrpperCircleWidget extends StatelessWidget {
  final int index;
  final int currentIndex;
  const PrpperCircleWidget(
      {Key? key, required this.index, required this.currentIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (index == currentIndex)
        ? SvgPicture.asset(ImageAssets.hollowCircleIc)
        : SvgPicture.asset(ImageAssets.solidCircleIc);
  }
}

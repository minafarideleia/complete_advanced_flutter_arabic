import 'package:advanced_flutter_arabic/domain/models/slider_object.dart';
import 'package:advanced_flutter_arabic/presentation/onboarding/cubit/onboarding_cubit.dart';
import 'package:advanced_flutter_arabic/presentation/resources/assets_manager.dart';
import 'package:advanced_flutter_arabic/presentation/resources/color_manager.dart';
import 'package:advanced_flutter_arabic/presentation/resources/constants_manager.dart';
import 'package:advanced_flutter_arabic/presentation/resources/routes_manager.dart';
import 'package:advanced_flutter_arabic/presentation/resources/strings_manager.dart';
import 'package:advanced_flutter_arabic/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/src/provider.dart';

import 'proper_circle_widget.dart';

class BottomSheetWidget extends StatelessWidget {
  final PageController pageController;
  final SliderViewObject sliderViewObject;
  const BottomSheetWidget({
    Key? key,
    required this.pageController,
    required this.sliderViewObject,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorManager.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, Routes.loginRoute);
              },
              child: Text(
                AppStrings.skip,
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.end,
              ),
            ),
          ),

          //* widgets indicator and arrows
          Container(
            color: ColorManager.primary,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //* left arrow
                Padding(
                  padding: const EdgeInsets.all(AppPadding.p14),
                  child: GestureDetector(
                    child: SizedBox(
                      width: AppSize.s20,
                      height: AppSize.s20,
                      child: SvgPicture.asset(ImageAssets.leftArrowIc),
                    ),
                    onTap: () {
                      //* go to previous slide
                      pageController.animateToPage(
                          context.read<OnboardingCubit>().goPrevious(),
                          duration: const Duration(
                              milliseconds: AppConstants.sliderAnimationTime),
                          curve: Curves.bounceInOut);
                    },
                  ),
                ),

                //* circle indicator
                Row(
                  children: [
                    for (int i = 0; i < sliderViewObject.numOfSlides; i++)
                      Padding(
                        padding: const EdgeInsets.all(AppPadding.p8),
                        child: PrpperCircleWidget(
                            index: i,
                            currentIndex: sliderViewObject.currentIndex),
                      )
                  ],
                ),
                //* right arrow
                Padding(
                  padding: const EdgeInsets.all(AppPadding.p14),
                  child: GestureDetector(
                      child: SizedBox(
                        width: AppSize.s20,
                        height: AppSize.s20,
                        child: SvgPicture.asset(ImageAssets.rightArrowIc),
                      ),
                      onTap: () {
                        // go to previous slide
                        pageController.animateToPage(
                            context.read<OnboardingCubit>().goNext(),
                            duration: const Duration(
                                milliseconds: AppConstants.sliderAnimationTime),
                            curve: Curves.bounceInOut);
                      }),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

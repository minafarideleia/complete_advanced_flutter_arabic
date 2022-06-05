import 'package:advanced_flutter_arabic/presentation/onboarding/cubit/onboarding_cubit.dart';
import 'package:advanced_flutter_arabic/presentation/onboarding/view/widgets/bottom_sheet_widget.dart';
import 'package:advanced_flutter_arabic/presentation/resources/color_manager.dart';
import 'package:advanced_flutter_arabic/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/onboarding_content_widget.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  _OnBoardingViewState createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        if (state is OnboardingPostDataToView) {
          return Container(
            color: ColorManager.primary,
            child: SafeArea(
              top: false,
              child: Scaffold(
                backgroundColor: ColorManager.white,
                appBar: AppBar(
                  backgroundColor: ColorManager.white,
                  elevation: AppSize.s0,
                  systemOverlayStyle: SystemUiOverlayStyle(
                      statusBarColor: ColorManager.white,
                      statusBarBrightness: Brightness.dark),
                ),
                body: PageView.builder(
                    controller: _pageController,
                    itemCount: state.sliderViewObject.numOfSlides,
                    onPageChanged: (index) {
                      context.read<OnboardingCubit>().onPageChanged(index);
                    },
                    itemBuilder: (context, index) {
                      return OnBoardingPage(
                          state.sliderViewObject.sliderObject);
                    }),
                bottomSheet: BottomSheetWidget(
                  pageController: _pageController,
                  sliderViewObject: state.sliderViewObject,
                ),
              ),
            ),
          );
        }
        return const CircularProgressIndicator();
      },
    );
  }
}

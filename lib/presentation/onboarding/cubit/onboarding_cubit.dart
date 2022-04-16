import 'package:advanced_flutter_arabic/domain/models/slider_object.dart';
import 'package:advanced_flutter_arabic/presentation/base/base_bloc.dart';
import 'package:advanced_flutter_arabic/presentation/resources/assets_manager.dart';
import 'package:advanced_flutter_arabic/presentation/resources/strings_manager.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState>
    with OnboardingCubitInputs
    implements BaseBloc {
  OnboardingCubit() : super(OnboardingInitial()) {
    start();
  }
  late List<SliderObject> _listOfSliderObject;
  int _currentIndex = 0;

  @override
  void dispose() {}

  @override
  void start() {
    emit(OnboardingLoadInProgress());
    _listOfSliderObject = _getSliderData();
    _postDataToView();
  }

  @override
  int goNext() {
    int nextIndex = ++_currentIndex;
    if (nextIndex == _listOfSliderObject.length) {
      nextIndex = 0;
    }
    return nextIndex;
  }

  @override
  int goPrevious() {
    int previousIndex = --_currentIndex;
    if (previousIndex == -1) {
      previousIndex = _listOfSliderObject.length - 1;
    }
    return previousIndex;
  }

  @override
  void onPageChanged(int index) {
    emit(OnboardingLoadInProgress());
    _currentIndex = index;
    _postDataToView();
  }

  // onboarding private functions
  void _postDataToView() {
    emit(OnboardingPostDataToView(
      SliderViewObject(
        sliderObject: _listOfSliderObject[_currentIndex],
        numOfSlides: _listOfSliderObject.length,
        currentIndex: _currentIndex,
      ),
    ));
  }

  List<SliderObject> _getSliderData() => [
        SliderObject(
          title: AppStrings.onBoardingTitle1,
          subTitle: AppStrings.onBoardingSubTitle1,
          image: ImageAssets.onboardingLogo1,
        ),
        SliderObject(
          title: AppStrings.onBoardingTitle2,
          subTitle: AppStrings.onBoardingSubTitle2,
          image: ImageAssets.onboardingLogo2,
        ),
        SliderObject(
          title: AppStrings.onBoardingTitle3,
          subTitle: AppStrings.onBoardingSubTitle3,
          image: ImageAssets.onboardingLogo3,
        ),
        SliderObject(
          title: AppStrings.onBoardingTitle4,
          subTitle: AppStrings.onBoardingSubTitle4,
          image: ImageAssets.onboardingLogo4,
        ),
      ];
}

abstract class OnboardingCubitInputs {
  int goNext();
  int goPrevious();
  void onPageChanged(int index);
}

abstract class OnboardingCubitOutputs {}

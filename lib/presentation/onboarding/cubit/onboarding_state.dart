part of 'onboarding_cubit.dart';

abstract class OnboardingState extends Equatable {
  const OnboardingState();

  @override
  List<Object> get props => [];
}

class OnboardingInitial extends OnboardingState {}
class OnboardingLoadInProgress extends OnboardingState {}


class OnboardingPostDataToView extends OnboardingState {
   SliderViewObject sliderViewObject;

   OnboardingPostDataToView(
    this.sliderViewObject,
  );
}

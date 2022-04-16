class SliderObject {
  final String title;
  final String subTitle;
  final String image;

  SliderObject({
    required this.title,
    required this.subTitle,
    required this.image,
  });
}

class SliderViewObject {
  final SliderObject sliderObject;
  final int numOfSlides;
  final int currentIndex;

  SliderViewObject({
    required this.sliderObject,
    required this.numOfSlides,
    required this.currentIndex,
  });
}

import 'package:advanced_flutter_arabic/presentation/resources/color_manager.dart';
import 'package:advanced_flutter_arabic/presentation/resources/font_manager.dart';
import 'package:advanced_flutter_arabic/presentation/resources/strings_manager.dart';
import 'package:advanced_flutter_arabic/presentation/resources/styles_manager.dart';
import 'package:advanced_flutter_arabic/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';

enum StateRendererType {
  // POPUP STATES (DIALOG)
  popupLoadingState,
  popupErrorState,

  // FULL SCREEN STATED (FULL SCREEN)
  fullScreenLoadingState,
  fullScreenErrorState,
  fullScreenEmptyState,
  // general
  contentState
}

class StateRenderer extends StatelessWidget {
  StateRendererType stateRendererType;
  String message;
  String title;
  Function retryActionFunction;

  StateRenderer(
      {required this.stateRendererType,
      this.message = AppStrings.loading,
      this.title = "",
      required this.retryActionFunction});

  @override
  Widget build(BuildContext context) {
    return _getStateWidget(context);
  }

  Widget _getStateWidget(BuildContext context) {
    switch (stateRendererType) {
      case StateRendererType.popupLoadingState:
        // TODO: Handle this case.
        break;
      case StateRendererType.popupErrorState:
        // TODO: Handle this case.
        break;
      case StateRendererType.fullScreenLoadingState:
        return _getItemsColumn([_getAnimatedImage(), _getMessage(message)]);
      case StateRendererType.fullScreenErrorState:
        return _getItemsColumn([
          _getAnimatedImage(),
          _getMessage(message),
          _getRetryButton(AppStrings.retryAgain, context)
        ]);
      case StateRendererType.fullScreenEmptyState:
        // TODO: Handle this case.
        break;
      case StateRendererType.contentState:
        // TODO: Handle this case.
        break;
    }
  }

  Widget _getItemsColumn(List<Widget> children) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: children,
    );
  }

  Widget _getAnimatedImage() {
    return SizedBox(
      height: AppSize.s100,
      width: AppSize.s100,
      child: Container(), // todo add json image here
    );
  }

  Widget _getMessage(String message) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p8),
        child: Text(
          message,
          style: getRegularStyle(
              color: ColorManager.black, fontSize: FontSize.s18),
        ),
      ),
    );
  }

  Widget _getRetryButton(String buttonTitle, BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p18),
        child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  if (stateRendererType ==
                      StateRendererType.fullScreenErrorState) {
                    // call retry function
                    retryActionFunction.call();
                  } else {
                    // popup error state
                    Navigator.of(context).pop();
                  }
                },
                child: Text(buttonTitle))),
      ),
    );
  }
}

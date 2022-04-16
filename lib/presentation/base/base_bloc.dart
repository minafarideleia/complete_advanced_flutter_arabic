abstract class BaseBloc extends BaseBlocInputs with BaseBlocOutputs {
  // shared variables and function that will be used through any view model.
}

abstract class BaseBlocInputs {
  void start(); // start view model job

  void dispose(); // will be called when view model dies
}

abstract class BaseBlocOutputs {
  // will be implemented later
}

abstract class BaseBloc extends _BaseBlocInputs with _BaseBlocOutputs {
  // shared variables and function that will be used through any view model.
}

abstract class _BaseBlocInputs {
  void start(); // start view model job

  void dispose(); // will be called when view model dies
}

abstract class _BaseBlocOutputs {
  // will be implemented later
}

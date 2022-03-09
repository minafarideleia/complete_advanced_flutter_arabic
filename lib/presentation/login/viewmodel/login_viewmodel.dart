import 'package:advanced_flutter_arabic/presentation/base/baseviewmodel.dart';

class LoginViewModel extends BaseViewModel
    with LoginViewModelInputs, LoginViewModelOutputs {
  // inputs
  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  void start() {
    // TODO: implement start
  }

  @override
  // TODO: implement inputPassword
  Sink get inputPassword => throw UnimplementedError();

  @override
  // TODO: implement inputUserName
  Sink get inputUserName => throw UnimplementedError();

  @override
  setPassword(String password) {
    // TODO: implement setPassword
    throw UnimplementedError();
  }

  @override
  setUserName(String userName) {
    // TODO: implement setUserName
    throw UnimplementedError();
  }

  @override
  login() {
    // TODO: implement login
    throw UnimplementedError();
  }

  // outputs
  @override
  // TODO: implement outIsPasswordValid
  Stream<bool> get outIsPasswordValid => throw UnimplementedError();

  @override
  // TODO: implement outIsUserNameValid
  Stream<bool> get outIsUserNameValid => throw UnimplementedError();
}

abstract class LoginViewModelInputs {
  setUserName(String userName);

  setPassword(String password);

  login();

  Sink get inputUserName;

  Sink get inputPassword;
}

abstract class LoginViewModelOutputs {
  Stream<bool> get outIsUserNameValid;

  Stream<bool> get outIsPasswordValid;
}

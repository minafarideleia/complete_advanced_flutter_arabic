import 'dart:async';

import 'package:advanced_flutter_arabic/domain/model/models.dart';
import 'package:advanced_flutter_arabic/domain/usecase/home_usecase.dart';
import 'package:advanced_flutter_arabic/presentation/base/baseviewmodel.dart';
import 'package:rxdart/rxdart.dart';

class HomeViewModel extends BaseViewModel {
  final StreamController _bannersStreamController = BehaviorSubject<
      List<BannerAd>>();
  final StreamController _servicesStreamController = BehaviorSubject<
      List<Service>>();
  final StreamController _storesStreamController = BehaviorSubject<
      List<Store>>();

  final HomeUseCase _homeUseCase;

  HomeViewModel(this._homeUseCase)

  @override
  void start() {
    // TODO: implement start
  }

  @override
  void dispose() {
    _bannersStreamController.close();
    _servicesStreamController.close();
    _storesStreamController.close();
    super.dispose();
  }

}
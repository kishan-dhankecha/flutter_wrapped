import 'package:flutter_wrapped/features/home/domain/entities/contributor.dart';
import 'package:flutter_wrapped/features/home/domain/home_service.dart';
import 'package:wolt_state_management/wolt_state_management.dart';

class HomeScreenViewModel {
  HomeScreenViewModel({required HomeService homeService})
      : _homeService = homeService;

  final HomeService _homeService;

  final _flutterCommitters = StatefulValueNotifier.idle(List<Contributor>.empty());
  final _flutterReviewers = StatefulValueNotifier.idle(List<Contributor>.empty());

  final _flutterEngineCommitters = StatefulValueNotifier.idle(List<Contributor>.empty());
  final _flutterEngineReviewers = StatefulValueNotifier.idle(List<Contributor>.empty());

  final _flutterPackagesCommitters = StatefulValueNotifier.idle(List<Contributor>.empty());
  final _flutterPackagesReviewers = StatefulValueNotifier.idle(List<Contributor>.empty());

  StatefulValueListenable<List<Contributor>> get flutterCommitters => _flutterCommitters;
  StatefulValueListenable<List<Contributor>> get flutterReviewers => _flutterReviewers;

  StatefulValueListenable<List<Contributor>> get flutterEngineCommitters => _flutterEngineCommitters;
  StatefulValueListenable<List<Contributor>> get flutterEngineReviewers => _flutterEngineReviewers;

  StatefulValueListenable<List<Contributor>> get flutterPackagesCommitters => _flutterPackagesCommitters;
  StatefulValueListenable<List<Contributor>> get flutterPackagesReviewers => _flutterPackagesReviewers;

  void getFlutterCommitters() {
    final contributors = _homeService.flutterCommitters.value;
    _flutterCommitters.setIdle(value: contributors);
  }

  void getFlutterReviewers() {
    final reviewers = _homeService.flutterReviewers.value;
    _flutterReviewers.setIdle(value: reviewers);
  }

  void getFlutterEngineCommitters() {
    final contributors = _homeService.flutterEngineCommitters.value;
    _flutterEngineCommitters.setIdle(value: contributors);
  }

  void getFlutterEngineReviewers() {
    final reviewers = _homeService.flutterEngineReviewers.value;
    _flutterEngineReviewers.setIdle(value: reviewers);
  }

  void getFlutterPackagesCommitters() {
    final contributors = _homeService.flutterPackagesCommitters.value;
    _flutterPackagesCommitters.setIdle(value: contributors);
  }

  void getFlutterPackagesReviewers() {
    final reviewers = _homeService.flutterPackagesReviewers.value;
    _flutterPackagesReviewers.setIdle(value: reviewers);
  }

  Future<void> onInit() async {
    await _homeService.getFlutterCommitters();
    await _homeService.getFlutterReviewers();
    await _homeService.getFlutterEngineCommitters();
    await _homeService.getFlutterEngineReviewers();
    await _homeService.getFlutterPackagesCommitters();
    await _homeService.getFlutterPackagesReviewers();
    getFlutterCommitters();
    getFlutterReviewers();
    getFlutterEngineCommitters();
    getFlutterEngineReviewers();
    getFlutterPackagesCommitters();
    getFlutterPackagesReviewers();
  }

  void dispose() {
    _homeService.flutterCommitters.removeListener(getFlutterCommitters);
    _homeService.flutterReviewers.removeListener(getFlutterReviewers);
    _homeService.flutterEngineCommitters.removeListener(getFlutterEngineCommitters);
    _homeService.flutterEngineReviewers.removeListener(getFlutterEngineReviewers);
    _homeService.flutterPackagesCommitters.removeListener(getFlutterPackagesCommitters);
    _homeService.flutterPackagesReviewers.removeListener(getFlutterPackagesReviewers);
  }
}

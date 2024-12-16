import 'package:flutter/foundation.dart';
import 'package:flutter_wrapped/features/home/data/repository/home_repository.dart';
import 'package:flutter_wrapped/features/home/domain/entities/contributor.dart';

class HomeService {
  HomeService({required HomeRepository homeRepository})
      : _homeRepository = homeRepository;

  final HomeRepository _homeRepository;

  final ValueNotifier<List<Contributor>> _flutterCommitters = ValueNotifier([]);
  ValueNotifier<List<Contributor>> get flutterCommitters => _flutterCommitters;

  final ValueNotifier<List<Contributor>> _flutterReviewers = ValueNotifier([]);
  ValueNotifier<List<Contributor>> get flutterReviewers => _flutterReviewers;

  final ValueNotifier<List<Contributor>> _flutterEngineCommitters = ValueNotifier([]);
  ValueNotifier<List<Contributor>> get flutterEngineCommitters => _flutterEngineCommitters;

  final ValueNotifier<List<Contributor>> _flutterEngineReviewers = ValueNotifier([]);
  ValueNotifier<List<Contributor>> get flutterEngineReviewers => _flutterEngineReviewers;

  final ValueNotifier<List<Contributor>> _flutterPackagesCommitters = ValueNotifier([]);
  ValueNotifier<List<Contributor>> get flutterPackagesCommitters => _flutterPackagesCommitters;

  final ValueNotifier<List<Contributor>> _flutterPackagesReviewers = ValueNotifier([]);
  ValueNotifier<List<Contributor>> get flutterPackagesReviewers => _flutterPackagesReviewers;

  dispose() {
    _flutterCommitters.dispose();
    _flutterReviewers.dispose();
    _flutterEngineCommitters.dispose();
    _flutterEngineReviewers.dispose();
    _flutterPackagesCommitters.dispose();
    _flutterPackagesReviewers.dispose();
  }

  Future<void> getFlutterCommitters() async {
    _flutterCommitters.value = await _homeRepository.fetchFlutterCommitters();
  }

  Future<void> getFlutterReviewers() async {
    _flutterReviewers.value = await _homeRepository.fetchFlutterReviewers();
  }

  Future<void> getFlutterEngineCommitters() async {
    _flutterEngineCommitters.value = await _homeRepository.fetchFlutterEngineCommitters();
  }

  Future<void> getFlutterEngineReviewers() async {
    _flutterEngineReviewers.value = await _homeRepository.fetchFlutterEngineReviewers();
  }

  Future<void> getFlutterPackagesCommitters() async {
    _flutterPackagesCommitters.value = await _homeRepository.fetchFlutterPackagesCommitters();
  }

  Future<void> getFlutterPackagesReviewers() async {
    _flutterPackagesReviewers.value = await _homeRepository.fetchFlutterPackagesReviewers();
  }
}

import 'package:flutter_wrapped/features/home/data/local/home_local_data_source.dart';
import 'package:flutter_wrapped/features/home/domain/entities/contributor.dart';

class HomeRepository {
  final HomeLocalDataSource _homeLocalDataSource;

  HomeRepository({required HomeLocalDataSource homeLocalDataSource})
      : _homeLocalDataSource = homeLocalDataSource;

  Future<List<Contributor>> fetchFlutterCommitters() async {
    return await _homeLocalDataSource.fetchFlutterCommitters();
  }

  Future<List<Contributor>> fetchFlutterReviewers() async {
    return await _homeLocalDataSource.fetchFlutterReviewers();
  }

  Future<List<Contributor>> fetchFlutterEngineCommitters() async {
    return await _homeLocalDataSource.fetchFlutterEngineCommitters();
  }

  Future<List<Contributor>> fetchFlutterEngineReviewers() async {
    return await _homeLocalDataSource.fetchFlutterEngineReviewers();
  }

  Future<List<Contributor>> fetchFlutterPackagesCommitters() async {
    return await _homeLocalDataSource.fetchFlutterPackagesCommitters();
  }

  Future<List<Contributor>> fetchFlutterPackagesReviewers() async {
    return await _homeLocalDataSource.fetchFlutterPackagesReviewers();
  }
}

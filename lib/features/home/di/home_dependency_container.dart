import 'package:flutter_wrapped/app/di/flutter_wrap_level_dependency_container.dart';
import 'package:flutter_wrapped/features/home/data/local/home_local_data_source.dart';
import 'package:flutter_wrapped/features/home/data/repository/home_repository.dart';
import 'package:flutter_wrapped/features/home/ui/view_model/home_screen_view_model.dart';
import 'package:wolt_di/wolt_di.dart';

import '../domain/home_service.dart';

class HomeDependencyContainer extends FeatureLevelDependencyContainer {
  HomeDependencyContainer() {
    _homeLocalDataSource = HomeLocalDataSourceImpl();
    _homeRepository = HomeRepository(homeLocalDataSource: _homeLocalDataSource);
    _homeService = HomeService(homeRepository: _homeRepository);
  }

  late final HomeLocalDataSource _homeLocalDataSource;
  late final HomeRepository _homeRepository;
  late final HomeService _homeService;

  HomeScreenViewModel createViewModel() {
    return HomeScreenViewModel(homeService: _homeService);
  }

  @override
  void dispose() {
    unbindFrom<FlutterWrapLevelDependencyContainer>();
    _homeService.dispose();
    _homeLocalDataSource.dispose();
  }
}

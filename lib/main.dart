import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wolt_di/wolt_di.dart';

import 'app/app.dart';
import 'app/di/flutter_wrap_level_dependency_container.dart';
import 'features/home/di/home_dependency_container.dart';

void _registerFeatureLevelDependencyContainers(
    DependencyContainerManager manager) {
  manager.registerContainerFactory<HomeDependencyContainer>(
      () => HomeDependencyContainer());
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final dependencyContainerManager = DependencyContainerManager.instance;
  await dependencyContainerManager.init(FlutterWrapLevelDependencyContainer());

  _registerFeatureLevelDependencyContainers(dependencyContainerManager);

  runApp(const FlutterWrapApp());
}

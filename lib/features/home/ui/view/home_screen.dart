import 'package:flutter/material.dart';
import 'package:flutter_wrapped/features/home/di/home_dependency_container.dart';
import 'package:flutter_wrapped/features/home/ui/view_model/home_screen_view_model.dart';
import 'package:wolt_di/wolt_di.dart';

import 'widgets/home_screen_content.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with
        DependencyContainerSubscriptionMixin<HomeDependencyContainer,
            HomeScreen> {
  late HomeScreenViewModel viewModel;

  @override
  void initState() {
    super.initState();
    viewModel = DependencyInjector.container<HomeDependencyContainer>(context)
        .createViewModel();

    Future.delayed(Duration(seconds: 1), () async {
      await viewModel.onInit();
    });
  }

  @override
  Widget build(BuildContext context) {
    return HomeScreenContent(
      flutterCommitters: viewModel.flutterCommitters,
      flutterReviewers: viewModel.flutterReviewers,
      flutterEngineCommitters: viewModel.flutterEngineCommitters,
      flutterEngineReviewers: viewModel.flutterEngineReviewers,
      flutterPackagesCommitters: viewModel.flutterPackagesCommitters,
      flutterPackagesReviewers: viewModel.flutterPackagesReviewers,
    );
  }
}

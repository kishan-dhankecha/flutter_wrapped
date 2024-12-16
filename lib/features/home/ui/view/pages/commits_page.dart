import 'package:flutter/material.dart';
import 'package:wolt_state_management/wolt_state_management.dart';

import '../../../domain/entities/contributor.dart';
import '../widgets/charts_section.dart';

class CommitsPage extends StatelessWidget {
  const CommitsPage(
      {super.key,
      required this.flutterCommitters,
      required this.flutterEngineCommitters,
      required this.flutterPackagesCommitters,
    });

  final StatefulValueListenable<List<Contributor>> flutterCommitters;
  final StatefulValueListenable<List<Contributor>> flutterEngineCommitters;
  final StatefulValueListenable<List<Contributor>> flutterPackagesCommitters;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: TabBar(
              tabs: [
                Tab(text: 'flutter/flutter'),
                Tab(text: 'flutter/engine'),
                Tab(text: 'flutter/packages'),
              ],
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                ChartsSection(contributors: flutterCommitters),
                ChartsSection(contributors: flutterEngineCommitters),
                ChartsSection(contributors: flutterPackagesCommitters),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

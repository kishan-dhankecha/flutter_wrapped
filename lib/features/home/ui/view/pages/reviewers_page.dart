import 'package:flutter/material.dart';
import 'package:wolt_state_management/wolt_state_management.dart';

import '../../../domain/entities/contributor.dart';
import '../widgets/charts_section.dart';

class ReviewersPage extends StatelessWidget {
  const ReviewersPage({
    super.key,
    required this.flutterReviewers,
    required this.flutterEngineReviewers,
    required this.flutterPackagesReviewers,
  });

  final StatefulValueListenable<List<Contributor>> flutterReviewers;
  final StatefulValueListenable<List<Contributor>> flutterEngineReviewers;
  final StatefulValueListenable<List<Contributor>> flutterPackagesReviewers;

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
                ChartsSection(
                  contributors: flutterReviewers,
                  title: 'Top Contributors by Reviews',
                ),
                ChartsSection(
                  contributors: flutterEngineReviewers,
                  title: 'Top Contributors by Reviews',
                ),
                ChartsSection(
                  contributors: flutterPackagesReviewers,
                  title: 'Top Contributors by Reviews',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

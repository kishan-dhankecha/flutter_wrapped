import 'package:flutter/material.dart';
import 'package:flutter_wrapped/features/home/domain/entities/contributor.dart';
import 'package:wolt_state_management/wolt_state_management.dart';

import '../pages/commits_page.dart';
import '../pages/popular_page.dart';
import '../pages/reviewers_page.dart';

class HomeScreenContent extends StatefulWidget {
  const HomeScreenContent({
    super.key,
    required this.flutterCommitters,
    required this.flutterReviewers,
    required this.flutterEngineCommitters,
    required this.flutterEngineReviewers,
    required this.flutterPackagesCommitters,
    required this.flutterPackagesReviewers,
  });

  final StatefulValueListenable<List<Contributor>> flutterCommitters;
  final StatefulValueListenable<List<Contributor>> flutterReviewers;
  final StatefulValueListenable<List<Contributor>> flutterEngineCommitters;
  final StatefulValueListenable<List<Contributor>> flutterEngineReviewers;
  final StatefulValueListenable<List<Contributor>> flutterPackagesCommitters;
  final StatefulValueListenable<List<Contributor>> flutterPackagesReviewers;

  @override
  State<HomeScreenContent> createState() => _HomeScreenContentState();
}

class _HomeScreenContentState extends State<HomeScreenContent> {
  int selectedIndex = 0;

  void _showInfoDialog() {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 400),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'About Flutter Contributors Wrapped',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'This data is collected via the GitHub API and shows contributions '
                  'to some of the Flutter repositories from January 1st to December 13th 2024.',
                ),
                const SizedBox(height: 8),
                const Text(
                  'Bot accounts and automated systems have been excluded from the statistics.',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('Close'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            'Flutter Contributors Wrapped 2024',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          elevation: 1,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: IconButton.outlined(
                onPressed: _showInfoDialog,
                icon: Icon(
                  Icons.info_rounded,
                ),
              ),
            )
          ],
        ),
        body: Row(
          children: [
            if (constraints.maxWidth > 600)
              NavigationRail(
                labelType: NavigationRailLabelType.all,
                destinations: <NavigationRailDestination>[
                  NavigationRailDestination(
                    icon: Image.asset(
                      'assets/pr.png',
                      width: 24,
                      height: 24,
                    ),
                    label: Text('Commits'),
                  ),
                  NavigationRailDestination(
                    icon: Image.asset(
                      'assets/thumb_up.png',
                      width: 24,
                      height: 24,
                    ),
                    label: Text('Reviews'),
                  ),
                  NavigationRailDestination(
                    icon: Image.asset(
                      'assets/sparkles.png',
                      width: 24,
                      height: 24,
                    ),
                    label: Text('Popular'),
                  ),
                ],
                selectedIndex: selectedIndex,
                onDestinationSelected: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              ),
            Expanded(
              child: IndexedStack(
                index: selectedIndex,
                children: [
                  CommitsPage(
                    flutterCommitters: widget.flutterCommitters,
                    flutterEngineCommitters: widget.flutterEngineCommitters,
                    flutterPackagesCommitters: widget.flutterPackagesCommitters,
                  ),
                  ReviewersPage(
                    flutterReviewers: widget.flutterReviewers,
                    flutterEngineReviewers: widget.flutterEngineReviewers,
                    flutterPackagesReviewers: widget.flutterPackagesReviewers,
                  ),
                  NotablePage(),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: constraints.maxWidth < 600
            ? NavigationBar(
                selectedIndex: selectedIndex,
                destinations: [
                  NavigationDestination(
                    icon: Image.asset(
                      'assets/pr.png',
                      width: 24,
                      height: 24,
                    ),
                    label: 'Commits',
                  ),
                  NavigationDestination(
                    icon: Image.asset(
                      'assets/thumb_up.png',
                      width: 24,
                      height: 24,
                    ),
                    label: 'Reviews',
                  ),
                  NavigationDestination(
                    icon: Image.asset(
                      'assets/sparkles.png',
                      width: 24,
                      height: 24,
                    ),
                    label: 'Popular',
                  ),
                ],
                onDestinationSelected: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              )
            : null,
      );
    });
  }
}

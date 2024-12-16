import 'package:auto_size_text_plus/auto_size_text_plus.dart';
import 'package:flutter/material.dart';
import 'package:wolt_state_management/wolt_state_management.dart';

import '../../../domain/entities/contributor.dart';
import 'contributors_graph.dart';

class ChartsSection extends StatelessWidget {
  const ChartsSection({
    super.key,
    required this.contributors,
    required this.title,
  });

  final StatefulValueListenable<List<Contributor>> contributors;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Card(
            elevation: 8,
            shadowColor: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                spacing: 16,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      spacing: 4,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText(
                          title,
                          maxFontSize: 28,
                          minFontSize: 12,
                          maxLines: 2,
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .copyWith(
                                fontWeight: FontWeight.w900,
                              ),
                        ),
                        AutoSizeText(
                          'Jan 1, 2024 - Dec 13, 2024',
                          maxFontSize: 14,
                          minFontSize: 12,
                          maxLines: 1,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                        ),
                      ],
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 1,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Image.asset(
                        'assets/pr.png',
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Card.outlined(
            elevation: 8,
            shadowColor: Colors.transparent,
            child: StatefulValueListenableBuilder(
              valueListenable: contributors,
              idleBuilder:
                  (BuildContext context, List<Contributor>? contributors) {
                if (contributors == null) {
                  return const Center(child: Text('No data available'));
                }

                return ContributorsGraph(contributors: contributors);
              },
            ),
          ),
        ),
      ],
    );
  }
}

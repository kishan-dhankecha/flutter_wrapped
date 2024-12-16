import 'package:auto_size_text_plus/auto_size_text_plus.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../domain/entities/popular_item.dart';

final popularPRs = [
  PopularItem(
    id: '152472',
    imageAsset: 'assets/popular_pr_1.png',
    title: 'PR #152472',
    description: 'Popular Pull Request',
    reactions: Reactions(
      url:
          'https://api.github.com/repos/flutter/flutter/issues/152472/reactions',
      totalCount: 59,
      plusOne: 17,
      minusOne: 0,
      laugh: 0,
      hooray: 36,
      confused: 0,
      heart: 4,
      rocket: 2,
      eyes: 0,
    ),
  ),
  PopularItem(
    id: '141818',
    imageAsset: 'assets/popular_pr_2.png',
    title: 'PR #141818',
    description: 'Popular Pull Request',
    reactions: Reactions(
      url:
          'https://api.github.com/repos/flutter/flutter/issues/141818/reactions',
      totalCount: 44,
      plusOne: 18,
      minusOne: 0,
      laugh: 0,
      hooray: 10,
      confused: 0,
      heart: 0,
      rocket: 16,
      eyes: 0,
    ),
  ),
  PopularItem(
    id: '146147171256',
    imageAsset: 'assets/popular_pr_3.png',
    title: 'PR #147171',
    description: 'Popular Pull Request',
    reactions: Reactions(
      url:
          'https://api.github.com/repos/flutter/flutter/issues/147171/reactions',
      totalCount: 26,
      plusOne: 9,
      minusOne: 0,
      laugh: 0,
      hooray: 9,
      confused: 0,
      heart: 0,
      rocket: 8,
      eyes: 0,
    ),
  ),
];

final popularIssues = [
  PopularItem(
    id: '145954',
    imageAsset: 'assets/popular_issue_1.png',
    title: 'Issue #145954',
    description: 'Popular Issue',
    reactions: Reactions(
      url:
          'https://api.github.com/repos/flutter/flutter/issues/145954/reactions',
      totalCount: 328,
      plusOne: 217,
      minusOne: 51,
      laugh: 0,
      hooray: 15,
      confused: 2,
      heart: 17,
      rocket: 21,
      eyes: 5,
    ),
  ),
  PopularItem(
    id: '151065',
    imageAsset: 'assets/popular_issue_2.png',
    title: 'Issue #151065',
    description: 'Popular Issue',
    reactions: Reactions(
      url:
          'https://api.github.com/repos/flutter/flutter/issues/151065/reactions',
      totalCount: 160,
      plusOne: 144,
      minusOne: 0,
      laugh: 0,
      hooray: 0,
      confused: 0,
      heart: 0,
      rocket: 8,
      eyes: 8,
    ),
  ),
  PopularItem(
    id: '142845',
    imageAsset: 'assets/popular_issue_3.png',
    title: 'Issue #142845',
    description: 'Popular Issue',
    reactions: Reactions(
      url:
          'https://api.github.com/repos/flutter/flutter/issues/142845/reactions',
      totalCount: 120,
      plusOne: 94,
      minusOne: 0,
      laugh: 0,
      hooray: 8,
      confused: 0,
      heart: 7,
      rocket: 0,
      eyes: 11,
    ),
  ),
];

class NotablePage extends StatelessWidget {
  const NotablePage({super.key});

  Future<void> launchGitHubUrl(String prId) async {
    if (!await launchUrl(
        Uri.parse('https://github.com/flutter/flutter/pull/$prId'))) {
      throw Exception('Could not launch');
    }
  }

  Widget _buildReactionButton(
    BuildContext context, {
    required String assetName,
    required int count,
  }) {
    return Row(
      spacing: 8,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/$assetName',
          width: 24,
          height: 24,
        ),
        Text(
          count.toString(),
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }

  Widget _buildReactionRow(BuildContext context, Reactions reactions) {
    return Wrap(
      spacing: 16,
      children: [
        if (reactions.plusOne > 0)
          _buildReactionButton(
            context,
            assetName: 'thumbs-up.png',
            count: reactions.plusOne,
          ),
        if (reactions.minusOne > 0)
          _buildReactionButton(
            context,
            assetName: 'thumbs-down.png',
            count: reactions.minusOne,
          ),
        if (reactions.laugh > 0)
          _buildReactionButton(
            context,
            assetName: 'grinning-face.png',
            count: reactions.laugh,
          ),
        if (reactions.hooray > 0)
          _buildReactionButton(
            context,
            assetName: 'party-popper.png',
            count: reactions.hooray,
          ),
        if (reactions.confused > 0)
          _buildReactionButton(
            context,
            assetName: 'confused-face.png',
            count: reactions.confused,
          ),
        if (reactions.heart > 0)
          _buildReactionButton(
            context,
            assetName: 'red-heart.png',
            count: reactions.heart,
          ),
        if (reactions.rocket > 0)
          _buildReactionButton(
            context,
            assetName: 'rocket.png',
            count: reactions.rocket,
          ),
        if (reactions.eyes > 0)
          _buildReactionButton(
            context,
            assetName: 'eyes.png',
            count: reactions.eyes,
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              spacing: 16,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AutoSizeText(
                      'Most Popular PRs',
                      maxFontSize: 34,
                      minFontSize: 12,
                      maxLines: 2,
                      style:
                          Theme.of(context).textTheme.displayMedium!.copyWith(
                                fontWeight: FontWeight.w900,
                              ),
                    ),
                    const SizedBox(height: 8),
                    AutoSizeText(
                      'Based on reactions',
                      maxFontSize: 16,
                      minFontSize: 12,
                      maxLines: 2,
                      style:
                          Theme.of(context).textTheme.displayMedium!.copyWith(
                                color: Theme.of(context).colorScheme.secondary,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                    const SizedBox(height: 16),
                    Wrap(
                      spacing: 16,
                      runSpacing: 16,
                      children: [
                        ...popularPRs.map((item) => SizedBox(
                              width: 400,
                              child: MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  onTap: () => launchGitHubUrl(item.id),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      border: Border.all(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondaryContainer,
                                        strokeAlign:
                                            BorderSide.strokeAlignOutside,
                                      ),
                                    ),
                                    clipBehavior: Clip.hardEdge,
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          item.imageAsset,
                                          fit: BoxFit.cover,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: _buildReactionRow(
                                              context, item.reactions),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AutoSizeText(
                      'Most Popular Issues',
                      maxFontSize: 34,
                      minFontSize: 12,
                      maxLines: 2,
                      style:
                          Theme.of(context).textTheme.displayMedium!.copyWith(
                                fontWeight: FontWeight.w900,
                              ),
                    ),
                    const SizedBox(height: 8),
                    AutoSizeText(
                      'Based on reactions',
                      maxFontSize: 16,
                      minFontSize: 12,
                      maxLines: 2,
                      style:
                          Theme.of(context).textTheme.displayMedium!.copyWith(
                                color: Theme.of(context).colorScheme.secondary,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                    const SizedBox(height: 16),
                    Wrap(
                      spacing: 16,
                      runSpacing: 16,
                      children: [
                        ...popularIssues.map((item) => SizedBox(
                              width: 400,
                              child: MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  onTap: () => launchGitHubUrl(item.id),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      border: Border.all(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondaryContainer,
                                        strokeAlign:
                                            BorderSide.strokeAlignOutside,
                                      ),
                                    ),
                                    clipBehavior: Clip.hardEdge,
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          item.imageAsset,
                                          fit: BoxFit.cover,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.9),
                                          child: _buildReactionRow(
                                              context, item.reactions),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class PopularItem {
  final String id;
  final String imageAsset;
  final String title;
  final String description;
  final Reactions reactions;

  const PopularItem({
    required this.id,
    required this.imageAsset,
    required this.title,
    required this.description,
    required this.reactions,
  });
}

class Reactions {
  final String url;
  final int totalCount;
  final int plusOne;
  final int minusOne;
  final int laugh;
  final int hooray;
  final int confused;
  final int heart;
  final int rocket;
  final int eyes;

  const Reactions({
    required this.url,
    required this.totalCount,
    required this.plusOne,
    required this.minusOne,
    required this.laugh,
    required this.hooray,
    required this.confused,
    required this.heart,
    required this.rocket,
    required this.eyes,
  });
}

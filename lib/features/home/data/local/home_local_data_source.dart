import 'package:flutter_wrapped/features/home/domain/entities/contributor.dart';

abstract interface class HomeLocalDataSource {
  void onInit();

  Future<List<Contributor>> fetchFlutterCommitters();
  Future<List<Contributor>> fetchFlutterReviewers();

  Future<List<Contributor>> fetchFlutterEngineCommitters();
  Future<List<Contributor>> fetchFlutterEngineReviewers();

  Future<List<Contributor>> fetchFlutterPackagesCommitters();
  Future<List<Contributor>> fetchFlutterPackagesReviewers();

  void dispose();
}

class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  HomeLocalDataSourceImpl();

  List<Contributor> _flutterCommitters = _flutterCommittersData();
  List<Contributor> _flutterReviewers = _flutterReviewersData();

  List<Contributor> _flutterEngineCommitters = _flutterEngineCommittersData();
  List<Contributor> _flutterEngineReviewers = _flutterEngineReviewersData();

  List<Contributor> _flutterPackagesCommitters =
      _flutterPackagesCommittersData();
  List<Contributor> _flutterPackagesReviewers = _flutterPackagesReviewersData();

  @override
  Future<List<Contributor>> fetchFlutterCommitters() {
    return Future.value(_flutterCommitters);
  }

  @override
  Future<List<Contributor>> fetchFlutterReviewers() {
    return Future.value(_flutterReviewers);
  }

  @override
  Future<List<Contributor>> fetchFlutterEngineCommitters() {
    return Future.value(_flutterEngineCommitters);
  }

  @override
  Future<List<Contributor>> fetchFlutterEngineReviewers() {
    return Future.value(_flutterEngineReviewers);
  }

  @override
  Future<List<Contributor>> fetchFlutterPackagesCommitters() {
    return Future.value(_flutterPackagesCommitters);
  }

  @override
  Future<List<Contributor>> fetchFlutterPackagesReviewers() {
    return Future.value(_flutterPackagesReviewers);
  }

  @override
  void onInit() {
    // Simulate a delay in the initialization of the auth state.
    Future.delayed(const Duration(milliseconds: 300), () async {
      _flutterCommitters = await fetchFlutterCommitters();
      _flutterReviewers = await fetchFlutterReviewers();
      _flutterEngineCommitters = await fetchFlutterEngineCommitters();
      _flutterEngineReviewers = await fetchFlutterEngineReviewers();
      _flutterPackagesCommitters = await fetchFlutterPackagesCommitters();
      _flutterPackagesReviewers = await fetchFlutterPackagesReviewers();
    });
  }

  @override
  void dispose() {
    _flutterCommitters = <Contributor>[];
    _flutterReviewers = <Contributor>[];
    _flutterEngineCommitters = <Contributor>[];
    _flutterEngineReviewers = <Contributor>[];
    _flutterPackagesCommitters = <Contributor>[];
    _flutterPackagesReviewers = <Contributor>[];
  }
}

List<Contributor> _flutterCommittersData() {
  int xIndex = 0;
  final List<Contributor> contributors = [];

  contributors.add(Contributor(
    x: xIndex++,
    name: 'ValentinVignal',
    commits: 110,
    imageUrl: "https://avatars.githubusercontent.com/u/32538273?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'TahaTesser',
    commits: 104,
    imageUrl: "https://avatars.githubusercontent.com/u/48603081?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'matanlurey',
    commits: 90,
    imageUrl: "https://avatars.githubusercontent.com/u/168174?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'andrewkolos',
    commits: 90,
    imageUrl: "https://avatars.githubusercontent.com/u/9027551?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'goderbauer',
    commits: 90,
    imageUrl: "https://avatars.githubusercontent.com/u/1227763?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'bleroux',
    commits: 86,
    imageUrl: "https://avatars.githubusercontent.com/u/840911?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'polina-c',
    commits: 74,
    imageUrl: "https://avatars.githubusercontent.com/u/12115586?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'gmackall',
    commits: 72,
    imageUrl: "https://avatars.githubusercontent.com/u/34871572?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'nate-thegrate',
    commits: 69,
    imageUrl: "https://avatars.githubusercontent.com/u/10457200?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'LongCatIsLooong',
    commits: 68,
    imageUrl: "https://avatars.githubusercontent.com/u/31859944?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'zanderso',
    commits: 63,
    imageUrl: "https://avatars.githubusercontent.com/u/6343103?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'Piinks',
    commits: 56,
    imageUrl: "https://avatars.githubusercontent.com/u/16964204?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'jmagman',
    commits: 54,
    imageUrl: "https://avatars.githubusercontent.com/u/682784?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'QuncCccccc',
    commits: 47,
    imageUrl: "https://avatars.githubusercontent.com/u/36861262?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'ksokolovskyi',
    commits: 47,
    imageUrl: "https://avatars.githubusercontent.com/u/30288967?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'jonahwilliams',
    commits: 45,
    imageUrl: "https://avatars.githubusercontent.com/u/8975114?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'loic-sharma',
    commits: 42,
    imageUrl: "https://avatars.githubusercontent.com/u/737941?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'christopherfujino',
    commits: 38,
    imageUrl: "https://avatars.githubusercontent.com/u/7856010?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'jason-simmons',
    commits: 37,
    imageUrl: "https://avatars.githubusercontent.com/u/14226037?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'Hixie',
    commits: 37,
    imageUrl: "https://avatars.githubusercontent.com/u/551196?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'vashworth',
    commits: 31,
    imageUrl: "https://avatars.githubusercontent.com/u/15619084?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'victorsanni',
    commits: 30,
    imageUrl: "https://avatars.githubusercontent.com/u/77553258?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'eyebrowsoffire',
    commits: 30,
    imageUrl: "https://avatars.githubusercontent.com/u/26911996?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'yjbanov',
    commits: 29,
    imageUrl: "https://avatars.githubusercontent.com/u/211513?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'godofredoc',
    commits: 29,
    imageUrl: "https://avatars.githubusercontent.com/u/54371434?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'itsjustkevin',
    commits: 28,
    imageUrl: "https://avatars.githubusercontent.com/u/11145366?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'hannah-hyj',
    commits: 27,
    imageUrl: "https://avatars.githubusercontent.com/u/108393416?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'dkwingsmt',
    commits: 26,
    imageUrl: "https://avatars.githubusercontent.com/u/1596656?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'reidbaker',
    commits: 26,
    imageUrl: "https://avatars.githubusercontent.com/u/1063596?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'dcharkes',
    commits: 26,
    imageUrl: "https://avatars.githubusercontent.com/u/3601775?v=4",
  ));

  return contributors;
}

List<Contributor> _flutterReviewersData() {
  int xIndex = 0;
  final List<Contributor> reviewers = [];

  reviewers.add(Contributor(
    x: xIndex++,
    name: 'christopherfujino',
    commits: 268,
    imageUrl: "https://avatars.githubusercontent.com/u/7856010?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'goderbauer',
    commits: 238,
    imageUrl: "https://avatars.githubusercontent.com/u/1227763?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'justinmc',
    commits: 219,
    imageUrl: "https://avatars.githubusercontent.com/u/389558?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'Piinks',
    commits: 174,
    imageUrl: "https://avatars.githubusercontent.com/u/16964204?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'bleroux',
    commits: 152,
    imageUrl: "https://avatars.githubusercontent.com/u/840911?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'reidbaker',
    commits: 146,
    imageUrl: "https://avatars.githubusercontent.com/u/1063596?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'QuncCccccc',
    commits: 139,
    imageUrl: "https://avatars.githubusercontent.com/u/36861262?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'nate-thegrate',
    commits: 124,
    imageUrl: "https://avatars.githubusercontent.com/u/10457200?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'andrewkolos',
    commits: 123,
    imageUrl: "https://avatars.githubusercontent.com/u/9027551?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'gspencergoog',
    commits: 119,
    imageUrl: "https://avatars.githubusercontent.com/u/8867023?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'TahaTesser',
    commits: 114,
    imageUrl: "https://avatars.githubusercontent.com/u/48603081?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'jmagman',
    commits: 108,
    imageUrl: "https://avatars.githubusercontent.com/u/682784?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'jonahwilliams',
    commits: 97,
    imageUrl: "https://avatars.githubusercontent.com/u/8975114?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'chunhtai',
    commits: 90,
    imageUrl: "https://avatars.githubusercontent.com/u/47866232?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'matanlurey',
    commits: 79,
    imageUrl: "https://avatars.githubusercontent.com/u/168174?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'victorsanni',
    commits: 75,
    imageUrl: "https://avatars.githubusercontent.com/u/77553258?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'MitchellGoodwin',
    commits: 67,
    imageUrl: "https://avatars.githubusercontent.com/u/58190796?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'Renzo-Olivares',
    commits: 67,
    imageUrl: "https://avatars.githubusercontent.com/u/948037?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'zanderso',
    commits: 66,
    imageUrl: "https://avatars.githubusercontent.com/u/6343103?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'gmackall',
    commits: 59,
    imageUrl: "https://avatars.githubusercontent.com/u/34871572?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'bkonyi',
    commits: 55,
    imageUrl: "https://avatars.githubusercontent.com/u/24210656?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'LongCatIsLooong',
    commits: 51,
    imageUrl: "https://avatars.githubusercontent.com/u/31859944?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'polina-c',
    commits: 50,
    imageUrl: "https://avatars.githubusercontent.com/u/12115586?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'HansMuller',
    commits: 48,
    imageUrl: "https://avatars.githubusercontent.com/u/1377460?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'loic-sharma',
    commits: 42,
    imageUrl: "https://avatars.githubusercontent.com/u/737941?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'dkwingsmt',
    commits: 37,
    imageUrl: "https://avatars.githubusercontent.com/u/1596656?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'yjbanov',
    commits: 36,
    imageUrl: "https://avatars.githubusercontent.com/u/211513?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'cbracken',
    commits: 36,
    imageUrl: "https://avatars.githubusercontent.com/u/351029?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'stuartmorgan',
    commits: 36,
    imageUrl: "https://avatars.githubusercontent.com/u/122189?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'bartekpacia',
    commits: 33,
    imageUrl: "https://avatars.githubusercontent.com/u/40357511?v=4",
  ));

  return reviewers;
}

List<Contributor> _flutterEngineCommittersData() {
  int xIndex = 0;
  final List<Contributor> contributors = [];

  contributors.add(Contributor(
    x: xIndex++,
    name: 'jonahwilliams',
    commits: 434,
    imageUrl: "https://avatars.githubusercontent.com/u/8975114?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'matanlurey',
    commits: 191,
    imageUrl: "https://avatars.githubusercontent.com/u/168174?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'gaaclarke',
    commits: 154,
    imageUrl: "https://avatars.githubusercontent.com/u/30870216?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'cbracken',
    commits: 151,
    imageUrl: "https://avatars.githubusercontent.com/u/351029?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'jason-simmons',
    commits: 142,
    imageUrl: "https://avatars.githubusercontent.com/u/14226037?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'chinmaygarde',
    commits: 142,
    imageUrl: "https://avatars.githubusercontent.com/u/44085?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'zanderso',
    commits: 122,
    imageUrl: "https://avatars.githubusercontent.com/u/6343103?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'bdero',
    commits: 108,
    imageUrl: "https://avatars.githubusercontent.com/u/919017?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'robert-ancell',
    commits: 82,
    imageUrl: "https://avatars.githubusercontent.com/u/126560?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'flar',
    commits: 76,
    imageUrl: "https://avatars.githubusercontent.com/u/50503328?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'eyebrowsoffire',
    commits: 51,
    imageUrl: "https://avatars.githubusercontent.com/u/26911996?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'loic-sharma',
    commits: 50,
    imageUrl: "https://avatars.githubusercontent.com/u/737941?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'jmagman',
    commits: 47,
    imageUrl: "https://avatars.githubusercontent.com/u/682784?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'yjbanov',
    commits: 33,
    imageUrl: "https://avatars.githubusercontent.com/u/211513?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'dnfield',
    commits: 30,
    imageUrl: "https://avatars.githubusercontent.com/u/8620741?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'gmackall',
    commits: 29,
    imageUrl: "https://avatars.githubusercontent.com/u/34871572?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'harryterkelsen',
    commits: 28,
    imageUrl: "https://avatars.githubusercontent.com/u/1961493?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'zijiehe-google-com',
    commits: 27,
    imageUrl: "https://avatars.githubusercontent.com/u/68449066?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'johnmccutchan',
    commits: 26,
    imageUrl: "https://avatars.githubusercontent.com/u/224266?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'dkwingsmt',
    commits: 25,
    imageUrl: "https://avatars.githubusercontent.com/u/1596656?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'itsjustkevin',
    commits: 24,
    imageUrl: "https://avatars.githubusercontent.com/u/11145366?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'ditman',
    commits: 21,
    imageUrl: "https://avatars.githubusercontent.com/u/1255594?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'mdebbar',
    commits: 21,
    imageUrl: "https://avatars.githubusercontent.com/u/1278212?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'tugorez',
    commits: 17,
    imageUrl: "https://avatars.githubusercontent.com/u/7821057?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'knopp',
    commits: 15,
    imageUrl: "https://avatars.githubusercontent.com/u/96958?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'aam',
    commits: 15,
    imageUrl: "https://avatars.githubusercontent.com/u/381137?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'kjlubick',
    commits: 15,
    imageUrl: "https://avatars.githubusercontent.com/u/6819944?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'hellohuanlin',
    commits: 14,
    imageUrl: "https://avatars.githubusercontent.com/u/41930132?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'godofredoc',
    commits: 13,
    imageUrl: "https://avatars.githubusercontent.com/u/54371434?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'reidbaker',
    commits: 13,
    imageUrl: "https://avatars.githubusercontent.com/u/1063596?v=4",
  ));

  return contributors;
}

List<Contributor> _flutterEngineReviewersData() {
  int xIndex = 0;
  final List<Contributor> reviewers = [];

  reviewers.add(Contributor(
    x: xIndex++,
    name: 'jonahwilliams',
    commits: 533,
    imageUrl: "https://avatars.githubusercontent.com/u/8975114?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'chinmaygarde',
    commits: 333,
    imageUrl: "https://avatars.githubusercontent.com/u/44085?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'zanderso',
    commits: 277,
    imageUrl: "https://avatars.githubusercontent.com/u/6343103?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'matanlurey',
    commits: 198,
    imageUrl: "https://avatars.githubusercontent.com/u/168174?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'cbracken',
    commits: 178,
    imageUrl: "https://avatars.githubusercontent.com/u/351029?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'gaaclarke',
    commits: 159,
    imageUrl: "https://avatars.githubusercontent.com/u/30870216?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'jason-simmons',
    commits: 144,
    imageUrl: "https://avatars.githubusercontent.com/u/14226037?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'bdero',
    commits: 116,
    imageUrl: "https://avatars.githubusercontent.com/u/919017?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'yjbanov',
    commits: 85,
    imageUrl: "https://avatars.githubusercontent.com/u/211513?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'loic-sharma',
    commits: 80,
    imageUrl: "https://avatars.githubusercontent.com/u/737941?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'jmagman',
    commits: 70,
    imageUrl: "https://avatars.githubusercontent.com/u/682784?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'johnmccutchan',
    commits: 69,
    imageUrl: "https://avatars.githubusercontent.com/u/224266?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'stuartmorgan',
    commits: 61,
    imageUrl: "https://avatars.githubusercontent.com/u/122189?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'reidbaker',
    commits: 55,
    imageUrl: "https://avatars.githubusercontent.com/u/1063596?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'mdebbar',
    commits: 53,
    imageUrl: "https://avatars.githubusercontent.com/u/1278212?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'jtmcdole',
    commits: 53,
    imageUrl: "https://avatars.githubusercontent.com/u/1924313?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'flar',
    commits: 50,
    imageUrl: "https://avatars.githubusercontent.com/u/50503328?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'eyebrowsoffire',
    commits: 48,
    imageUrl: "https://avatars.githubusercontent.com/u/26911996?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'hellohuanlin',
    commits: 41,
    imageUrl: "https://avatars.githubusercontent.com/u/41930132?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'yaakovschectman',
    commits: 39,
    imageUrl: "https://avatars.githubusercontent.com/u/109111084?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'ditman',
    commits: 39,
    imageUrl: "https://avatars.githubusercontent.com/u/1255594?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'christopherfujino',
    commits: 36,
    imageUrl: "https://avatars.githubusercontent.com/u/7856010?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'gmackall',
    commits: 33,
    imageUrl: "https://avatars.githubusercontent.com/u/34871572?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'dkwingsmt',
    commits: 28,
    imageUrl: "https://avatars.githubusercontent.com/u/1596656?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'harryterkelsen',
    commits: 27,
    imageUrl: "https://avatars.githubusercontent.com/u/1961493?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'dnfield',
    commits: 26,
    imageUrl: "https://avatars.githubusercontent.com/u/8620741?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'jrwang',
    commits: 25,
    imageUrl: "https://avatars.githubusercontent.com/u/1123594?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'CaseyHillers',
    commits: 22,
    imageUrl: "https://avatars.githubusercontent.com/u/2148558?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'keyonghan',
    commits: 21,
    imageUrl: "https://avatars.githubusercontent.com/u/54558023?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'chunhtai',
    commits: 19,
    imageUrl: "https://avatars.githubusercontent.com/u/47866232?v=4",
  ));

  return reviewers;
}

List<Contributor> _flutterPackagesCommittersData() {
  int xIndex = 0;
  final List<Contributor> contributors = [];

  contributors.add(Contributor(
    x: xIndex++,
    name: 'stuartmorgan',
    commits: 183,
    imageUrl: "https://avatars.githubusercontent.com/u/122189?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'bparrishMines',
    commits: 59,
    imageUrl: "https://avatars.githubusercontent.com/u/10687576?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'camsim99',
    commits: 37,
    imageUrl: "https://avatars.githubusercontent.com/u/43054281?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'jmagman',
    commits: 29,
    imageUrl: "https://avatars.githubusercontent.com/u/682784?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'ditman',
    commits: 28,
    imageUrl: "https://avatars.githubusercontent.com/u/1255594?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'LouiseHsu',
    commits: 27,
    imageUrl: "https://avatars.githubusercontent.com/u/36148254?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'tarrinneal',
    commits: 21,
    imageUrl: "https://avatars.githubusercontent.com/u/71907763?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'loic-sharma',
    commits: 20,
    imageUrl: "https://avatars.githubusercontent.com/u/737941?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'matanlurey',
    commits: 19,
    imageUrl: "https://avatars.githubusercontent.com/u/168174?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'yaakovschectman',
    commits: 18,
    imageUrl: "https://avatars.githubusercontent.com/u/109111084?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'vashworth',
    commits: 17,
    imageUrl: "https://avatars.githubusercontent.com/u/15619084?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'gmackall',
    commits: 15,
    imageUrl: "https://avatars.githubusercontent.com/u/34871572?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'reidbaker',
    commits: 15,
    imageUrl: "https://avatars.githubusercontent.com/u/1063596?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'jokerttu',
    commits: 8,
    imageUrl: "https://avatars.githubusercontent.com/u/5219613?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'chunhtai',
    commits: 7,
    imageUrl: "https://avatars.githubusercontent.com/u/47866232?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'ValentinVignal',
    commits: 7,
    imageUrl: "https://avatars.githubusercontent.com/u/32538273?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'misos1',
    commits: 6,
    imageUrl: "https://avatars.githubusercontent.com/u/30872003?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'jesswrd',
    commits: 5,
    imageUrl: "https://avatars.githubusercontent.com/u/177268149?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'stereotype441',
    commits: 4,
    imageUrl: "https://avatars.githubusercontent.com/u/306375?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'jonahwilliams',
    commits: 4,
    imageUrl: "https://avatars.githubusercontent.com/u/8975114?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'kenzieschmoll',
    commits: 4,
    imageUrl: "https://avatars.githubusercontent.com/u/43759233?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'Hixie',
    commits: 4,
    imageUrl: "https://avatars.githubusercontent.com/u/551196?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'eyebrowsoffire',
    commits: 4,
    imageUrl: "https://avatars.githubusercontent.com/u/26911996?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'EchoEllet',
    commits: 3,
    imageUrl: "https://avatars.githubusercontent.com/u/73608287?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'sinyu1012',
    commits: 3,
    imageUrl: "https://avatars.githubusercontent.com/u/11555978?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'navaronbracke',
    commits: 3,
    imageUrl: "https://avatars.githubusercontent.com/u/23480364?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'srujzs',
    commits: 3,
    imageUrl: "https://avatars.githubusercontent.com/u/58529443?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'srawlins',
    commits: 3,
    imageUrl: "https://avatars.githubusercontent.com/u/103167?v=4",
  ));
  contributors.add(Contributor(
    x: xIndex++,
    name: 'LinXunFeng',
    commits: 3,
    imageUrl: "https://avatars.githubusercontent.com/u/19367531?v=4",
  ));

  return contributors;
}

List<Contributor> _flutterPackagesReviewersData() {
  int xIndex = 0;
  final List<Contributor> reviewers = [];

  reviewers.add(Contributor(
    x: xIndex++,
    name: 'stuartmorgan',
    commits: 285,
    imageUrl: "https://avatars.githubusercontent.com/u/122189?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'tarrinneal',
    commits: 126,
    imageUrl: "https://avatars.githubusercontent.com/u/71907763?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'reidbaker',
    commits: 98,
    imageUrl: "https://avatars.githubusercontent.com/u/1063596?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'gmackall',
    commits: 85,
    imageUrl: "https://avatars.githubusercontent.com/u/34871572?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'camsim99',
    commits: 65,
    imageUrl: "https://avatars.githubusercontent.com/u/43054281?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'bparrishMines',
    commits: 59,
    imageUrl: "https://avatars.githubusercontent.com/u/10687576?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'hellohuanlin',
    commits: 57,
    imageUrl: "https://avatars.githubusercontent.com/u/41930132?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'ditman',
    commits: 45,
    imageUrl: "https://avatars.githubusercontent.com/u/1255594?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'chunhtai',
    commits: 38,
    imageUrl: "https://avatars.githubusercontent.com/u/47866232?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'jmagman',
    commits: 37,
    imageUrl: "https://avatars.githubusercontent.com/u/682784?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'domesticmouse',
    commits: 36,
    imageUrl: "https://avatars.githubusercontent.com/u/30503?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'cbracken',
    commits: 33,
    imageUrl: "https://avatars.githubusercontent.com/u/351029?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'hannah-hyj',
    commits: 30,
    imageUrl: "https://avatars.githubusercontent.com/u/108393416?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'gspencergoog',
    commits: 30,
    imageUrl: "https://avatars.githubusercontent.com/u/8867023?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'LouiseHsu',
    commits: 22,
    imageUrl: "https://avatars.githubusercontent.com/u/36148254?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'matanlurey',
    commits: 21,
    imageUrl: "https://avatars.githubusercontent.com/u/168174?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'vashworth',
    commits: 15,
    imageUrl: "https://avatars.githubusercontent.com/u/15619084?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'loic-sharma',
    commits: 14,
    imageUrl: "https://avatars.githubusercontent.com/u/737941?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'Piinks',
    commits: 13,
    imageUrl: "https://avatars.githubusercontent.com/u/16964204?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'jonahwilliams',
    commits: 13,
    imageUrl: "https://avatars.githubusercontent.com/u/8975114?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'Hixie',
    commits: 12,
    imageUrl: "https://avatars.githubusercontent.com/u/551196?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'yjbanov',
    commits: 12,
    imageUrl: "https://avatars.githubusercontent.com/u/211513?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'kevmoo',
    commits: 10,
    imageUrl: "https://avatars.githubusercontent.com/u/17034?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'goderbauer',
    commits: 9,
    imageUrl: "https://avatars.githubusercontent.com/u/1227763?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'Renzo-Olivares',
    commits: 9,
    imageUrl: "https://avatars.githubusercontent.com/u/948037?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'gaaclarke',
    commits: 8,
    imageUrl: "https://avatars.githubusercontent.com/u/30870216?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'johnmccutchan',
    commits: 5,
    imageUrl: "https://avatars.githubusercontent.com/u/224266?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'johnpryan',
    commits: 4,
    imageUrl: "https://avatars.githubusercontent.com/u/1145719?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'mdebbar',
    commits: 4,
    imageUrl: "https://avatars.githubusercontent.com/u/1278212?v=4",
  ));
  reviewers.add(Contributor(
    x: xIndex++,
    name: 'nate-thegrate',
    commits: 3,
    imageUrl: "https://avatars.githubusercontent.com/u/10457200?v=4",
  ));

  return reviewers;
}

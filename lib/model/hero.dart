import 'dart:ui';

class DotaHero {
  final String name;
  final String image;
  final List<String> heroClass;
  final List<List<String>> skills;
  final List<HeroSkillStats> stats;
  final int viewNumber;
  final Color clipPathColor;
  final double bottom;
  final double right;
  final double height;
  final double width;

  DotaHero(
      {required this.name,
      required this.image,
      required this.heroClass,
      required this.skills,
      required this.stats,
      required this.viewNumber,
      required this.clipPathColor,
      required this.bottom,
      required this.right,
      required this.height,
      required this.width});
}

class HeroSkillStats {
  final String type;
  final double firstValue;
  final double levelValue;

  HeroSkillStats(
      {required this.type, required this.firstValue, required this.levelValue});
}

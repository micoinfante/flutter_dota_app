import 'dart:ui';
import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/heroes.dart' as h;

import 'package:dota_app/model/hero.dart';

enum HeroesType { All, Popular, Favorites }

class HeroList extends ChangeNotifier {
  // var lst = new List(3) --> Fixed List, var  lst = [val1,val2,val3] or var lst = new List() --> Growable List
  final List<DotaHero> _allHeros = [
    DotaHero(
      name: 'Juggernaunt',
      image: 'juggernaut',
      viewNumber: 35,
      clipPathColor: Color(0xffc43a3d),
      bottom: 15.0,
      right: -65.0,
      height: 210.0,
      width: 250.0,
      heroClass: ['Carry', 'Pusher'],
      skills: [
        ['Blade Fury', 'Blade_Fury_icon.png'],
        ['Healing Ward', 'Healing_Ward_icon.png'],
        ['Blade Dance', 'Blade_Dance_icon.png'],
        ['Omnislash', 'Omnislash_icon.png'],
        ['Swiftslash', 'Swiftslash_icon.png'],
      ],
      stats: [
        HeroSkillStats(type: 'STR', firstValue: 21, levelValue: 2.2),
        HeroSkillStats(type: 'AGI', firstValue: 34, levelValue: 2.8),
        HeroSkillStats(type: 'INT', firstValue: 14, levelValue: 1.4),
      ],
    ),
    DotaHero(
      clipPathColor: Colors.purple[800]!,
      image: 'ogremagi',
      name: 'Ogre Magi',
      viewNumber: 25,
      bottom: -30,
      right: -27,
      height: 290,
      width: 250,
      heroClass: [
        'Melee',
        'Disabler',
        'Durable',
        'Initiator',
        'Nuker',
        'Support'
      ],
      skills: [
        ['Fireblast', 'OgreMagi/Fireblast_icon.png'],
        ['Ignite', 'OgreMagi/Ignite_icon.png'],
        ['Bloodlust', 'OgreMagi/Bloodlust_icon.png'],
        ['Unrefined Fireblast', 'OgreMagi/Unrefined_Fireblast_icon.png'],
        ['Multicast', 'OgreMagi/Multicast_icon.png'],
      ],
      stats: [
        HeroSkillStats(type: 'STR', firstValue: 23, levelValue: 3.5),
        HeroSkillStats(type: 'AGI', firstValue: 14, levelValue: 1.5),
        HeroSkillStats(type: 'INT', firstValue: 15, levelValue: 2.5),
      ],
    ),
    DotaHero(
      clipPathColor: Color(0xff4650C8),
      image: 'faceless',
      name: 'Faceless Void',
      viewNumber: 15,
      bottom: -8,
      right: -65,
      height: 245,
      width: 250,
      heroClass: [
        'Melee',
        'Carry',
        'Disabler',
        'Durable',
        'Escape',
        'Initiator'
      ],
      skills: [
        ['Time Walk', 'FacelessVoid/Time_Walk_icon.png'],
        ['Time Dilation', 'FacelessVoid/Time_Dilation_icon.png'],
        ['Time Lock', 'FacelessVoid/Time_Lock_icon.png'],
        ['Chronosphere', 'FacelessVoid/Chronosphere_icon.png'],
      ],
      stats: [
        HeroSkillStats(type: 'STR', firstValue: 22, levelValue: 2.4),
        HeroSkillStats(type: 'AGI', firstValue: 23, levelValue: 3.0),
        HeroSkillStats(type: 'INT', firstValue: 15, levelValue: 1.5),
      ],
    ),
    DotaHero(
      clipPathColor: Color(0xff0e5f7f),
      image: 'zeus',
      name: 'Zeus',
      viewNumber: 12,
      bottom: -6,
      right: -38,
      height: 255,
      width: 250,
      heroClass: ['Ranged', 'Nuker'],
      skills: [
        ['Arc Lightning', 'Zeus/Arc_Lightning_icon.png'],
        ['Lightning Bolt', 'Zeus/Lightning_Bolt_icon.png'],
        ['Nimbus', 'Zeus/Nimbus_icon.png'],
        ['Static Field', 'Zeus/Static_Field_icon.png'],
        ['Thundergod\'s Wrath', 'Zeus/Thundergod\'s_Wrath_icon.png'],
      ],
      stats: [
        HeroSkillStats(type: 'STR', firstValue: 19, levelValue: 2.1),
        HeroSkillStats(type: 'AGI', firstValue: 11, levelValue: 1.2),
        HeroSkillStats(type: 'INT', firstValue: 22, levelValue: 3.3),
      ],
    ),
    DotaHero(
      clipPathColor: Color(0xffb71b1b),
      image: 'bloodseeker',
      name: 'Bloodseeker',
      viewNumber: 50,
      bottom: 40,
      right: -58,
      height: 180,
      width: 250,
      heroClass: [
        'Melee',
        'Carry',
        'Disabler',
        'Initiator',
        'Jungler',
        'Nuker'
      ],
      skills: [
        ['Bloodrage', 'Bloodseeker/Bloodrage_icon.png'],
        ['Blood Rite', 'Bloodseeker/Blood_Rite_icon.png'],
        ['Thirst', 'Bloodseeker/Thirst_icon.png'],
        ['Rupture', 'Bloodseeker/Rupture_icon.png'],
      ],
      stats: [
        HeroSkillStats(type: 'STR', firstValue: 24, levelValue: 2.7),
        HeroSkillStats(type: 'AGI', firstValue: 22, levelValue: 3.4),
        HeroSkillStats(type: 'INT', firstValue: 21, levelValue: 2.0),
      ],
    ),
    DotaHero(
      clipPathColor: Color(0xff1f95a3),
      image: 'tusk',
      name: 'Tusk',
      viewNumber: 5,
      bottom: 30,
      right: -39,
      height: 200,
      width: 250,
      heroClass: ['Melee', 'Disabler', 'Initiator', 'Nuker'],
      skills: [
        ['Ice Shards', 'Tusk/Ice_Shards_icon.png'],
        ['Snowball', 'Tusk/Launch_Snowball_icon.png'],
        ['Tag Team', 'Tusk/Tag_Team_icon.png'],
        ['Walrus Kick', 'Tusk/Walrus_Kick_icon.png'],
        ['Walrus Punch', 'Tusk/Walrus_Punch_icon.png'],
      ],
      stats: [
        HeroSkillStats(type: 'STR', firstValue: 23, levelValue: 3.9),
        HeroSkillStats(type: 'AGI', firstValue: 23, levelValue: 2.1),
        HeroSkillStats(type: 'INT', firstValue: 18, levelValue: 1.7),
      ],
    ),
    DotaHero(
      clipPathColor: Color(0xff6144e2),
      image: 'bane',
      name: 'Bane',
      viewNumber: 20,
      bottom: 0,
      right: -45,
      height: 250,
      width: 250,
      heroClass: ['Ranged', 'Disabler', 'Durable', 'Nuker', 'Support'],
      skills: [
        ['Nightmare', 'Bane/Nightmare_icon.png'],
        ['Brain Sap', 'Bane/Brain_Sap_icon.png'],
        ['Enfeeble', 'Bane/Enfeeble_icon.png'],
        ['Fiend\'s Grip', 'Bane/Fiend\'s_Grip_icon.png'],
      ],
      stats: [
        HeroSkillStats(type: 'STR', firstValue: 22, levelValue: 2.6),
        HeroSkillStats(type: 'AGI', firstValue: 22, levelValue: 2.6),
        HeroSkillStats(type: 'INT', firstValue: 22, levelValue: 2.6),
      ],
    ),
    DotaHero(
      clipPathColor: Color(0xff561515),
      image: 'shadowfiend',
      name: 'Shadow Fiend',
      viewNumber: 10,
      bottom: 10,
      right: -45,
      height: 230,
      width: 250,
      heroClass: ['Ranged', 'Carry', 'Nuker'],
      skills: [
        ['Shadowraze', 'ShadowFiend/Shadowraze_(Far)_icon.png'],
        ['Shadowraze', 'ShadowFiend/Shadowraze_(Medium)_icon.png'],
        ['Shadowraze', 'ShadowFiend/Shadowraze_(Near)_icon.png'],
        ['Necromastery', 'ShadowFiend/Necromastery_icon.png'],
        [
          'Presence of the Dark Lord',
          'ShadowFiend/Presence_of_the_Dark_Lord_icon.png'
        ],
        ['Requiem of Souls icon', 'ShadowFiend/Requiem_of_Souls_icon.png'],
      ],
      stats: [
        HeroSkillStats(type: 'STR', firstValue: 19, levelValue: 2.7),
        HeroSkillStats(type: 'AGI', firstValue: 20, levelValue: 3.5),
        HeroSkillStats(type: 'INT', firstValue: 18, levelValue: 2.2),
      ],
    ),
    DotaHero(
      clipPathColor: Color(0xff0c3554),
      image: 'phantumassassin',
      name: 'P. Assassin',
      viewNumber: 60,
      bottom: 5,
      right: -90,
      height: 230,
      width: 250,
      heroClass: ['Melee', 'Carry', 'Escape'],
      skills: [
        ['Stifling Dagger', 'PhantomAssassin/Stifling_Dagger_icon.png'],
        ['Phantom Strike', 'PhantomAssassin/Phantom_Strike_icon.png'],
        ['Blur', 'PhantomAssassin/Blur_icon.png'],
        ['Coup de Grace', 'PhantomAssassin/Coup_de_Grace_icon.png'],
      ],
      stats: [
        HeroSkillStats(type: 'STR', firstValue: 21, levelValue: 2.2),
        HeroSkillStats(type: 'AGI', firstValue: 23, levelValue: 3.4),
        HeroSkillStats(type: 'INT', firstValue: 15, levelValue: 1.4),
      ],
    ),
    DotaHero(
      clipPathColor: Color(0xff4f0000),
      image: 'axe2',
      name: 'Axe',
      viewNumber: 23,
      bottom: 5,
      right: -60,
      height: 200,
      width: 250,
      heroClass: ['Melee', 'Disabler', 'Durable', 'Initiator', 'Jungler'],
      skills: [
        ['Berserker\'s Call', 'Axe/Berserker\'s_Call_icon.png'],
        ['Battle Hunger', 'Axe/Battle_Hunger_icon.png'],
        ['Counter Helix', 'Axe/Counter_Helix_icon.png'],
        ['Culling Blade', 'Axe/Culling_Blade_icon.png'],
      ],
      stats: [
        HeroSkillStats(type: 'STR', firstValue: 25, levelValue: 3.4),
        HeroSkillStats(type: 'AGI', firstValue: 20, levelValue: 2.2),
        HeroSkillStats(type: 'INT', firstValue: 18, levelValue: 1.6),
      ],
    ),
  ];

  HeroesType _herosType = HeroesType.All;

  late List<DotaHero> _heroes;

  late DotaHero _selectedHero;

  HeroesList() {
    _heroes = List.from(_allHeros);
  }

  List<DotaHero> get heros => _heroes;

  List<DotaHero> get allHeros => _allHeros;

  List<DotaHero> get popularHeros => [
        for (var hero in _allHeros)
          if (hero.viewNumber > 10) hero
      ];

  DotaHero get selectedHero => _selectedHero;

  set setSelectedHero(DotaHero hero) => _selectedHero = hero;

  void toggleHeroesType() {
    //https://github.com/dart-lang/language/blob/master/accepted/2.3/spread-collections/feature-specification.md

    if (_herosType == HeroesType.All) {
      _herosType = HeroesType.Popular;
      _heroes = [
        for (var heroes in _allHeros)
          if (heroes.viewNumber > 30) heroes
      ];
      return notifyListeners();
    } else {
      _herosType = HeroesType.All;
      _heroes = List.from(_allHeros);
      return notifyListeners();
    }
  }

  void setHero({required DotaHero hero}) => _selectedHero = hero;

  HeroesType getHeroesType() {
    return _herosType;
  }
}

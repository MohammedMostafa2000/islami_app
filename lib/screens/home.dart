import 'package:flutter/material.dart';
import 'package:islami_app/core/icons_manager.dart';
import 'package:islami_app/screens/tabs/hadith.dart';
import 'package:islami_app/screens/tabs/quran.dart';
import 'package:islami_app/screens/tabs/sebha.dart';
import 'package:islami_app/screens/tabs/radio.dart';
import 'package:islami_app/screens/tabs/pray_times.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Widget> tabs = [
    Quran(),
    Hadith(),
    Sebha(),
    RadioTab(),
    PrayTimes(),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (tappedIndex) {
          selectedIndex = tappedIndex;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(icon: ImageIcon(AssetImage(IconsManager.quran)), label: 'Quran'),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(IconsManager.hadith)), label: 'Hadith'),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage(IconsManager.sebha)), label: 'Sebha'),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage(IconsManager.radio)), label: 'Radio'),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage(IconsManager.time)), label: 'Time'),
        ],
      ),
      body: tabs[selectedIndex],
    );
  }
}

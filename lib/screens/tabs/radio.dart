import 'package:flutter/material.dart';
import 'package:islami_app/core/colors_manager.dart';
import 'package:islami_app/core/images_manager.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(ImagesManager.radioTabBackground),
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                children: [
                  Image.asset(
                    ImagesManager.islmaiLogo,
                    height: 140,
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: ColorsManager.black,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TabBar(
                      indicatorSize: TabBarIndicatorSize.tab,
                      isScrollable: false,
                      dividerColor: Colors.transparent,
                      indicator: BoxDecoration(
                        color: ColorsManager.gold,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      labelColor: ColorsManager.black,
                      unselectedLabelColor: Colors.white,
                      labelStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      unselectedLabelStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      tabs: [
                        Text(
                          'Radio',
                        ),
                        Text(
                          'Reciters',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: TabBarView(
                      children: [
                        ListViewForTabsContent(),
                        ListViewForTabsContent(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ListViewForTabsContent extends StatelessWidget {
  const ListViewForTabsContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) => RadioItemCard(),
    );
  }
}

class RadioItemCard extends StatefulWidget {
  const RadioItemCard({
    super.key,
  });

  @override
  State<RadioItemCard> createState() => _RadioItemCardState();
}

class _RadioItemCardState extends State<RadioItemCard> {
  bool isSoundPlayed = false;
  bool isSoundMuted = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        height: 133,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(ImagesManager.radioItemCardBackground),
              alignment: Alignment.bottomCenter),
          color: ColorsManager.gold,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Radio Ibrahim Al-Akdar',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: ColorsManager.black,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    isSoundPlayed = !isSoundPlayed;
                    setState(() {});
                  },
                  iconSize: 55,
                  icon: Icon(isSoundPlayed == false ? Icons.play_arrow_rounded : Icons.pause),
                  color: ColorsManager.black,
                ),
                IconButton(
                  onPressed: () {
                    isSoundMuted = !isSoundMuted;
                    setState(() {});
                  },
                  iconSize: 35,
                  icon: Icon(
                      isSoundMuted == false ? Icons.volume_up_rounded : Icons.volume_off_rounded),
                  color: ColorsManager.black,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

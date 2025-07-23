import 'package:flutter/material.dart';
import 'package:islami_app/core/colors_manager.dart';
import 'package:islami_app/core/images_manager.dart';
import 'package:islami_app/data/models/radio_data_model.dart';
import 'package:islami_app/providers/radio_tab_view_model.dart';
import 'package:provider/provider.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: ChangeNotifierProvider(
          create: (context) => RadioTabViewModel()..getRadios(),
          child: Container(
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
                child: Consumer<RadioTabViewModel>(
                  builder: (context, viewModel, child) => Column(
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
                            viewModel.isLoading
                                ? Center(
                                    child: CircularProgressIndicator(
                                      color: ColorsManager.gold,
                                    ),
                                  )
                                : viewModel.radiosList.isNotEmpty
                                    ? ListView.builder(
                                        physics: BouncingScrollPhysics(),
                                        itemCount: viewModel.radiosList.length,
                                        itemBuilder: (context, index) => RadioItemCard(
                                          index: index,
                                          radioDataModel: viewModel.radiosList[index],
                                        ),
                                      )
                                    : Center(
                                        child: Text(
                                        'No Radio',
                                        style: TextStyle(color: ColorsManager.white),
                                      )),
                            Center(
                              child: Text(
                                'reciters',
                                style: TextStyle(color: ColorsManager.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class RadioItemCard extends StatefulWidget {
  const RadioItemCard({
    super.key,
    required this.radioDataModel,
    required this.index,
  });
  final RadioDataModel radioDataModel;
  final int index;
  @override
  State<RadioItemCard> createState() => _RadioItemCardState();
}

class _RadioItemCardState extends State<RadioItemCard> {
  bool isSoundMuted = false;

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<RadioTabViewModel>(context);
    final isPlaying = viewModel.currentPlayingIndex == widget.index;
    final isMuted = viewModel.isMuted && isPlaying;

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
              widget.radioDataModel.name ?? '',
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
                  onPressed: () async {
                    viewModel.togglePlay(widget.index, widget.radioDataModel.url!);
                  },
                  iconSize: 55,
                  icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow_rounded),
                  color: ColorsManager.black,
                ),
                IconButton(
                  onPressed: () {
                    viewModel.toggleSound();
                  },
                  iconSize: 35,
                  icon: Icon(
                    isMuted ? Icons.volume_off_rounded : Icons.volume_up_rounded,
                  ),
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

import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:strat_vault/components/videoplayer.dart';
import 'package:strat_vault/models/map.dart';
import 'package:flutter/material.dart';
import 'package:strat_vault/pages/utility_page.dart';

class MapPage extends StatefulWidget {
  final CSMap map;
  const MapPage({super.key, required this.map});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  
  String selectedUtility = "Smokes";

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xFF576157),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            widget.map.name,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Camcode',
            ),
          ),
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 15,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(
          child: Column(
            children: [
              InteractiveViewer(
                child: SizedBox(
                    height: size.height * 0.5,
                    width: size.width,
                  child: Image.asset(widget.map.calloutsPath, fit: BoxFit.fitHeight)),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: TabBar(
                  indicatorSize:TabBarIndicatorSize.tab, 
                  dividerColor: Colors.transparent,
                  indicator: BoxDecoration(
                    color: const Color.fromARGB(255, 46, 10, 10),
                    borderRadius: BorderRadius.circular(20),
                  ),                  
                  tabs: const [
                    Text(
                        'UTILITIES',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Camcode',)),
                    Text(
                        'CALLOUTS',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Camcode',))
                  ]
                  ),
              ),
              Container(
                height: size.height * 0.35,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TabBarView(
                  children: [
                       _buildUtilityList(),
                      _buildUStratsList(),
                    ],
                   ),
              ),
            ],
          ),
        ),
      ),
    );
  }

Widget _buildUtilityList() {
    if (widget.map.utils.isEmpty) {
      return const Center(
        child: Text(
          "No utilities available",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      );
    }

    return ListView(
      children: widget.map.utils.entries.map<Widget>((utilityType) {
        String utilityName = utilityType.key; 
        Map<String, dynamic> utilitySites = utilityType.value; 

        return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Center(
              child: Text(
                utilityName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Camcode',
                ),
              ),
            ),
          ),
          ...utilitySites.entries.map<Widget>((site) {
            String siteName = site.key; 
            Map<String, dynamic> siteUtilities = site.value;

            return Theme(
              data: ThemeData().copyWith(dividerColor: Colors.transparent),
              child: ExpansionTile(
                title: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    siteName == 'Insta' ? siteName : "$utilityName - Site $siteName",
                    style: const TextStyle(color: Colors.white, fontSize: 18, fontFamily: 'Camcode'),
                  ),
                ),
                showTrailingIcon: false,
                children: siteUtilities.entries.map<Widget>((entry) {
                  return ListTile(
                      title: Container(
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child:
                        entry.key == '' ? const Text('No utility available', style: TextStyle(color: Colors.white, fontSize: 16)) :
                        Text(
                          entry.key, 
                          style: const TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      onTap: () {
                        entry.key == '' ? () :
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UtilityPage(
                              utilityName: entry.key,
                              utilityItems: entry.value,
                            ),
                          ),
                        );
                    },
                  );
                }).toList(),
              ),
            );
          }),
        ],
      );
    }).toList(),
  );
  }

Widget _buildUStratsList() {
  if (widget.map.strats.isEmpty) {
      return const Center(
        child: Text(
          "No strats available",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      );
    }

    return ListView(
      children: widget.map.strats.entries.map<Widget>((site) {
        Map<String, dynamic> strats = site.value; 

        return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            ...strats.entries.map<Widget>((strat) {
              String stratName = strat.key; 
              List stratDetails = strat.value;
              return ListTile(
                  title: Text(
                    stratName, 
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => _openStratsDetails(context, MapEntry(stratName, stratDetails)),
                    );
                  },
                );
            }),
          ],
        );
      }).toList(),
    );
  }

Dialog _openStratsDetails(BuildContext context, MapEntry<String, dynamic> entry) {
  int activeIndex = 0;

  return Dialog(
    child: StatefulBuilder(
      builder: (context, setState) {

         Widget buildIndicator() => AnimatedSmoothIndicator(
            effect: const ExpandingDotsEffect(dotWidth: 5, activeDotColor: Colors.blue),
            activeIndex: activeIndex,
            count: entry.value.length,
        );

      return Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 10),
            CarouselSlider.builder(
              itemCount: entry.value.length,
              itemBuilder: (context, index, realIndex) {
                return displayProperMedia(entry.value[index]);
              },
              options: CarouselOptions(
                height: 400,
                enableInfiniteScroll: false,
                viewportFraction: 1,
                onPageChanged: (index, reason) => setState(() => activeIndex = index),
              ),
            ),
            const SizedBox(height: 20),
            buildIndicator(),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Close"),
            ),
          ],
        ),
  );
}
    ),
  );
}
}

Widget displayProperMedia(String media) {
  if (media.endsWith('.png') || media.endsWith('.jpg')) {
    return Image.asset(media);
  } else if (media.endsWith('.mp4')) {
    return VideoPlayerWidget(media);
  } else {
    return const SizedBox();
  }
  
}

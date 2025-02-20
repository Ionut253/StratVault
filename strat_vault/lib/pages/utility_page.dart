import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:strat_vault/pages/map_page.dart';

class UtilityPage extends StatefulWidget {
  final String utilityName;
  final List<String> utilityItems;

  const UtilityPage({super.key, required this.utilityName, required this.utilityItems});

  @override
  State<UtilityPage> createState() => _UtilityPageState();
}

class _UtilityPageState extends State<UtilityPage> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StatefulBuilder(
      builder: (context, setState) {

         Widget buildIndicator() => AnimatedSmoothIndicator(
            effect: const ExpandingDotsEffect(dotWidth: 5, activeDotColor: Colors.blue),
            activeIndex: activeIndex,
            count: widget.utilityItems.length,
        );

      return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.grey, Colors.brown],
          ),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              CarouselSlider.builder(
                itemCount:  widget.utilityItems.length,
                itemBuilder: (context, index, realIndex) {
                  return InteractiveViewer(
                    child: displayProperMedia(widget.utilityItems[index]));
                },
                options: CarouselOptions(
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
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('lib/images/hint_icon.png', width: 15, height: 15),
                  const SizedBox(width: 10),
                  const Text(
                    'You can zoom in and out',
                    style: TextStyle(
                      color:Colors.black,
                      fontSize: 15))
                ]
                  ),
            ],
          ),
      );
    },
  ),
);
  }
}
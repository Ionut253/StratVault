import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:strat_vault/components/videoplayer.dart';
import 'package:strat_vault/repository/firestore.dart';
import 'package:video_player/video_player.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  void initState() {
    super.initState();
    fetchImage();
    writeData();
    
  }

  Future<void> writeData() async {
    await Provider.of<FirestoreService>(context, listen: false).writeData();
  }

  Future<void> fetchImage() async {
    await Provider.of<FirestoreService>(context, listen: false).fetchImage();
  }


  @override
  Widget build(BuildContext context) {

    int activeIndex = 0;

    return Consumer<FirestoreService>(builder: (BuildContext context, FirestoreService value, Widget? child) { 
      return Scaffold(
      body: StatefulBuilder(
      builder: (context, setState) {

         Widget buildIndicator() => AnimatedSmoothIndicator(
            effect: const ExpandingDotsEffect(dotWidth: 5, activeDotColor: Colors.blue),
            activeIndex: activeIndex,
            count: value.urls.length,
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
                itemCount:  value.urls.length,
                itemBuilder: (context, index, realIndex) {
                  return InteractiveViewer(
                    child: displayProperMed(value.urls[index]));
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
    });
  }
}

Widget displayProperMed(String url) {
  if (url.contains('.mp4')) {
    return VideoWidget(url: url);
  } else {
    return Image.network(url);
  }
}

class VideoWidget extends StatefulWidget {
  final String url;

  const VideoWidget({required this.url});

  @override
  _VideoWidgetState createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  late VideoPlayerController _controller;
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(widget.url))
      ..initialize().then((_) {
        setState(() {
          _isInitialized = true;
        });
        _controller.play();
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _isInitialized
        ? AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller),
          )
        : const Center(child: CircularProgressIndicator());
  }
}
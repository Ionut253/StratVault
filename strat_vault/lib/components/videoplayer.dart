import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget{
  final String videoPath;
  const VideoPlayerWidget(this.videoPath, {super.key});

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController _controller;
  bool _isPlaying = true;

  @override
  void initState() {
    super.initState();
    // ignore: deprecated_member_use
    _controller = VideoPlayerController.network(widget.videoPath)
      ..initialize().then((_) {
        setState(() {}); // Refresh UI after initialization
        _controller.play();
      });

    _controller.setLooping(true);
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose of the controller to prevent memory leaks
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _controller.value.isInitialized
        ? GestureDetector(
            onTap: () {
              setState(() {
                if (_controller.value.isPlaying) {
                  _controller.pause();
                  _isPlaying = false;
                } else {
                  _controller.play();
                  _isPlaying = true;
                }
              });
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                ),
                if (!_isPlaying)
                  const Icon(
                    Icons.play_arrow,
                    size: 50,
                    color: Colors.white,
                  ),
              ],
            ),
          )
        : const Center(child: CircularProgressIndicator());
  }
}

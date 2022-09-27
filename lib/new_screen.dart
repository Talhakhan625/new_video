import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late VideoPlayerController _videoPlayerController;
  bool isStartedPlaying = false;

  @override
  void initState() {
    //TODO: implement initState
    super.initState();
    _videoPlayerController = VideoPlayerController.network(
        'http://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4');
    _videoPlayerController.addListener(() {
      if (isStartedPlaying && !_videoPlayerController.value.isPlaying) {
        Navigator.pop(context);
      }
    });
  }

  @override
  void dispose() {
    //TODO: implement dispose
    _videoPlayerController.dispose();
    super.dispose();
  }

  Future<bool> started() async {
    await _videoPlayerController.initialize();
    await _videoPlayerController.play();
    isStartedPlaying = true;
    return true;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video'),
      ),
      body: Center(
        child: FutureBuilder<bool>(
            future: started(),
            builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
              if (snapshot.data ?? false) {
                return AspectRatio(
                  aspectRatio: _videoPlayerController.value.aspectRatio,
                  child: VideoPlayer(_videoPlayerController),
                );
              } else {
                return const CircularProgressIndicator(
                  value: 50,
                  strokeWidth: 4.0,
                );
              }
            }),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'views/category_screen.dart';
import 'new_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
          // VideoScreen()
          CategoryScreen(),
      // FirstScreen()
      // title: 'Video Page'),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "First Page",
          ),
        ),
      ),
      body: Center(
          child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const VideoScreen(),
            ),
            // content: Text('Tap'),
          );
        },
        child: const Padding(
          padding: EdgeInsets.all(12.0),
          child: Text('Flat Button'),
        ),
      )),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   late VideoPlayerController _videoPlayerController;
//   bool isStartedPlaying = false;

//   @override
//   void initState() {
//     //TODO: implement initState
//     super.initState();
//     _videoPlayerController = VideoPlayerController.network(
//         'http://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4');
//     _videoPlayerController.addListener(() {
//       if (isStartedPlaying && !_videoPlayerController.value.isPlaying) {
//         Navigator.pop(context);
//       }
//     });
//   }

//   @override
//   void dispose() {
//     //TODO: implement dispose
//     _videoPlayerController.dispose();
//     super.dispose();
//   }

//   Future<bool> started() async {
//     await _videoPlayerController.initialize();
//     await _videoPlayerController.play();
//     isStartedPlaying = true;
//     return true;
//   }

//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: FutureBuilder<bool>(
//             future: started(),
//             builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
//               if (snapshot.data ?? false) {
//                 return AspectRatio(
//                   aspectRatio: _videoPlayerController.value.aspectRatio,
//                   child: VideoPlayer(_videoPlayerController),
//                 );
//               } else {
//                 return const CircularProgressIndicator(
//                   value: 50,
//                   strokeWidth: 4.0,
//                 );
//               }
//             }),
//       ),
//     );
//   }
// }

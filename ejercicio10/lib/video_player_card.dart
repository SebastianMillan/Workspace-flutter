import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayerCard extends StatelessWidget {
  final String keyVideo;
  const VideoPlayerCard({super.key, required this.keyVideo});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
            'https://img.youtube.com/vi/' + keyVideo + '/maxresdefault.jpg',
            fit: BoxFit.fill),
        const Center(
          child: Icon(
            Icons.play_arrow_rounded,
            color: Colors.red,
            size: 80,
          ),
        )
      ],
    );
  }
}

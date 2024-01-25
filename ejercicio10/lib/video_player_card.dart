import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayerCard extends StatelessWidget {
  final String urlVideo;
  const VideoPlayerCard({super.key, required this.urlVideo});

  @override
  Widget build(BuildContext context) {
    return YoutubePlayer(
        controller: YoutubePlayerController(
            initialVideoId:
                'https://www.youtube.com/watch?v=M66U_DuMCS8' + urlVideo,
            flags: YoutubePlayerFlags(autoPlay: true, mute: false)));
  }
}

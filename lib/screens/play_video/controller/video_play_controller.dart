import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PlayVideoController extends GetxController {
  late YoutubePlayerController controller;
  final url = "https://www.youtube.com/watch?v=FVPdfPhXmR0";

  @override
  void onInit() {
    controller = YoutubePlayerController(
        flags: const YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
          loop: false,
          disableDragSeek: false,
        ),
        initialVideoId: YoutubePlayer.convertUrlToId(url)!)
      ..addListener(() {
        if (Get.routing.current == "/playVideoScreen") {
          update();
        }
      });
    super.onInit();
  }
}

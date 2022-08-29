import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sankheshwar_customer/screens/play_video/controller/video_play_controller.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../utils/app_appbar.dart';

class PlayVideoScreen extends GetView<PlayVideoController> {
  static const String routeName = "/playVideoScreen";

  const PlayVideoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: controller.controller,
        showVideoProgressIndicator: true,
      ),
      builder: (context, player) {
        return Scaffold(
            appBar: AppAppbar.titleWithBackButton(title: 'VideoList'),
            body: ListView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                player,
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          controller.controller.metadata.title,
                          style: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 3.h),
                        Text(
                          "Author : " + controller.controller.metadata.author,
                          style: TextStyle(
                              fontSize: 14.sp, color: Colors.grey.shade700),
                        ),
                        SizedBox(height: 2.h),
                        Text(
                          "Time : "
                                  "05:20"
                              .toString(),
                          style: TextStyle(
                              fontSize: 12.sp, color: Colors.grey.shade700),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Text(
                    "Next Video of the playlist :-",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
                  ),
                ),
                Container(
                  height: 190.h,
                  width: double.maxFinite,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        child: Container(
                          height: 190.h,
                          child: ListTile(
                            leading: Text("1"),
                            title: Text('function and list'),
                            subtitle: Text('05:10 mins'),
                            trailing: IconButton(
                                onPressed: () {
                                  Get.toNamed(PlayVideoScreen.routeName);
                                },
                                icon: Icon(Icons.play_circle_outline)),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ));
      },
    );
  }
}

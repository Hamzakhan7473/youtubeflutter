import 'package:flutter/material.dart';
import 'package:flutter_youtube_ui/widgets/widgets.dart';
import 'package:flutter_youtube_ui/data.dart';


class HomeScreen  extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [ CustomSilverAppBar(),
        SliverPadding(
          padding: const EdgeInsets.only(bottom: 60.0),
          sliver: SliverList(
          delegate: SliverChildBuilderDelegate(
                (context, index) {
              final video = videos[index];
              return Videocard(video: video);

              },
            childCount: videos.length,
          ),
          ),
        ),
        ],
      ),
    );
  }
}

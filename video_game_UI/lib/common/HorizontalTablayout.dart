import 'package:flutter/material.dart';
import 'package:video_game_message_board_app/common/forumcart.dart';
import 'package:video_game_message_board_app/common/tab_text.dart';
import 'package:video_game_message_board_app/model/forum.dart';

class HorizontalTablayout extends StatefulWidget {
  @override
  _HorizontalTablayoutState createState() => _HorizontalTablayoutState();
}

class _HorizontalTablayoutState extends State<HorizontalTablayout> {
  int selectedTabindex = 2;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: -20,
            bottom: 0,
            top: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 80.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TabText(
                    text: 'Media',
                    selectedtab: selectedTabindex == 0,
                    ontabtap: () {
                      onTabTap(0);
                    },
                  ),
                  TabText(
                    text: 'Streamers',
                    selectedtab: selectedTabindex == 1,
                    ontabtap: () {
                      onTabTap(1);
                    },
                  ),
                  TabText(
                    text: 'Forum',
                    selectedtab: selectedTabindex == 2,
                    ontabtap: () {
                      onTabTap(2);
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 60,
            ),
            child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Forumcart(forum: fortniteForum),
                Forumcart(forum: pubgForum)
              ],
            ),
          ),
        ],
      ),
    );
  }

  onTabTap(int index) {
    setState(() {
      selectedTabindex = index;
    });
  }
}

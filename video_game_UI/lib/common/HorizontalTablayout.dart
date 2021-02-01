import 'package:flutter/material.dart';
import 'package:video_game_message_board_app/common/forumcart.dart';
import 'package:video_game_message_board_app/common/tab_text.dart';
import 'package:video_game_message_board_app/model/forum.dart';

class HorizontalTablayout extends StatefulWidget {
  @override
  _HorizontalTablayoutState createState() => _HorizontalTablayoutState();
}

class _HorizontalTablayoutState extends State<HorizontalTablayout>
    with SingleTickerProviderStateMixin {
  int selectedTabindex = 2;
  AnimationController _controller;
  Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
  }

  playanimation() {
    _controller.reset();
    _controller.forward();
  }

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
            child: FutureBuilder(
                future: playanimation(),
                builder: (context, snapshot) {
                  return FadeTransition(
                    opacity: _animation,
                                      child: ListView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: getlist(selectedTabindex),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }

  List<Widget> getlist(index) {
    return [
      [
        Forumcart(forum: fortniteForum),
        Forumcart(forum: pubgForum),
      ],
      [
        Forumcart(forum: fortniteForum),
        Forumcart(forum: pubgForum),
      ],
      [
        Forumcart(forum: fortniteForum),
        Forumcart(forum: pubgForum),
      ],
    ][index];
  }

  onTabTap(int index) {
    setState(() {
      selectedTabindex = index;
    });
  }
}

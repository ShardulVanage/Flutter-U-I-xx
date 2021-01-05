import 'package:flutter/material.dart';
import 'package:video_game_message_board_app/common/tab_text.dart';

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
              padding: const EdgeInsets.symmetric(vertical: 32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TabText(
                    text: 'media',
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

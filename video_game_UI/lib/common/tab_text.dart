import 'package:flutter/material.dart';
import 'package:video_game_message_board_app/styleguide/text_styles.dart';

class TabText extends StatelessWidget {
  final bool selectedtab;
  final String text;
  final Function ontabtap;

  TabText({this.text, this.selectedtab,this.ontabtap});
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -1.58,
      child: InkWell(
        onTap: ontabtap,
              child: Text(
          text,
          style: selectedtab ? selectedTabStyle : defaultTabStyle,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:video_game_message_board_app/model/forum.dart';
import 'package:video_game_message_board_app/styleguide/text_styles.dart';

class ForumdetailWidget extends StatelessWidget {
  final Forum forum;
  ForumdetailWidget({this.forum});
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: Mycustomclipper(),
      child: Container(
        height: 180,
        padding: EdgeInsets.only(
          left: 20,
          right: 16,
          top: 24,
          bottom: 12,
        ),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.topRight,
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.grey.withOpacity(0.4),
                          width: 1.5,
                        )),
                    height: 40,
                    width: 40,
                    child: Center(
                        child: Text(
                      forum.rank,
                      style: rankStyle,
                    )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Mycustomclipper extends CustomClipper<Path> {
  final double distancefromwall = 12;
  final double controldistancewall = 2;
  @override
  Path getClip(Size size) {
    final double height = size.height;
    final double halfheight = size.height * 0.5;
    final double width = size.width;

    Path clippedPath = Path();

    clippedPath.moveTo(0, halfheight);
    clippedPath.lineTo(0, height - distancefromwall);
    clippedPath.quadraticBezierTo(0 + controldistancewall,
        height - controldistancewall, 0 + distancefromwall, height);
    clippedPath.lineTo(width, height);
    clippedPath.lineTo(width, 0 + 30.0);
    clippedPath.quadraticBezierTo(width - 5, 0 + 5.0, width - 35, 0 + 15.0);
    clippedPath.close();
    return clippedPath;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return null;
  }
}

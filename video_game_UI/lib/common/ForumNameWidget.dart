import 'package:flutter/material.dart';
import 'package:video_game_message_board_app/model/forum.dart';
import 'package:video_game_message_board_app/styleguide/text_styles.dart';

class ForumNameWidget extends StatelessWidget {
  final Forum forum;
  ForumNameWidget({this.forum});
  @override
  Widget build(BuildContext context) {
    return Material(
        elevation: 20,
        shape: CustomShapBorder(),
        child: Text(
          forum.title,
          style: forumNameTextStyle,
        ));
  }
}

class CustomShapBorder extends ShapeBorder {
  final double distancefromwall = 12;
  final double controldistancewall = 2;

  @override
  EdgeInsetsGeometry get dimensions => throw UnimplementedError();

  @override
  Path getInnerPath(Rect rect, {TextDirection textDirection}) {
    return null;
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection textDirection}) {
    return getClip(Size(150, 60));
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection textDirection}) {}

  @override
  ShapeBorder scale(double t) {
    return null;
  }

  Path getClip(Size size) {
    Path clippedPath = Path();
    clippedPath.moveTo(0 + distancefromwall, 0);
    clippedPath.quadraticBezierTo(0+controldistancewall, 0+controldistancewall,0,0+distancefromwall);
    return clippedPath;
  }
}

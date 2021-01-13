import 'package:flutter/material.dart';
import 'package:video_game_message_board_app/model/forum.dart';
import 'package:video_game_message_board_app/styleguide/colors.dart';
import 'package:video_game_message_board_app/styleguide/text_styles.dart';

class ForumNameWidget extends StatelessWidget {
  final Forum forum;
  ForumNameWidget({this.forum});
  @override
  Widget build(BuildContext context) {
    return Material(
        color: primaryColor,
        elevation: 20,
        shape: CustomShapBorder(),
        child: Padding(
          padding: const EdgeInsets.only(top: 18,left: 20,right: 16,bottom: 10),
          child: Text(
            forum.title,
            style: forumNameTextStyle,
          ),
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
    return getClip(Size(130, 60));
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
    clippedPath.quadraticBezierTo(0 + controldistancewall,
        0 + controldistancewall, 0, 0 + distancefromwall);
    clippedPath.lineTo(0, size.height - distancefromwall);
    clippedPath.quadraticBezierTo(0 + controldistancewall,
        size.height - controldistancewall, 0 + distancefromwall, size.height);
    clippedPath.lineTo(size.width - distancefromwall, size.height);
    clippedPath.quadraticBezierTo(
        size.width - controldistancewall,
        size.height - controldistancewall,
        size.width,
        size.height - distancefromwall);
    clippedPath.lineTo(size.width, size.height * 0.6);
    clippedPath.quadraticBezierTo(
        size.width - 1,
        size.height * 0.6 - distancefromwall,
        size.width - distancefromwall,
        size.height * 0.6 - distancefromwall - 3);
    clippedPath.lineTo(0 + distancefromwall + 6, 0);
    return clippedPath;
  }
}

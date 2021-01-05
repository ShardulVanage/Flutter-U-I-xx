import 'package:flutter/material.dart';
import 'package:video_game_message_board_app/styleguide/colors.dart';

class AppBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      final height = constraint.maxHeight;
      final width = constraint.maxWidth;

      return Stack(children: [
        Container(
          color: backgroundColor,
        ),
        Positioned(
          left:  -(height/2 -width/2) ,
          bottom: height * 0.25  ,
                  child: Container(
            height: height,
            width: height,
            decoration: BoxDecoration(
              color: firstCircleColor,
              shape: BoxShape.circle
            ),
          ),
        ),
          Positioned(
          left: width*.15,
          top: -width*.5,
                  child: Container(
            height: width*1.6,
            width: width*1.6,
            decoration: BoxDecoration(
              color: secondCircleColor,
              shape: BoxShape.circle
            ),
          ),
        ),
         Positioned(
          right: -width*0.2,
          top: -50,
                  child: Container(
            height: width*0.6,
            width: width*0.6,
            decoration: BoxDecoration(
              color: thirdCircleColor,
              shape: BoxShape.circle
            ),
          ),
        )

      ],);
    });
  }
}

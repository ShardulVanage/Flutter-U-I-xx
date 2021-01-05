import 'package:flutter/material.dart';
// import 'package:video_game_message_board_app/styleguide/colors.dart';

class AppBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      final height = constraint.maxHeight;
      final width = constraint.maxWidth;

      return Stack(
        children: [
          Container(
            color: Colors.blueGrey[300],
          ),
          Positioned(
            left: -(height / 2 - width / 2),
            bottom: height * 0.25,
            child: Container(
              height: height,
              width: height,
              decoration: BoxDecoration(
                  color: Colors.blueGrey[600], shape: BoxShape.circle,
                  boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 10,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
                  ),
            ),
          ),
          Positioned(
            left: width * .15,
            top: -width * .5,
            child: Container(
              height: width * 1.6,
              width: width * 1.6,
              decoration:
                  BoxDecoration(color: Colors.blueGrey[100], shape: BoxShape.circle,
                  boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 10,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
                  ),
            ),
          ),
          Positioned(
            right: -width * 0.2,
            top: -50,
            child: Container(
              height: width * 0.6,
              width: width * 0.6,
              decoration:
                  BoxDecoration(color: Colors.blueGrey[50], shape: BoxShape.circle,
                  boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 19,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
                  ),
            ),
          )
        ],
      );
    });
  }
}

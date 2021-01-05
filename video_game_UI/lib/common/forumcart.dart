import 'package:flutter/material.dart';

import 'package:video_game_message_board_app/model/forum.dart';

class Forumcart extends StatelessWidget {
  final Forum forum;
  Forumcart({this.forum});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 25, vertical: 60),
        elevation: 20,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
child:ClipRRect(
  borderRadius: BorderRadius.all(Radius.circular(30)),
  
                  child: Stack(
            children: [
              Image.asset(
                forum.imagePath,
                fit: BoxFit.fitWidth,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

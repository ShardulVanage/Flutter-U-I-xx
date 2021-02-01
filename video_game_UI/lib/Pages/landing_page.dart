import 'package:flutter/material.dart';
import 'package:video_game_message_board_app/common/Appbackground.dart';
import 'package:video_game_message_board_app/common/HorizontalTablayout.dart';

class LandingPage extends StatelessWidget {
 
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AppBackground(),
          Center(
            child: HorizontalTablayout(),
          ),
        ],
      ),
    );
  }
}

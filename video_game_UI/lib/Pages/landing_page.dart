import 'package:flutter/material.dart';
import 'package:video_game_message_board_app/common/Appbackground.dart';
import 'package:video_game_message_board_app/styleguide/colors.dart';
import 'package:video_game_message_board_app/common/HorizontalTablayout.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AppBackground(),
          Column(
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Material(
                    elevation: 10,
                    color: Colors.white,
                    shape: CircleBorder(),
                    child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Icon(
                          Icons.apps,
                          color: primaryColor,
                        )),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 27),
                  child: Text(
                    "Forum",
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 35,
                        letterSpacing: 1.2),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 27),
                  child: Text(
                    'Kick off the conversation',
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 16,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  HorizontalTablayout(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'splashscreen.dart';

import 'package:CamoApp_ui/login_background.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(CampApp());
}

class CampApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
            home:  Stack(
                       children:[
                                 SplashC(),
                                 Background(),
                                ],
          
                          
                          
            ),
                      );
  }
}

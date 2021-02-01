import 'package:CamoApp_ui/categorypage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Background extends StatefulWidget {
  @override
  _BackgroundState createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  
  @override
  Widget build(BuildContext context) {
    return Stack(
    
    children: <Widget>[
    
    Container(
      
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
    image: AssetImage(
      'images/abc.webp',
    ),
    fit: BoxFit.cover,
        ),
      ),
    ),
    Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment
        .bottomCenter, // 10% of the width, so there are ten blinds.
    colors: [
      const Color(0xFF000000),
      const Color(0xf)
    ], // red to yellow
    tileMode: TileMode.clamp, // repeats the gradient over the canvas
        ),
      ),
    ),
    Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding:
      const EdgeInsets.only(top: 70, bottom: 25, left: 15, right: 15),
        child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        'Welcome to ',
        style: GoogleFonts.openSans(
          textStyle: TextStyle(
            inherit: false,
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),
      SizedBox(
        height: 6,
      ),
      Text(
        'CAMPO',
        style: GoogleFonts.wendyOne(
          textStyle: TextStyle(
              fontSize: 60,
              inherit: false,
              color: Colors.white,
              letterSpacing: .5),
        ),
      ),
      SizedBox(
        height: 30,
      ),
      Center(
        child: Text(
          'Connect with people and plan your next escape with Campo ',
          textAlign: TextAlign.center,
          style: GoogleFonts.openSans(
              textStyle: TextStyle(
            inherit: false,
            color: Colors.white,
            fontSize: 16,
            letterSpacing: 0.1,
          )),
        ),
      ),
      SizedBox(
        height: 420,
      ),


      AnimatedContainer(
        curve: Curves.bounceInOut ,
        duration: Duration(seconds: 4),
          
          height: 50,
          width: 330,
          child: Center(
            child: Text(
      'Continue with Google',
      style: GoogleFonts.notoSans(
        textStyle: TextStyle(
          inherit: false,
          fontWeight: FontWeight.w600,
          fontSize: 18,
          color: Color(0xFF00688A),
        ),
      ),
            ),
          ),
          decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(90)),
        ),
      SizedBox(
        height: 20,
      ),
      Container(
        height: 50,
        width: 330,
        child: Center(
          child: Text(
            'Continue with Email',
            style: GoogleFonts.notoSans(
              textStyle: TextStyle(
                  inherit: false,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.white),
            ),
          ),
        ),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(90)),
      ),
      SizedBox(
        height: 18,
      ),
      Text(
        'Login instead ',
        style: GoogleFonts.openSans(
          textStyle: TextStyle(
            inherit: false,
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    ],
        ),
      ),
    ),
    ],
    );
  }
}

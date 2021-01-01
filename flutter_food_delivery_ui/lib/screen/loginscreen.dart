import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_ui/screen/home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
          
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 15),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(width: 0.8),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                        width: 0.8, color: Theme.of(context).primaryColor),
                  ),
                  hintText: ' Email',
                  prefixIcon: Icon(Icons.email_outlined),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 15),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(width: 0.8),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                        width: 0.8, color: Theme.of(context).primaryColor),
                  ),
                  hintText: ' Password',
                  prefixIcon: Icon(
                    Icons.lock_outline,
                  ),
                  suffixIcon: Icon(Icons.visibility_off_outlined)
                ),
                obscureText: true,
              ),
            ),
            SizedBox(height: 30,),
            Text('Forgotten Password?',style: TextStyle(fontSize: 15, color: Colors.white,letterSpacing: .5,fontWeight: FontWeight.w300 ),),
            SizedBox(height: 50),
            InkWell(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_)=> Homescreen())),
                          child: Container(
                height: 45,
                width: 150,
              child: Center(child: Text('Login',style: TextStyle(fontSize: 15,color: Colors.grey[700]),)),
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
                            
               ),
              
              ),
            ),
            
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              Text('Dont have an account?',style: TextStyle(color: Colors.white,fontSize: 15.5 ),),
              SizedBox(width: 6,),
              Text('SIGN UP',style: TextStyle(color: Colors.black45,fontWeight: FontWeight.w600,fontSize: 16),),
            ],)
          ],
        ),
      ),
    );
  }
}

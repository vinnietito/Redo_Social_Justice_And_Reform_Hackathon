import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      //Add a background color 
      backgroundColor: Colors.grey[900],
      body: Stack(
        children: [
          //Positioned background decoration
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black, Colors.purple.shade800],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  ),
              ),
            ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: deviceHeight * 0.45,
                    width: deviceWidth * 0.7,
                    child: Hero(
                      tag: 'logo',
                      child: Image.asset('assets/images/logo.png'),
                      ),
                  )
                ],
              ),
            )
        ],
      )
    )
  }
}
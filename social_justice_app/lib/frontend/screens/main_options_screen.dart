import 'package:flutter/material.dart';
import 'package:social_justice_app/frontend/widgets/main_build_button_widget.dart';
import 'package:social_justice_app/frontend/widgets/main_drawer_Item.dart';
import 'package:social_justice_app/frontend/widgets/main_drawer_widget.dart';

class MainOptionScreen extends StatelessWidget {
  const MainOptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Center(child: Text('SAY NO TO CORRUPTION!!!!!!!')),
        backgroundColor: Colors.deepPurpleAccent,
        elevation: 5.0,
      ),
      drawer: mainDrawer(context),
      body: Stack(
        children: [
          //Add a background gradient
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.purple, Colors.blueAccent],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Flexible(
            child: Center(
              child: Padding(padding: padding),
            ))
        ],
      ),
    )
  }
}
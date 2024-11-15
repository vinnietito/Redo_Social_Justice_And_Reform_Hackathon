import 'package:flutter/material.dart';
import 'package:social_justice_app/frontend/screens/main_options_screen.dart';
import 'package:social_justice_app/frontend/screens/splash_screen.dart';

class SplashScreenWrapper extends StatefulWidget {
  const SplashScreenWrapper({super.key});

  @override
  _SplashScreenWrapperState createState() => _SplashScreenWrapperState();
}

class _SplashScreenWrapperState extends State<SplashScreenWrapper> {
  bool _isloading = true;

  @override
  void inState(){
    super.initState();
    _loadData(); //Simulating data loading
  }

  Future<void> _loadData() aync {
    //Simulate some loading time 
    await Future.delayed(const Duration(seconds: 5));

    //After loading data, update the state to switch to the HomeScreen
  }
}

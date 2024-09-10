import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Future.delayed(Duration(seconds: 2), () {
    //   Get.offAllNamed('/login'); // Navigate to login after 3 seconds
    // });
Future.delayed(Duration(seconds: 2), () {
      context.go('/login');  // Navigate to login using GoRouter after 2 seconds
    });
    return Scaffold(
      body: Center(
        child: Text('Welcome to Notes App', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}

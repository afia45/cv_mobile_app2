import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/seed.png', height: 100, width: 100), // Custom logo or image
            SizedBox(height: 20),
            CircularProgressIndicator(), // Spinner widget
            SizedBox(height: 10),
            Text('Loading...', style: TextStyle(fontSize: 16,)), // Loading text
          ],
        ),
      ),
    );
  }
}

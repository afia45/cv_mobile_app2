import 'package:flutter/material.dart';
import 'package:cv_mobile_app2/home_page.dart';
import 'package:cv_mobile_app2/theme_provider.dart';
import 'package:provider/provider.dart';
import 'loading_screen.dart'; // Import the loading screen

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      title: 'Profile App',
      debugShowCheckedModeBanner: false,
      themeMode: themeProvider.themeMode,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.purple[100],  // Light purple for light mode
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.purple[100],  // Light purple AppBar in light mode
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.purple[500],  // Dark purple for dark mode
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.purple[500],  // Dark purple AppBar in dark mode
        ),
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    
    // Display the loading screen for 3 seconds, then navigate to the HomePage
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()), // Navigate to HomePage
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return LoadingScreen(); // Display the loading screen first
  }
}

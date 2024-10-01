import 'package:flutter/material.dart';
import 'package:cv_mobile_app2/personal_info.dart';
import 'package:cv_mobile_app2/skills.dart';
import 'package:cv_mobile_app2/education.dart';
import 'package:cv_mobile_app2/experience.dart';
import 'package:provider/provider.dart';
import 'package:cv_mobile_app2/theme_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.purple,
        title: Text("My Profile",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
            icon: Icon(themeProvider.isDarkMode
                ? Icons.wb_sunny
                : Icons.nights_stay),
            onPressed: () {
              themeProvider.toggleTheme();
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Profile Image
              CircleAvatar(
                radius: 70, // Controls the size of the avatar
                backgroundColor: Colors.purple,
                child: ClipOval(
                  // Ensures the image is clipped to a circular shape
                  child: Image.asset(
                    "assets/images/hand.jpg",
                    width: 200, // Match width and height to fit the CircleAvatar
                    height: 200,
                    fit: BoxFit.cover, // Ensures the image fits and covers the avatar shape
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Name, Phone & Email
              const Text("Afia Tabassum",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              // Phone Number with Icon
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.phone, color: Colors.purple, size:16), // Phone icon
                  SizedBox(width: 2), // Space between icon and text
                  Text("+880-180-###-49723"), // Phone number
                ],
              ),
        
              //SizedBox(height: 10),
        
              // Email with Icon
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.email, color: Colors.purple,size:16), // Email icon
                  SizedBox(width: 5), // Space between icon and text
                  Text("afia.tabassum45@gmail.com"), // Email address
                ],
              ),
              SizedBox(height: 20),
              // Buttons for Navigation
              _buildNavButton(context, "Personal Information", PersonalInfoPage()),
              _buildNavButton(context, "Skills", SkillsPage()),
              _buildNavButton(context, "Education", EducationPage()),
              _buildNavButton(context, "Experience", ExperiencePage()),
              /*Transform.rotate(
                angle: 45 * (3.14 / 180), // Convert degrees to radians
                child: Image.asset(
                  "assets/images/flower.png", // Your image file path
                  width: 150, // Set your desired width
                  height: 150, // Set your desired height
                  fit: BoxFit.cover, // Adjusts the image to cover the available space
                ),
              ),*/
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavButton(BuildContext context, String title, Widget nextPage) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => nextPage),
          );
        },
        child: Text(title),
      ),
    );
  }
}



/*class EducationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Education",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
      ),
      body: Center(
        child: Text("Details about Ed info here"),
      ),
    );
  }
}*/

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EducationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Education",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center, // Center align children
            children: [
              SizedBox(height: 20), // Space between title and icon
              Text(
                "My Education",
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20), // Space between title and icon
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.1, // 10% of screen width
                    child: Divider(
                      color: Color.fromRGBO(225, 190, 231, 1), // Line color
                      thickness: 1.5, // Line thickness
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Icon(
                      FontAwesomeIcons.seedling, // Flower-like icon
                      color: Color.fromRGBO(225, 190, 231, 1), // Icon color
                      size: 24, // Icon size
                    ),
                  ),
                  SizedBox(width: 10), // Space between icon and divider
                  Container(
                    width: MediaQuery.of(context).size.width * 0.1, // 10% of screen width
                    child: Divider(
                      color: Color.fromRGBO(225, 190, 231, 1), // Line color
                      thickness: 1.5, // Line thickness
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Space between title and icon
              // University Section
              _buildEducationItem(
                "assets/images/iiuc.png", // Update with your university logo path
                "International Islamic University Chittagong",
                "January 20## - December 20##",
              ),
              SizedBox(height: 20), // Space between education items
              // High School Section
              _buildEducationItem(
                "assets/images/highschool.png", // Update with your high school logo path
                "Bangladesh International School, English Section, Jeddah",
                "20## - 20##",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEducationItem(String logoPath, String schoolName, String dates) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Logo on the left
        Image.asset(
          logoPath,
          width: 60, // Set the desired logo size
          height: 60,
        ),
        SizedBox(width: 10), // Space between logo and text
        // Text details
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                schoolName,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(dates, style: TextStyle(fontSize: 16,  color:Colors.grey)),
            ],
          ),
        ),
      ],
    );
  }
}


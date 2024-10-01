import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ExperiencePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Experiences",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center, // Center align children
            children: [
              Text(
                "My Experiences",
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
            
              _buildEducationItem(
                "assets/images/wie.png", // Update with your university logo path
                "Graphics Designer",
                "IEEE IIUC Student Branch WIE Affinity Group",
                "Jul 2023 - Aug 2024 · 1 yr 2 mo",
              ),
              SizedBox(height: 20), // Space between education items
         
              _buildEducationItem(
                "assets/images/cs1.png", // Update with your high school logo path
                "Membership Executive",
                "IEEE Computer Society IIUC Student Branch Chapter",
                "Aug 2023 - Aug 2024 · 1 yr 1 mos",
              ),
              SizedBox(height: 20), // Space between title and icon
            
              _buildEducationItem(
                "assets/images/iiuc.png", // Update with your university logo path
                "Teacher Assistant",
                "International Islamic University Chittagong · Part-time",
                "Jan 2024 - Jun 2024 · 6 mos",
              ),
              SizedBox(height: 20), // Space between education items
         
              _buildEducationItem(
                "assets/images/club.png", // Update with your high school logo path
                "Executive",
                "IIUC Computer Club",
                "Nov 2021 - Feb 2023 · 1 yr 4 mos",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEducationItem(String logoPath, String designation, String schoolName, String dates) {
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
                designation,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                schoolName,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 5),
              Text(dates, style: TextStyle(fontSize: 16, color:Colors.grey)),
            ],
          ),
        ),
      ],
    );
  }
}


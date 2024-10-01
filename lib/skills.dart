import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SkillsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Skills"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center, // Center align children
            children: [
              Text(
                "My Skill Set",
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
              SizedBox(height: 20), // Space after horizontal line
              
              // Backend Skills Section
              Text(
                "Backend Skills",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              _buildSkillRow("C++", 0.8), // 80% proficiency
              _buildSkillRow("Python", 0.85), // 85% proficiency

              SizedBox(height: 20), // Space between sections

              // Frontend Skills Section
              Text(
                "Frontend Skills",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              _buildSkillRow("HTML", 0.9), // 90% proficiency
              _buildSkillRow("CSS", 0.85), // 85% proficiency
              _buildSkillRow("JavaScript", 0.75), // 75% proficiency
              _buildSkillRow("Flutter", 0.7), // 70% proficiency

              SizedBox(height: 20),

              // Database Skills Section
              Text(
                "Database Skills",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              _buildSkillRow("MySQL", 0.8), // 80% proficiency
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to create skill bars with max width
  Widget _buildSkillRow(String skill, double proficiency) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(skill, style: TextStyle(fontSize: 16)),
        SizedBox(height: 5),
        Container(
          constraints: BoxConstraints(maxWidth: 400), // Set your max width here
          child: LinearProgressIndicator(
            value: proficiency, // Skill level
            backgroundColor: Colors.grey[300],
            color: Colors.purple, // Customize the bar color
            minHeight: 8, // Thickness of the bar
          ),
        ),
        SizedBox(height: 10), // Space after each bar
      ],
    );
  }
}


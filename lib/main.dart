import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Your Name'),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/profile_pic.jpg'),
                ),
              ),
              SizedBox(height: 10),
              const Center(
                child: Text(
                  'Your Full Name',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20),
              infoSection(Icons.email, 'Email', 'example@gmail.com'),
              infoSection(Icons.info, 'Info', 'Some Information'),
              infoSection(Icons.favorite, 'Hobbies', 'Studying, Sleeping'),
              infoSection(Icons.location_on, 'Location', 'Your Location'),
              infoSection(Icons.phone, 'Phone', '123-456-7890'),
              SizedBox(height: 20),
              const Text(
                'My Biography',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              const Text( 
                'Write a short paragraph about yourself and your life here.',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget infoSection(IconData icon, String title, String data) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(width: 10),
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Text(
            data,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class About_page extends StatefulWidget {
  const About_page({Key? key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<About_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
        backgroundColor: Color.fromARGB(255, 218, 25, 86),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'The project is developed in Flutter language. It has a simple login section with Google and various social media sites. Users can log in or sign up using these options. After login, the next section will be the dashboard section where three sections will be present, and users can access them by clicking on these sections. This is the initial idea for this mobile application, and we plan to add more functionalities in the future.',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'Developed by:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MemberAvatar(
                  image: 'https://media.istockphoto.com/id/1325756751/vector/hacker-cyber-criminal-with-laptop-stealing-user-personal-data-hacker-attack-and-web-security.jpg?s=612x612&w=0&k=20&c=f36goHUkOw5iaN-sun02MEWniCG41ue83YJSix1bQ3w=', // Replace with member 1 image path
                  name: 'Akash Yadav',
                ),
                SizedBox(width: 20),
                MemberAvatar(
                  image: 'https://media.istockphoto.com/id/1325756751/vector/hacker-cyber-criminal-with-laptop-stealing-user-personal-data-hacker-attack-and-web-security.jpg?s=612x612&w=0&k=20&c=f36goHUkOw5iaN-sun02MEWniCG41ue83YJSix1bQ3w=', // Replace with member 2 image URL
                  name: 'Osam Murshed',
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MemberAvatar(
                  image: 'https://media.istockphoto.com/id/1325756751/vector/hacker-cyber-criminal-with-laptop-stealing-user-personal-data-hacker-attack-and-web-security.jpg?s=612x612&w=0&k=20&c=f36goHUkOw5iaN-sun02MEWniCG41ue83YJSix1bQ3w=', // Replace with member 3 image URL
                  name: 'Pushkar Tiwari',
                ),
                SizedBox(width: 20),
                MemberAvatar(
                  image: 'https://media.istockphoto.com/id/1325756751/vector/hacker-cyber-criminal-with-laptop-stealing-user-personal-data-hacker-attack-and-web-security.jpg?s=612x612&w=0&k=20&c=f36goHUkOw5iaN-sun02MEWniCG41ue83YJSix1bQ3w=', // Replace with member 4 image URL
                  name: 'Deepak Mishra',
                ),
              ],
              
            ),
            SizedBox(height: 20),
            Text(
              'Contact Us: something@gmail.com',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
            
          ],
          
        ),
        
      ),
    );
  }
}

class MemberAvatar extends StatelessWidget {
  final String image;
  final String name;

  const MemberAvatar({
    required this.image,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: _buildImageProvider(),
        ),
        SizedBox(height: 8),
        Text(name),
      ],
    );
  }

  ImageProvider _buildImageProvider() {
    if (image.startsWith('http') || image.startsWith('https')) {
      // Network image
      try {
        return NetworkImage(image);
      } catch (e) {
        print('Error loading network image: $e');
      }
    } else {
      // Asset image
      try {
        return AssetImage(image);
      } catch (e) {
        print('Error loading asset image: $e');
      }
    }

    // Return a placeholder image if loading fails
    return AssetImage('assets/placeholder.jpg');
  }
}

import 'package:flutter/material.dart';
import 'quiz_screen.dart';

class Quiz_Cat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Categories'),
        backgroundColor: Color.fromARGB(255, 218, 25, 86),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: 4, // Number of categories
          itemBuilder: (context, index) {
            return _buildCategoryCard(
              context: context,
              categoryName: getCategoryName(index),
              description: getCategoryDescription(index),
              imagePath: getCategoryImagePath(index),
              categoryIndex: index + 1,
            );
          },
        ),
      ),
    );
  }

  String getCategoryName(int index) {
    switch (index) {
      case 0:
        return 'Algorithms';
      case 1:
        return 'Database Systems';
      case 2:
        return 'Computer Networks';
      case 3:
        return 'Programming Languages';
      default:
        return '';
    }
  }

  String getCategoryDescription(int index) {
    switch (index) {
      case 0:
        return 'Test your knowledge of computer algorithms and data structures';
      case 1:
        return 'Test your knowledge of database design and SQL programming';
      case 2:
        return 'Test your knowledge of computer network architecture and protocols';
      case 3:
        return 'Test your knowledge of programming language concepts and features';
      default:
        return '';
    }
  }

  String getCategoryImagePath(int index) {
    switch (index) {
      case 0:
        return 'https://www.devopsschool.com/blog/wp-content/uploads/2021/06/Complete-Tutorials-of-Introduction-to-Algorithm-740x414.png';
      case 1:
        return 'https://assets.digitalocean.com/articles/how-to-use-sql-header/SQL-header-image.jpg';
      case 2:
        return 'https://bournetocode.com/projects/GCSE_Computing_Fundamentals/pages/img/computer-network.jpg';
      case 3:
        return 'https://gowithcode.com/wp-content/uploads/2021/04/top-programming-languages.jpg';
      default:
        return '';
    }
  }

  Widget _buildCategoryCard({
    required BuildContext context,
    required String categoryName,
    required String description,
    required String imagePath,
    required int categoryIndex,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => QuizScreen(categoryIndex: categoryIndex),
          ),
        );
      },
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.network(imagePath),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    categoryName,
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    description,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

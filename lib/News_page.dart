import 'package:flutter/material.dart';

class News_page extends StatefulWidget {
  const News_page({Key? key}) : super(key: key);

  @override
  _NewsAppState createState() => _NewsAppState();
}

class _NewsAppState extends State<News_page> {
  List<Map<String, dynamic>> news = [    
    {      'title': 'Breaking news: Flutter 3.0 released',      'details': 'It has just been three months since Flutter declared its support for Windows, and we are right here, practically amidst May, with the most recent Flutter update. This all-new version is stable for macOS and Linux and supports Apple Silicon. The version update from Flutter 2 to Flutter 3 scaffolds the excursion from a mobile-centric to a multi-platform framework.',      'image': 'https://picsum.photos/id/20/200/300'    },  
    {      'title': 'COVID-19 cases on the rise again',      'details': ' India recorded 473 new coronavirus infections, while the active cases dipped to 7,623, according to the Union health ministry data updated on Monday. The number of deaths has increased to 5,31,839 with seven deaths which include one fatality reconciled by Kerala, the data updated at 8 am stated.',      'image': 'https://static.toiimg.com/thumb/msid-98926816,imgsize-27546,width-400,resizemode-4/98926816.jpg'    },
    {      'title': 'New study finds that coffee may reduce the risk of cancer',      'details': 'Current research suggests that coffee is unlikely to cause cancer. It may reduce the risk of developing certain types of cancer. However, there is not yet enough scientific evidence to confirm this.As part of a healthful diet, coffee is likely to be beneficial. Drinking up to 4 cups of coffee a day should not pose any risks to health and may reduce the risk of certain diseases.',      'image': 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c5/Roasted_coffee_beans.jpg/330px-Roasted_coffee_beans.jpg'    }  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 218, 25, 86),
        title: Text(
          'News',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: news.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewsDetailPage(
                      newsTitle: news[index]['title'],
                      newsDetails: news[index]['details'],
                      newsImage: news[index]['image'],
                    ),
                  ),
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.network(
                    news[index]['image'],
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 8.0),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      news[index]['title'],
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ),
                  SizedBox(height: 8.0),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class NewsDetailPage extends StatelessWidget {
  final String newsTitle;
  final String newsDetails;

  const NewsDetailPage({Key? key, required this.newsTitle, required this.newsDetails, required newsImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text(newsTitle),
    ),
    body: Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(
        newsDetails,
        style: TextStyle(
          fontSize: 25.0, // set the font size to 18.0
        ),
      ),
    ),
  );
}

}
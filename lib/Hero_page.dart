import 'package:flutter/material.dart';

class Hero_page extends StatefulWidget {
  const Hero_page({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BlogAppState createState() => _BlogAppState();
}

class _BlogAppState extends State<Hero_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Know Your Heroes',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 218, 25, 86),
        title: Text('Know Your Heroes'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 16.0),
            Text(
              'Welcome to Heroes section',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Check out our "Know Your Heroes" section to read about eminent personalities in the world!',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 32.0),
            
            ElevatedButton(
              
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HeroesPage(),
                  ),
                );
              },
              child: Text('Know Your Heroes'),
        
            ),
          ],
        ),
      ),
    );
  }
}

class HeroesPage extends StatefulWidget {
  const HeroesPage({Key? key}) : super(key: key);

  @override
  _HeroesPageState createState() => _HeroesPageState();
}

class _HeroesPageState extends State<HeroesPage> {
  List<Map<String, dynamic>> heroes = [
    {
      'name': 'Nelson Mandela',
      'description':
          'Nelson Rolihlahla Mandela was a South African anti-apartheid revolutionary, political leader, and philanthropist who served as President of South Africa from 1994 to 1999.',
      'image': 'https://cdn.britannica.com/67/75567-050-4EBBE84D/Nelson-Mandela.jpg'
    },
    {
      'name': 'Mother Teresa',
      'description':
          'Mother Teresa, also known as Saint Teresa of Calcutta, was a Roman Catholic nun and missionary who devoted her life to serving the poorest of the poor in India.',
      'image': 'https://observervoice.com/wp-content/uploads/2021/08/mother-teresa-smile-jpg-webp.webp'
    },
    {
      'name': 'Albert Einstein',
      'description':
          'Albert Einstein was a German-born theoretical physicist who developed the theory of relativity, one of the two pillars of modern physics.',
      'image':
          'https://upload.wikimedia.org/wikipedia/commons/d/d3/Albert_Einstein_Head.jpg'
    },
    {
      'name': 'Marie Curie',
      'description':
          'Marie Curie was a Polish-born physicist and chemist who conducted pioneering research on radioactivity.',
      'image': 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Mariecurie.jpg/695px-Mariecurie.jpg?20160630085800'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 218, 25, 86),
        title: Text('Know Your Heroes'),
      ),
      body: ListView.builder(
        itemCount: heroes.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HeroDetailsPage(
                    name: heroes[index]['name'],
                    description: heroes[index]['description'],
                    image: heroes[index]['image'],
                  ),
                ),
              );
            },
            child: HeroCard(
              name: heroes[index]['name'],
              image: heroes[index]['image'],
            ),
          );
        },
      ),
    );
  }
}

class HeroCard extends StatelessWidget {
  final String name;
  final String image;

  const HeroCard({
    required this.name,
    required this.image,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            image,
            width: 100.0,
            height: 100.0,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16.0),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Tap to read more',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(height: 16.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HeroDetailsPage extends StatelessWidget {
  final String name;
  final String description;
  final String image;

  const HeroDetailsPage({
    required this.name,
    required this.description,
    required this.image,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              image,
              width: double.infinity,
              height: 200.0,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16.0),
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey[800],
                    ),
                  ),
                  SizedBox(height: 16.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

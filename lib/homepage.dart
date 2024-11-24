import 'package:flutter/material.dart';
import 'package:storyapp/lonelyboy.dart';
import 'package:storyapp/tortoiseandhare.dart';

class homepage extends StatefulWidget {
  const homepage({ Key? key }) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NS STORY APP"),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(Icons.book),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          }
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Menu'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('The Lonely Boy'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Lonelyboy()));
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("STORIES", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 10.0),
            Expanded(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Lonelyboy()),
                      );
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            height: 200.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/lonelyboy.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          Positioned(
                            bottom: 10, // Position from the bottom
                            left: 10,   // Position from the left
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                              color: Colors.black54, // Semi-transparent background
                              child: Text(
                                "A Lonely Boy",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Tortoiseandhare()),
                      );
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            height: 200.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/tortoiseandhare.webp'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          Positioned(
                            bottom: 10, // Position from the bottom
                            left: 10,   // Position from the left
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                              color: Colors.black54, // Semi-transparent background
                              child: Text(
                                "The Tortoise And Hare",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
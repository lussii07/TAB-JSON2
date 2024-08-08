import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4, // Number of tabs
        child: Scaffold(
          appBar: AppBar(
            title: Text('Open Data'),
            leading: Icon(Icons.menu,),
            backgroundColor: Color.fromARGB(255, 9, 58, 75),
             titleTextStyle: TextStyle(color: Colors.black, fontSize: 20), // Set title text color to white
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: 'Welcome',
                ),
                Tab(
                  icon: Icon(Icons.help),
                  text: '?',
                ),
                Tab(
                  icon: Icon(Icons.help),
                  text: '?',
                ),
                Tab(
                  icon: Icon(Icons.info),
                  text: 'About',
                ),
              ],
              indicatorColor: Colors.green, // Color of the selected tab indicator
              labelColor: Colors.green, // Color of the selected tab text
              unselectedLabelColor: Colors.black, // Color of the unselected tab text
              indicatorWeight: 4.0, // Thickness of the selected tab indicator
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text('Welcome Page'),
              ),
              Center(
                child: Text('Help Page 1'),
              ),
              Center(
                child: Text('Help Page 2'),
              ),
              Center(
                child: Text('About Page'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

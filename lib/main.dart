import 'package:flutter/material.dart';
import 'package:flutter_application/card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Facebook'),
          backgroundColor: Colors.blueAccent,
          actions: [
            IconButton(
              icon: const Icon(Icons.message),
              onPressed: () {},
            ),
          ],
        ),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) => const Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: CardComponent(),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.groups),
              label: 'Friends',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.live_tv),
              label: 'Watch',
            ),
          ],
        ),
      ),
    );
  }
}

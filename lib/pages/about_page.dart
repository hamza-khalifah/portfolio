import 'package:flutter/material.dart';
import 'package:hamaza_portfolio/pages/home_page.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sub Page'),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: ListView(
          children: [
            Card(
              color: Colors.blue,
              elevation: 20.0,
              shadowColor: Colors.green,
              child: ListTile(
                trailing: Icon(Icons.access_alarm),
                leading: Icon(Icons.access_alarms),
                title: Container(
                  color: Colors.red,
                  child: Text("title"),
                ),
                // subtitle: Text("subtitle"),
              ),
            ),
            Container(
              color: Colors.yellow,
              child: Text("by"),
            ),
            Container(
              color: Colors.green,
              child: Text("hello"),
            ),
            Container(
              color: Colors.blue,
              child: Text("go"),
            ),
            Container(
              color: Colors.grey,
              child: Text("bee"),
            ),
            Container(
              color: Colors.green,
              child: Text("hello"),
            ),
            Container(
              color: Colors.blue,
              child: Text("go"),
            ),
            Card(
              shadowColor: Colors.black,
              color: Colors.blue,
              child: ListTile(
                trailing: const Icon(Icons.accessibility_new),
                leading: Icon(Icons.accessibility_new),
                title: Container(
                  color: Colors.grey,
                  child: Text("bee"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

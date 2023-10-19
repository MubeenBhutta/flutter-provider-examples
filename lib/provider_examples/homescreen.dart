import 'package:flutter/material.dart';
import 'package:provider_examples/provider_examples/example1/provider_example_1.dart';
import 'package:provider_examples/provider_examples/example2/provider_example_2.dart';
import 'package:provider_examples/provider_examples/example3/provider_example_3.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text(
                'Mubeen Icky',
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(237, 255, 255, 255)),
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/headerimage.jpg'),
                      fit: BoxFit.cover)),
            ),
            ListTile(
              leading: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => provider_example_1()));
                },
                icon: Icon(Icons.home),
                iconSize: 30,
              ),
              title: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => provider_example_1()));
                },
                child: Text(
                  'provider Example 1',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            ListTile(
              leading: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => provider_example_2()));
                },
                icon: Icon(Icons.abc_outlined),
                iconSize: 30,
              ),
              title: TextButton(
                child: Text(
                  'Provider Example 2',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => provider_example_2()));
                },
              ),
            ),
            ListTile(
              leading: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => provider_example_3()));
                },
                icon: Icon(Icons.move_to_inbox),
                iconSize: 30,
              ),
              title: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => provider_example_3()));
                },
                child: Text(
                  'provider Example 3',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(title: Center(child: Text('Providers'))),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'check drawer to explore more option',
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider.dart';

class provider_example_1 extends StatefulWidget {
  const provider_example_1({super.key});

  @override
  State<provider_example_1> createState() => _provider_example_1State();
}

class _provider_example_1State extends State<provider_example_1> {
  var count = '0';
  @override
  Widget build(BuildContext context) {
    final provider_example =
        Provider.of<provider_example1>(context, listen: false);
    print('build');
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 141, 134, 113),
        child: Column(
          children: [
            DrawerHeader(
                child: TextButton(
              child: Text('provider example 1'),
              onPressed: () {},
            ))
          ],
        ),
      ),
      appBar: AppBar(
        title: Center(child: Text('Providers')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 208, 218, 207),
                  borderRadius: (BorderRadius.circular(10))),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'In provider example 1  we use count  example to practice provider',
                    style: TextStyle(
                        fontSize: 22,
                        color: const Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          // Row(
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Text(provider_example.count.toString(),
          //         style: TextStyle(fontSize: 50, fontWeight: FontWeight.w700)),
          //     SizedBox(
          //       width: 10,
          //     ),
          //     Text('without provider')
          //   ],
          // ),
          // Center(
          //   child: Consumer<provider_example1>(
          //     builder: (context, value, child) {
          //       return Text(
          //         value.count.toString(),
          //         style: TextStyle(fontSize: 50, fontWeight: FontWeight.w700),
          //       );
          //     },
          //   ),
          // )
          Row(
            children: [
              Expanded(
                  child: InkWell(
                onTap: () {
                  setState(() {});
                },
                child: Container(
                  height: 100,
                  decoration:
                      BoxDecoration(color: Color.fromARGB(207, 143, 233, 25)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'without provider  ',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w700),
                        ),
                      ),
                      Text(
                        provider_example.count.toString(),
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 116, 93, 219)),
                      )
                    ],
                  ),
                ),
              )),
              Expanded(
                  child: Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Color.fromARGB(157, 71, 74, 248),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'with provider  ',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Consumer<provider_example1>(
                      builder: (context, value, child) {
                        return Text(
                          value.count.toString(),
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        );
                      },
                    )
                  ],
                ),
              ))
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          provider_example.getcount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

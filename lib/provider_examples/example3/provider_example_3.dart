import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_examples/provider_examples/example3/provider_example_3_secondscreen.dart';
import 'package:provider_examples/provider_examples/provider.dart';
// import 'package:provider_examples/provider_examples/example3/provider_example_3_secondscreen.dart';

class provider_example_3 extends StatefulWidget {
  const provider_example_3({super.key});

  @override
  State<provider_example_3> createState() => _provider_example_3State();
}

class _provider_example_3State extends State<provider_example_3> {
  List<int> mylist = [];
  @override
  Widget build(BuildContext context) {
    // final provider_example_3 =
    //     Provider.of<provider_example3>(context, listen: false);
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('provider Example 3'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => provider_example_3_secondscreen()));
            },
            icon: Icon(Icons.favorite),
            color: Colors.black54,
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, myindex) {
                  return Consumer<provider_example3>(
                      builder: (context, value, child) {
                    return ListTile(
                        onTap: () {
                          if (value.mylist.contains(myindex)) {
                            value.removemylist(myindex);
                          } else {
                            value.getmylist(myindex);
                          }
                        },
                        leading: Text(
                          'index ' + myindex.toString(),
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        trailing: Icon(value.mylist.contains(myindex)
                            ? Icons.favorite
                            : Icons.favorite_border_outlined));
                  });
                }),
          )
        ],
      ),
    );
  }
}

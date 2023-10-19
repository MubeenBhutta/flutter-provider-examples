import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_examples/provider_examples/provider.dart';

class provider_example_3_secondscreen extends StatefulWidget {
  const provider_example_3_secondscreen({super.key});

  @override
  State<provider_example_3_secondscreen> createState() =>
      _provider_example_3_secondscreenState();
}

class _provider_example_3_secondscreenState
    extends State<provider_example_3_secondscreen> {
  List<int> myfavlist = [];

  @override
  Widget build(BuildContext context) {
    final provider_example_3 = Provider.of<provider_example3>(context);
    return Scaffold(
      backgroundColor: Color.fromARGB(206, 185, 181, 182),
      appBar: AppBar(
        title: Text('favirout item'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: provider_example_3.mylist.length,
                itemBuilder: (context, index) {
                  return Consumer<provider_example3>(
                      builder: (context, value, child) {
                    return ListTile(
                      onTap: () {
                        if (value.mylist.contains(index)) {
                          value.removemylist(index);
                        } else {
                          value.getmylist(index);
                        }
                      },
                      leading: Text(
                        'index ' + index.toString(),
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      trailing: Icon(value.mylist.contains(index)
                          ? Icons.favorite
                          : Icons.favorite_border_outlined),
                    );
                  });
                }),
          )
        ],
      ),
    );
  }
}

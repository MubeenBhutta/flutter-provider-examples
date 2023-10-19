import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_examples/provider_examples/provider.dart';

class provider_example_2 extends StatefulWidget {
  const provider_example_2({super.key});

  @override
  State<provider_example_2> createState() => _provider_example_2State();
}

class _provider_example_2State extends State<provider_example_2> {
  double slidervalue = 1;
  @override
  Widget build(BuildContext context) {
    // final providerexample2 =
    //     Provider.of<provider_example2>(context, listen: false);
    print('check build');
    return Scaffold(
      appBar: AppBar(
        title: Text('provider example 2'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 236, 234, 226),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  'move the slider to change boxes colour',
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 200,
          ),
          Consumer<provider_example2>(builder: (context, value, child) {
            return Slider(
                min: 0.1,
                max: 1.0,
                value: value.slidervalue,
                onChanged: (val) {
                  value.getslidervalue(val);
                  // print(value.slidervalue);
                });
          }),
          Consumer<provider_example2>(builder: (context, value, child) {
            return Row(
              children: [
                Expanded(
                    child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 114, 19, 202)
                          .withOpacity(value.slidervalue)),
                )),
                Expanded(
                    child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 0, 0)
                          .withOpacity(value.slidervalue)),
                ))
              ],
            );
          })
        ],
      ),
    );
  }
}

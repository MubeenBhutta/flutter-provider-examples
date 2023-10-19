import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_examples/provider_examples/homescreen.dart';
import 'package:provider_examples/provider_examples/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => provider_example1(),
        ),
        ChangeNotifierProvider(create: (context) => provider_example2()),
        ChangeNotifierProvider(create: (context) => provider_example3())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Homescreen(),
      ),
    );
  }
}

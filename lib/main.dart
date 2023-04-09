import 'package:flutter/material.dart';
import 'package:yaioa/src/features/app_tabs_ui/app_tabs_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'yaioa',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const AppTabs(),
    );
  }
}


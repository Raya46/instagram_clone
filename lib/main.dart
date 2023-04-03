import 'package:flutter/material.dart';
import 'package:instagram_clone/features/presentation/credentials/sign_in_page.dart';
import 'package:instagram_clone/features/presentation/main_screen/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      home: MainScreen(),
    );
  }
}
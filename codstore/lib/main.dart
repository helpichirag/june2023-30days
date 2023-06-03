import 'package:flutter/material.dart';
import 'homepage.dart/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CodeMate.ai',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow.shade800),
        useMaterial3: true,
        appBarTheme: AppBarTheme(
        toolbarHeight:  MediaQuery.of(context).size.height*0.3
    ),
      
      ),

      
      home: HomePage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:live_test_09/home_page.dart';

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
      theme: ThemeData(
        elevatedButtonTheme:  ElevatedButtonThemeData(
          style: ButtonStyle(
            padding: const MaterialStatePropertyAll<EdgeInsetsGeometry>(EdgeInsets.zero),
            overlayColor: const MaterialStatePropertyAll<Color>(Colors.amber),
            shape: MaterialStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3)
            ))
          )
        ),
        
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}




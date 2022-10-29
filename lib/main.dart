import 'package:flutter/material.dart';
import 'package:indian_news18/HomePage%20.dart';
import 'package:indian_news18/SplashScreen.dart';
import 'package:indian_news18/config.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      print("changed");
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: currentTheme.currentTheme(),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => SplashScreen(),
        '/HomeScreen': (context) => const HomePage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

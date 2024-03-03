import 'package:flutter/material.dart';
import 'package:week_18_assessment/pages/login_page.dart';
import 'package:week_18_assessment/pages/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          'login': (context) => MyLoginPage(),
          'signup': (context) => SignUpPage(),
        },
        title: 'Login and SignUp',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
            scaffoldBackgroundColor: Colors.grey.shade100
        ),
        home: const MyLoginPage()
    );
  }
}
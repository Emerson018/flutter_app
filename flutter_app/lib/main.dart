import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_app/auth/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage()
    );
  }
}
// caso o erro aconteça de novo, segue o link: https://chat.deepseek.com/a/chat/s/321c1235-1cd6-4be6-8fa3-ef0c79b89b7f
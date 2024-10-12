import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tugas2/firebase_options.dart';
import './pages/LoginPage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp();

  @override
 Widget build(BuildContext){
  return MaterialApp(
    title: "Tugas 2 Mobile",
    theme: ThemeData(
      primarySwatch: Colors.blue
    ),
    home: LoginPage(),
  );
 }
}
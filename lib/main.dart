import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'screens/signin_screen.dart';

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
      title: 'Jazz Eventra',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF8E2DE2)), // Purple theme
        useMaterial3: true,
        fontFamily: 'Inter', // Default font එක විදියට තියාගන්න පුළුවන්
      ),
      debugShowCheckedModeBanner: false, // Debug බැනර් එක අයින් කරන්න
      home: const SigninScreen(), // පළවෙනි page එක විදියට Sign In පෙන්වන්න
    );
  }
}

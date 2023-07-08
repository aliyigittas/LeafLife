import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'NewPost.dart';
import 'HomeScreen.dart';
import 'LoginScreen.dart';
import 'ProfileScreen.dart';
import 'MainBottomClass.dart';
import 'SearchScreen.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/LoginScreen',
      theme: ThemeData(useMaterial3: true),
      routes: {
        '/LoginScreen': (context) => const LoginScreen(),
        '/HomeScreen': (context) => const HomeScreen(),
        '/ProfileScreen': (context) => const ProfileScreen(),
        '/MainBottomClass': (context) => const MainBottomClass(),
        '/SearchScreen': (context) => const SearchScreen(),
        '/NewPost': (context) => const NewPost(),
        '/MainBottomclass': (context) => const MainBottomClass(),
      },
    );
  }
}

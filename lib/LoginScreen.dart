import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:newproj/AuthService.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  void handleLogin() async {
    var userdata = await AuthService().signInWithGoogle();
    if (userdata != null && mounted) {
      final username = FirebaseAuth.instance.currentUser?.displayName;
      Navigator.pushReplacementNamed(context, '/MainBottomClass',
          arguments: {'username': username});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffbeffbc),
      body: FutureBuilder(
        future: _initialization,
        builder: ((context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text("Error"),
            );
          } else if (snapshot.hasData) {
            return SafeArea(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //add Leaflife image here from assets
                    Column(
                      children: [
                        Image.asset(
                          'assets/TransparentLeaf.png',
                          height: 150,
                          width: 150,
                        ),
                        const Text(
                          'LeafLife',
                          style: TextStyle(
                            fontFamily: 'FredokaOne',
                            fontSize: 45,
                            color: Color(0xff084864),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: const Color(0xff084864),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                      icon: Image.asset('assets/Google_icon.png', height: 30),
                      onPressed: () {
                        handleLogin();
                      },
                      label: const Text('Continue with Google'),
                    ),
                  ],
                ),
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        }),
      ),
    );
  }
}

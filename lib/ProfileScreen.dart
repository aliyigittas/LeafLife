// ignore_for_file: file_names
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  FirebaseFirestore db = FirebaseFirestore.instance;
  String? str = FirebaseAuth.instance.currentUser?.photoURL;
  final username = FirebaseAuth.instance.currentUser?.displayName;
  String? userid = FirebaseAuth.instance.currentUser?.uid;

  File? imageFile;

  Future<int> _getPostCount(var refToUser) async {
    var response = await refToUser.get();
    if (response.exists) {
      var map = response.data();
      return (map!['postCount'] ?? 0) as int;
    } else {
      await refToUser.set({'postCount': 0});
      return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    var refToUser = db.collection('Users').doc('$userid');
    return FutureBuilder<int>(
      future: _getPostCount(refToUser),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          int postCount = snapshot.data!;
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(
                  str!,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(username!,
                          style: const TextStyle(
                            fontSize: 24,
                          )),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(FirebaseAuth.instance.currentUser!.email!,
                          style: const TextStyle(fontSize: 15)),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ],
              ),
              Text("Total Scans: $postCount"),
              const SizedBox(
                height: 20,
              ),
              //about this app popup
              ElevatedButton.icon(
                  icon: const Icon(Icons.info),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            backgroundColor:
                                const Color.fromARGB(255, 221, 249, 221),
                            title: const Text("About this app"),
                            content: const Text(
                                "-Ali Taş\n-Mehmet Kuzucu\n-Şafak Gün\n\nLeafLife - 2023 Solution Challenge"),
                            actions: [
                              TextButton(
                                style: TextButton.styleFrom(
                                  foregroundColor: const Color(0xFF5c9464),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text("Close",
                                    style: TextStyle(color: Color(0xFF084864))),
                              ),
                            ],
                          );
                        });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff084864),
                  ),
                  label: const Text("About this app")),

              ElevatedButton.icon(
                icon: const Icon(Icons.logout),
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                  Navigator.pushReplacementNamed(context, '/LoginScreen');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff084864),
                ),
                label: const Text("Log Out"),
              ),
              const SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/TransparentLeaf.png',
                    height: 50,
                    width: 50,
                  ),
                  const Text(
                    'LeafLife',
                    style: TextStyle(
                      fontFamily: 'FredokaOne',
                      fontSize: 25,
                      color: Color(0xff084864),
                    ),
                  ),
                ],
              ),
            ],
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

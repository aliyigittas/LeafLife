// ignore_for_file: file_names

import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  FirebaseFirestore db = FirebaseFirestore.instance;
  final username = FirebaseAuth.instance.currentUser?.displayName;
  final userid = FirebaseAuth.instance.currentUser?.uid;
  int postCount = 0;

  @override
  void initState() {
    super.initState();
    _getData();
  }

  _getData() async {
    var refToUser = db.collection('Users').doc('$userid');
    var response = await refToUser.get();
    if (response.exists) {
      var map = response.data();
      setState(() {
        postCount = map!['postCount'];
      });
    } else {
      await refToUser.set({'postCount': 0});
      setState(() {
        postCount = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var refToUser = db.collection('Users').doc('$userid');
    return Column(
      children: [
        const SizedBox(height: 10),
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
        Expanded(
          child: RefreshIndicator(
            color: const Color.fromARGB(255, 0, 128, 0),
            onRefresh: () async {
              // Perform the refresh operation here
              await Future.delayed(const Duration(seconds: 1));
              setState(() {
                _getData();
              });
            },
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: StreamBuilder(
                stream: refToUser.snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return const Center(
                      child: Text("Something went wrong"),
                    );
                  } else if (!snapshot.hasData) {
                    return const Center(
                      child: CircularProgressIndicator(
                        color: Color(0xff084864),
                      ),
                    );
                  } else if (postCount == 0) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/TransparentLeaf.png',
                              height: 100,
                              width: 100,
                            ),
                            const SizedBox(width: 10),
                            const Icon(
                              Icons.add_a_photo,
                              size: 50,
                              color: Color(0xff084864),
                            ),
                          ],
                        ),
                        const Center(
                          child: Text(
                            "Start scanning by pressing\n the button below! ",
                            textAlign: TextAlign.center,
                            textScaleFactor: 1.5,
                          ),
                        ),
                      ],
                    );
                  } else {
                    return ListView.builder(
                      padding: const EdgeInsets.all(8),
                      physics: const AlwaysScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: postCount,
                      itemBuilder: (context, index) {
                        var postIndex = postCount - index;
                        return FutureBuilder<DocumentSnapshot>(
                          future: refToUser
                              .collection('Post $postIndex')
                              .doc('Contents')
                              .get(),
                          builder: (BuildContext context,
                              AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return const Center(
                                child: CircularProgressIndicator(
                                  color: Color(0xff084864),
                                ),
                              );
                            }

                            Map<String, dynamic> contents =
                                snapshot.data!.data() as Map<String, dynamic>;
                            String time;
                            var seconds = DateTime.now()
                                .difference(contents['Date'].toDate())
                                .inSeconds;
                            var minutes = DateTime.now()
                                .difference(contents['Date'].toDate())
                                .inMinutes;
                            var hours = DateTime.now()
                                .difference(contents['Date'].toDate())
                                .inHours;
                            var days = DateTime.now()
                                .difference(contents['Date'].toDate())
                                .inDays;
                            var weeks = (days / 7).floor();
                            var months = (days / 30).floor();
                            var years = (days / 365).floor();

                            if (seconds < 60) {
                              if (seconds == 1) {
                                time = '$seconds second ago';
                              } else {
                                time = '$seconds seconds ago';
                              }
                            } else if (minutes < 60) {
                              if (minutes == 1) {
                                time = '$minutes minute ago';
                              } else {
                                time = '$minutes minutes ago';
                              }
                            } else if (hours < 24) {
                              if (hours == 1) {
                                time = '$hours hour ago';
                              } else {
                                time = '$hours hours ago';
                              }
                            } else if (days < 7) {
                              if (days == 1) {
                                time = '$days day ago';
                              } else {
                                time = '$days days ago';
                              }
                            } else if (weeks < 4) {
                              if (weeks == 1) {
                                time = '$weeks week ago';
                              } else {
                                time = '$weeks weeks ago';
                              }
                            } else if (months < 12) {
                              if (months == 1) {
                                time = '$months month ago';
                              } else {
                                time = '$months months ago';
                              }
                            } else if (years <= 1) {
                              if (years == 1) {
                                time = '$years year ago';
                              } else {
                                time = '$years years ago';
                              }
                            } else {
                              time = 'a long time ago';
                            }
                            String suggestions =
                                "\n    For further information \nplease check Explore page!";

                            String disease = "";
                            if (contents['Disease'] == "0 bac") {
                              disease = "Bacterial Spot";
                            } else if (contents['Disease'] == "1 blight") {
                              disease = "Early Blight";
                            } else if (contents['Disease'] == "2 late") {
                              disease = "Late Blight";
                            } else if (contents['Disease'] == "3 mold") {
                              disease = "Leaf Mold";
                            } else if (contents['Disease'] == "4 septoria") {
                              disease = "Septoria Leaf Spot";
                            } else if (contents['Disease'] == "5 spider") {
                              disease = "Spider Mites";
                            } else if (contents['Disease'] == "6 target") {
                              disease = "Target Spot";
                            } else if (contents['Disease'] == "7 yellow") {
                              disease = "Yellow Leaf Curl Virus";
                            } else if (contents['Disease'] == "8 mosaic") {
                              disease = "Mosaic Virus";
                            } else if (contents['Disease'] == "9 health") {
                              disease = "Healthy";
                            } else if (contents['Disease'] == "10 powder") {
                              disease = "Powdery Mildew";
                            } else {
                              disease = "Error retrieving disease";
                            }

                            return Card(
                              //make card clickable
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              color: const Color.fromARGB(255, 221, 249, 221),
                              child: InkWell(
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                      backgroundColor: const Color.fromARGB(
                                          255, 221, 249, 221),
                                      title: Text(disease),
                                      content: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          AspectRatio(
                                            aspectRatio: 1,
                                            child: Image.network(
                                              contents['link'],
                                              height: 50,
                                              width: 50,
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          Text(
                                            "Confidence is ${contents['Confidence']}",
                                            style:
                                                const TextStyle(fontSize: 13),
                                          ),
                                          const SizedBox(height: 10),
                                          Text(
                                            suggestions,
                                            style: const TextStyle(
                                              fontSize: 15,
                                              color: Color(0xFF000000),
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          Text(
                                            time,
                                            style: const TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                      actions: [
                                        TextButton(
                                          style: TextButton.styleFrom(
                                            foregroundColor:
                                                const Color(0xFF5c9464),
                                          ),
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: const Text(
                                            'Close',
                                            style: TextStyle(
                                              color: Color(0xFF084864),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                },
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 120,
                                      height: 120,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Stack(
                                          children: [
                                            const Positioned.fill(
                                              child: Align(
                                                alignment: Alignment.center,
                                                child:
                                                    CircularProgressIndicator(
                                                  color: Color(0xFF084864),
                                                ),
                                              ),
                                            ),
                                            AspectRatio(
                                              aspectRatio: 1,
                                              child: Image.network(
                                                contents['link'],
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 3,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Disease: $disease',
                                              style: const TextStyle(
                                                fontSize: 17,
                                              ),
                                            ),
                                            const SizedBox(height: 8),
                                            Text(
                                              'Confidence: ${contents['Confidence']}',
                                              style:
                                                  const TextStyle(fontSize: 13),
                                            ),
                                            const SizedBox(height: 8),
                                            Text(
                                              time,
                                              style: const TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                    );
                  }
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}

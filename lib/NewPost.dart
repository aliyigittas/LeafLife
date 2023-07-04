// ignore_for_file: file_names, avoid_print, use_build_context_synchronously
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';

class NewPost extends StatefulWidget {
  const NewPost({Key? key}) : super(key: key);

  @override
  State<NewPost> createState() => _NewPostState();
}

class _NewPostState extends State<NewPost> {
  FirebaseFirestore db = FirebaseFirestore.instance;
  String? userid = FirebaseAuth.instance.currentUser?.uid;

  int postCount = 1;
  File? imageFile;
  dynamic downloadUrl;
  dynamic pickedFile;
  String? url;
  String? highestConfidenceLabel;
  String? highestConfidencePercentage;

  @override
  void initState() {
    super.initState();
    Tflite.close();
  }

  _getFromGallery() async {
    pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );

    if (pickedFile == null) {
      // User canceled picking the image
      return;
    }
    setState(() {
      imageFile = File(pickedFile.path);
    });
  }

  _getFromCamera() async {
    pickedFile = await ImagePicker().pickImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );

    if (pickedFile == null) {
      // User canceled picking the image
      return;
    }
    setState(() {
      imageFile = File(pickedFile.path);
    });
  }

  Future classifyImage() async {
    // ignore: avoid_print
    print("YES");
    await Tflite.loadModel(
        model: 'assets/model_unquant.tflite', labels: 'assets/labels.txt');
    var output = await Tflite.runModelOnImage(
        path: imageFile!.path, // required
        imageMean: 127.5, // defaults to 117.0
        imageStd: 127.5, // defaults to 1.0
        numResults: 2, // defaults to 5
        threshold: 0.05, // defaults to 0.1
        asynch: true // defaults to true
        );

// Sort the list in descending order of confidence
    output?.sort((a, b) => b["confidence"].compareTo(a["confidence"]));

// Get the label and confidence with the highest confidence
    highestConfidenceLabel = output![0]["label"];
    //add all confidence values into one inetger and get the percentage
    num sum = 0;
    for (var i = 0; i < output.length; i++) {
      sum += output[i]["confidence"];
    }
    //print(sum);
    var highestConfidencePercentageDBL = (output[0]["confidence"] / sum) * 100;
    highestConfidencePercentage =
        highestConfidencePercentageDBL.toStringAsFixed(2) + "%";

    //print("highestConfidenceLabel: $highestConfidenceLabel");
    //print("highestConfidencePercentage: $highestConfidencePercentage");

    setState(() {
      highestConfidenceLabel = highestConfidenceLabel;
      highestConfidencePercentage = highestConfidencePercentage;
    });
  }

  _uploadPhoto() async {
    Reference storageRef = FirebaseStorage.instance
        .ref()
        .child(FirebaseAuth.instance.currentUser!.uid)
        .child('Post $postCount');

    final uploadTask = storageRef.putFile(imageFile!);
    final snapshot = await uploadTask.whenComplete(() {});
    url = await snapshot.ref.getDownloadURL(); // Assign value to url
    setState(() {
      downloadUrl = url; // Update class-level variable
    });
    print('Download URL: $url');
  }

  _getData(var refToUser) async {
    var response = await refToUser.get();
    if (response.exists) {
      var map = response.data();
      postCount = map!['postCount'];
    } else {
      await refToUser.set({'postCount': 0});
      postCount = 0;
    }
    postCount++;
    print(postCount);
  }

  @override
  Widget build(BuildContext context) {
    var refToUser = db.collection('Users').doc('$userid');
    var refToContent = refToUser.collection('Post $postCount').doc('Contents');

    _getData(refToUser);

    return Scaffold(
      backgroundColor: const Color(0xFFA4E4B4),
      appBar: AppBar(
        backgroundColor: const Color(0xFF5c9464),
        title: const Text('Scan Leaf'),
        leading: BackButton(
          color: Colors.white,
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/MainBottomClass');
          },
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/TransparentLeaf.png',
                    width: 100,
                    height: 100,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Icon(
                    color: Color(0xff084864),
                    Icons.arrow_forward_rounded,
                    size: 50,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Icon(
                    color: Color(0xff084864),
                    Icons.search_rounded,
                    size: 50,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Upload an image of a leaf \nto identify diseases',
                style: TextStyle(
                  color: Color(0xff084864),
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.image_rounded),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff084864),
                ),
                onPressed: () async {
                  await _getFromGallery();
                },
                label: const Text('Choose from Gallery'),
              ),
              const SizedBox(
                height: 5,
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.camera_alt_rounded),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff084864),
                ),
                onPressed: () async {
                  await _getFromCamera();
                },
                label: const Text('Take Photo'),
              ),
              const SizedBox(
                height: 20,
              ),
              if (imageFile != null)
                Image.file(
                  imageFile!,
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.search_rounded),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff084864),
                ),
                onPressed: () async {
                  if (imageFile != null) {
                    // show CircularProgressIndicator for photo upload
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircularProgressIndicator(
                              color: Color.fromARGB(255, 221, 249, 221),
                            ),
                            SizedBox(height: 16),
                            DefaultTextStyle(
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                              child: Text('Uploading Image...'),
                            ),
                          ],
                        );
                      },
                    );
                    await _uploadPhoto();
                    // ignore: use_build_context_synchronously
                    Navigator.pop(
                        context); // close CircularProgressIndicator dialog
                  }

                  await _getData(refToUser);
                  await classifyImage();
                  print("highestConfidenceLabel: $highestConfidenceLabel");
                  print("Highest Confidence: $highestConfidencePercentage");

                  // show CircularProgressIndicator for image classification
                  // ignore: use_build_context_synchronously
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularProgressIndicator(
                            color: Color.fromARGB(255, 221, 249, 221),
                          ),
                          SizedBox(height: 16),
                          DefaultTextStyle(
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                            child: Text('Classifying Image...'),
                          ),
                        ],
                      );
                    },
                  );
                  await refToUser.set(
                    {'postCount': postCount},
                    SetOptions(merge: true),
                  );
                  postCount++;
                  await refToContent.set(
                    {'link': url},
                    SetOptions(merge: true),
                  );
                  await refToContent.set(
                    {'Disease': highestConfidenceLabel},
                    SetOptions(merge: true),
                  );
                  await refToContent.set(
                    {'Confidence': highestConfidencePercentage},
                    SetOptions(merge: true),
                  );
                  await refToContent.set(
                    {'Date': DateTime.now()},
                    SetOptions(merge: true),
                  );
                  Navigator.pop(
                      context); // close CircularProgressIndicator dialog
                  //reload previous page
                  Navigator.pushReplacementNamed(context, '/MainBottomClass');
                  print('done');
                },
                label: const Text('Classify the Disease'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

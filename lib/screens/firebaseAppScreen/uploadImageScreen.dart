import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UploadImageScreen extends StatefulWidget {
  const UploadImageScreen({super.key});

  @override
  State<UploadImageScreen> createState() => _UploadImageScreenState();
}

class _UploadImageScreenState extends State<UploadImageScreen> {
  FirebaseStorage storage = FirebaseStorage.instance;
  File? _photo;
  final ImagePicker _picker = ImagePicker();

  Future imgFromGallery() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _photo = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  Future uploadFile() async {
    if (_photo == null) return;
    String fileName = "sample-image1";

    try {
      final storageRef = storage
          .ref("/test_upload") //Folder Structure
          .child(fileName);   //File name
            final taskSnapshot = await storageRef.putFile(
        _photo!,
      );
      String url = await taskSnapshot.ref.getDownloadURL();
      print(url);
    } catch (e) {
      print('error occured');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Image Upload Screen")),
      body:   Center(
        child: Padding(
              padding: const EdgeInsets.all(35),
              child: Column(children: [
                Center(
                  child: ElevatedButton(
                    onPressed: (){
                      imgFromGallery();
                    },
                    child: const Text('Select An Image'),
                  ),
                ),
                const SizedBox(height: 35),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 300,
                  color: Colors.grey[300],
                  child: _photo != null
                      ? Image.file(_photo!, fit: BoxFit.cover)
                      : const Text('Please select an image'),
                ),
                 const SizedBox(height: 35),
                 Center(
                  child: ElevatedButton(
                    onPressed: (){
                      uploadFile();
                    },
                    child: const Text('Upload Image'),
                  ),
                ),
                //  Container(
                //   alignment: Alignment.center,
                //   width: double.infinity,
                //   height: 300,
                //   color: Colors.grey[300],
                //   child:Image.network("https://firebasestorage.googleapis.com/v0/b/test-project-67c92.appspot.com/o/test_upload%2Fsample-image1?alt=media&token=afe5107c-dd83-4840-9066-5e7d0cf0bc4f")
                // ),
              ]),
            ),
      ),
    );
  }
}

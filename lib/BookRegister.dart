//import 'package:firebase_storage/firebase_storage.dart';
//import 'dart:collection';
import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:image_picker/image_picker.dart';
//import 'package:fluttertoast/fluttertoast.dart';
//import 'package:path/path.dart';

import 'dart:io';

class BookRegister extends StatefulWidget {
  @override
  _BookRegisterState createState() => _BookRegisterState();
}

class _BookRegisterState extends State<BookRegister> {
  File imageFile;
  var formKey = GlobalKey<FormState>();
  TextEditingController booknameController = TextEditingController();
  TextEditingController bookauthorController = TextEditingController();
  TextEditingController bookversionController = TextEditingController();
  TextEditingController bookpriceController = TextEditingController();
  String value;
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: Container(
        color: Colors.lightGreen[200],
        margin: EdgeInsets.all(10.0),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'BOOK REGISTER',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                const SizedBox(height: 30),
                Text(
                  'Book Name',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 10),
                TextFormField(
                    controller: booknameController,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Please fill in the name";
                      } else {
                        return null;
                      }
                    }),
                const SizedBox(height: 10),
                Text(
                  'Book Author',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 10),
                TextFormField(
                    controller: bookauthorController,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Please fill in the author";
                      } else {
                        return null;
                      }
                    }),
                const SizedBox(height: 10),
                Text(
                  'Book Version',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 10),
                TextFormField(
                    controller: bookversionController,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Please fill in the version";
                      } else {
                        return null;
                      }
                    }),
                const SizedBox(height: 10),
                Text(
                  'Book Price (RM)',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 10),
                TextFormField(
                    controller: bookpriceController,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Please fill in the price";
                      } else {
                        return null;
                      }
                    }),
                const SizedBox(height: 10),
                /*Text(
                  'Book Image',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 10),
                imageFile == null
                    ? RaisedButton(
                        color: Colors.white,
                        onPressed: () {
                          _showDialog();
                        },
                        child: Text('Choose Image',
                            style: TextStyle(fontSize: 20)),
                      )
                    : Image.file(imageFile, width: 50, height: 50),
                const SizedBox(height: 30),*/
                RaisedButton(
                  color: Colors.white,
                  onPressed: () {
                    /*if (imageFile == null) {
                      Fluttertoast.showToast(
                          msg: "Please select an image",
                          gravity: ToastGravity.CENTER,
                          toastLength: Toast.LENGTH_LONG,
                          timeInSecForIosWeb: 2);
                    }*/
                    //upload();

                    FirebaseFirestore.instance.collection('bookdatas').add({
                      'bookname': booknameController.text,
                      'bookauthor': bookauthorController.text,
                      'bookversion': bookversionController.text,
                      'bookprice': bookpriceController.text,
                    });
                  },
                  child: Text('Register', style: TextStyle(fontSize: 20)),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }

  Future<void> _showDialog() {
    return showDialog(
      context: context,
      builder: (BuildContext buildContext) {
        return AlertDialog(
            title: Text("You want a photo from?"),
            content: SingleChildScrollView(
                child: ListBody(children: <Widget>[
              GestureDetector(
                child: Text("Gallery"),
                onTap: () {
                  openGallery();
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 8),
              ),
              GestureDetector(
                child: Text("Camera"),
                onTap: () {
                  openCamera();
                },
              ),
            ])));
      },
    );
  }

  Future<void> openGallery() async {
    final picker = ImagePicker();
    PickedFile pickedFile = await picker.getImage(source: ImageSource.gallery);
    this.setState(() {
      imageFile = File(pickedFile.path);
    });
  }

  Future<void> openCamera() async {
    final picker = ImagePicker();
    PickedFile pickedFile = await picker.getImage(source: ImageSource.camera);
    this.setState(() {
      imageFile = File(pickedFile.path);
    });
  }

  Future<void> upload() async {
    /*String filename = basename(imageFile.path);
    Reference storageReference = FirebaseStorage.instance.ref().child("images/$filename");
    final UploadTask uploadTask = storageReference.putFile(imageFile);
    final TaskSnapshot downloadUrl = (await uploadTask);
    final String url = await downloadUrl.ref.getDownloadURL();*/

    /*FirebaseStorage storage = FirebaseStorage.instance;
    Reference ref = storage.ref().child("images" + DateTime.now().toString());
    UploadTask uploadTask = ref.putFile(imageFile);
    uploadTask.then((res) {
      res.ref.getDownloadURL();
    });*/
    /*if (formKey.currentState.validate()) {
      DatabaseReference databaseReference =
          FirebaseDatabase.instance.reference().child("Data");
      String uploadId = databaseReference.push().key;
      HashMap map = new HashMap();
      map["bookname"] = bookname;
      map["bookauthor"] = bookauthor;
      map["bookversion"] = bookversion;
      map["bookprice"] = bookprice;

      databaseReference.child(uploadId).set(map);
    }*/
  }
}

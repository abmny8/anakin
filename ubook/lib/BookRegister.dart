//import 'package:firebase_storage/firebase_storage.dart';
//import 'dart:collection';
import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
//import 'package:image_picker/image_picker.dart';
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
      backgroundColor: Colors.lightGreen[200],
      body: Container(
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
                RaisedButton(
                  color: Colors.white,
                  onPressed: () {
                    FirebaseFirestore.instance.collection('bookdatas').add({
                      'bookname': booknameController.text,
                      'bookauthor': bookauthorController.text,
                      'bookversion': bookversionController.text,
                      'bookprice': bookpriceController.text,
                    });
                  },
                  child: Text('Register', style: TextStyle(fontSize: 20)),
                ),
                RaisedButton(
                  color: Colors.red[400],
                  onPressed: () {
                    formKey.currentState.reset();
                  },
                  child: Text('New Book', style: TextStyle(fontSize: 20)),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

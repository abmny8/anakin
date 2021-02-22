//import 'package:firebase_storage/firebase_storage.dart';
//import 'dart:collection';
import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
//import 'package:image_picker/image_picker.dart';
//import 'package:fluttertoast/fluttertoast.dart';
//import 'package:path/path.dart';

import 'dart:io';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  File imageFile;
  var formKey = GlobalKey<FormState>();
  TextEditingController fullnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController collegeController = TextEditingController();
  TextEditingController courseController = TextEditingController();
  TextEditingController facultyController = TextEditingController();
  String value;
  String index;
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
                  'USER PROFILE REGISTER',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                const SizedBox(height: 30),
                Text(
                  'Full Name',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 10),
                TextFormField(
                    controller: fullnameController,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Please fill in the name";
                      } else {
                        return null;
                      }
                    }),
                const SizedBox(height: 10),
                Text(
                  'E-Mail',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 10),
                TextFormField(
                    controller: emailController,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Please fill in the author";
                      } else {
                        return null;
                      }
                    }),
                const SizedBox(height: 10),
                Text(
                  'College',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 10),
                TextFormField(
                    controller: collegeController,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Please fill in the version";
                      } else {
                        return null;
                      }
                    }),
                const SizedBox(height: 10),
                Text(
                  'Course',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 10),
                TextFormField(
                    controller: courseController,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Please fill in the price";
                      } else {
                        return null;
                      }
                    }),
                const SizedBox(height: 10),
                Text(
                  'Faculty',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 10),
                TextFormField(
                    controller: facultyController,
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
                    FirebaseFirestore.instance
                        .collection('userprofiledatas')
                        .add({
                      'fullname': fullnameController.text,
                      'email': emailController.text,
                      'college': collegeController.text,
                      'course': courseController.text,
                      'faculty': courseController.text,
                    });
                  },
                  child: Text('Register User Profile',
                      style: TextStyle(fontSize: 20)),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

//import 'package:firebase_storage/firebase_storage.dart';
//import 'dart:collection';
//import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
//import 'BookList.dart';
//import 'package:firebase_core/firebase_core.dart';
//import 'package:collection/collection.dart';

//import 'package:image_picker/image_picker.dart';
//import 'package:fluttertoast/fluttertoast.dart';
//import 'package:path/path.dart';

//import 'dart:io';

class DetailedScreen extends StatefulWidget {
  @override
  _DetailedScreenState createState() => _DetailedScreenState();
}

class _DetailedScreenState extends State<DetailedScreen> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: Colors.lightGreen[200],
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'BOOK DETAILS',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              const SizedBox(height: 30),
              Text(
                'Book Name',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(Get.arguments['bookname'],
                  style: TextStyle(color: Colors.black, fontSize: 30.0)),
              const SizedBox(height: 10),
              Text(
                'Book Author',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(Get.arguments['bookauthor'],
                  style: TextStyle(color: Colors.black, fontSize: 30.0)),
              const SizedBox(height: 10),
              Text(
                'Book Version',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(Get.arguments['bookversion'],
                  style: TextStyle(color: Colors.black, fontSize: 30.0)),
              const SizedBox(height: 10),
              Text(
                'Book Price',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(Get.arguments['bookprice'],
                  style: TextStyle(color: Colors.black, fontSize: 30.0)),
              const SizedBox(height: 10),
              RaisedButton(
                color: Colors.red,
                onPressed: () {
                  //FirebaseFirestore.instance.runTransaction((Transaction myTransaction) async {
                  //await myTransaction.delete(snapshot.data.documents[index].reference);
                  //});
                },
                child: Text('Book', style: TextStyle(fontSize: 20)),
              ),
            ],
          ),
        ),
      ),
    ));
  }

  //deleteData(BookList details) async {

  //bookDeleted(detail);

  /* CollectionReference collectionReference =
        FirebaseFirestore.instance.collection('bookdatas');
    QuerySnapshot querySnapshot = await collectionReference.getDocuments();
    querySnapshot.documents[index].reference.delete();*/
  //}
}

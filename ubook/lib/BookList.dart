//import 'package:firebase_storage/firebase_storage.dart';
//import 'dart:collection';
import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'DataCollector.dart';
import 'BookDetails.dart';
import 'package:get/get.dart';
//import 'package:image_picker/image_picker.dart';
//import 'package:fluttertoast/fluttertoast.dart';
//import 'package:path/path.dart';

//import 'dart:io';

class BookList extends StatefulWidget {
  @override
  _BookListState createState() => _BookListState();
}

class _BookListState extends State<BookList> {
  TextEditingController searchController = TextEditingController();
  QuerySnapshot snapshotData;
  bool isExcecuted = false;
  String id;
  @override
  Widget build(BuildContext context) {
    Widget searchedData() {
      return ListView.builder(
          itemCount: snapshotData.docs.length,
          itemBuilder: (BuildContext context, index) {
            return GestureDetector(
              onTap: () {
                Get.to(DetailedScreen(),
                    transition: Transition.downToUp,
                    arguments: snapshotData.docs[index]);
                // id = snapshotData.docs[index];
              },
              child: ListTile(
                title: Text(
                  snapshotData.docs[index].data()['bookname'],
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0),
                ),
                subtitle: Text(
                  snapshotData.docs[index].data()['bookprice'],
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0),
                ),
              ),
            );
          });
    }

    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.clear),
          onPressed: () {
            setState(() {
              isExcecuted = false;
            });
          }),
      backgroundColor: Colors.lightGreen[200],
      appBar: AppBar(
        actions: [
          GetBuilder<DataController>(
              init: DataController(),
              builder: (val) {
                return IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      val.queryData(searchController.text).then(
                        (value) {
                          snapshotData = value;
                          setState(
                            () {
                              isExcecuted = true;
                            },
                          );
                        },
                      );
                    });
              })
        ],
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Search Book',
          ),
          controller: searchController,
        ),
      ),
      body: isExcecuted
          ? searchedData()
          : Container(
              child: Center(
                child: Text('Search any books',
                    style: TextStyle(color: Colors.black, fontSize: 30.0)),
              ),
            ),
    );
  }

  deleteData() async {
    await FirebaseFirestore.instance
        .collection('bookdatas')
        .doc(id.toString())
        .delete();
  }
}

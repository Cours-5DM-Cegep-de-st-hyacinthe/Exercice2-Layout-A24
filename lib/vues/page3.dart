// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {

  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Page 2'),
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(Icons.arrow_back, color: Colors.black)
          ),
          bottom: TabBar(tabs:[
            Tab(text: "Tab1",),
            Tab(text: "Tab2",),
            Tab(text: "Tab3",)
          ]),
        ),
        body: TabBarView(children: [
          Expanded(child: Container(color: Colors.blue,)),
          Expanded(child: Container(color: Colors.red,)),
          Expanded(child: Container(color: Colors.green,)),
        ],) 
      ));
  }
}
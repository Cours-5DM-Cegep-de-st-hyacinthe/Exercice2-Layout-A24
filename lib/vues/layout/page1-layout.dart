// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Page1Layout extends StatelessWidget {
  const Page1Layout({
    super.key, 
    required this.conteneurVert,
    required this.conteneurJaune,
    required this.conteneurBleu,
    required this.boutonNaviguer});

  final Widget conteneurVert;
  final Widget conteneurJaune;
  final Widget conteneurBleu;
  final Widget boutonNaviguer;

  @override
  Widget build(BuildContext context) {
    return Column( children: [
        Expanded(child: Row(children: [
          Expanded(child: conteneurVert),
          Expanded(child: Center(child: boutonNaviguer))
        ])),
        Expanded(flex: 3, child: Row(children: [
          Expanded(flex:2, child: conteneurJaune),
          Expanded(flex:2, child: conteneurVert),
          Expanded(flex:2, child: Column(children: [
            Expanded(flex: 3, child: conteneurBleu),
            Expanded(child: conteneurJaune)
          ])),
          Expanded(flex: 3, child: Column(children: [
            Expanded(child: conteneurBleu),
            Expanded(flex:3, child: Container())
          ])),
          Expanded(flex: 3, child: Column(children: [

          ]))
        ])),
        Expanded(child: Row(children: [

        ])),
      ],
    );
  }
}
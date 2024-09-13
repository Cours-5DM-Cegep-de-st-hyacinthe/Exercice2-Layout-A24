import 'package:flutter/material.dart';
import 'package:layout_adaptatif/vues/layout/page1-layout.dart';
import 'package:layout_adaptatif/vues/mon-drawer.dart';
import 'package:layout_adaptatif/vues/page2.dart';

class Page1 extends StatelessWidget {

  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      drawer: MonDrawer(),
      body: Page1Layout(
        conteneurVert: Container(color: Colors.green),
        conteneurJaune: Container(color: Colors.yellow),
        conteneurBleu: Container(color: Colors.blue),
        boutonNaviguer: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                              builder: (context) => const Page2())
                              );
                            }, 
                            child: const Text("Aller à la page 2")),
      ) 
    );
  }
}
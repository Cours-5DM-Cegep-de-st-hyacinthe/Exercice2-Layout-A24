// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:layout_adaptatif/vues/page3.dart';

class Page2 extends StatelessWidget {

  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(Icons.arrow_back, color: Colors.black)
        )
      ),
      
      body: Column( children: [
        Center(child: 
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => const Page3())
                );
              }, 
              child: const Text("Aller à la page 3")
          )
        ),

        Expanded(child: ListView(
          padding: const EdgeInsets.all(8),
          children: [
            for(var i = 0; i < 30; i++) 
              Row(key: Key("listeScrollableElement$i"), children: [
                Text("Élément ${i + 1}", style: TextStyle(fontSize: 32))
              ])
          ],
        ))
      ]) 
    );
  }
}
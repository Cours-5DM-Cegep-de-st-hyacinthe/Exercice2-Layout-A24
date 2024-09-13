import 'package:flutter/material.dart';
import 'package:layout_adaptatif/vues/page2.dart';
import 'package:layout_adaptatif/vues/page3.dart';

class MonDrawer extends StatelessWidget {

  const MonDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer( child:
      Column(
        children: [
          Container(height: 40),
          Text(
            "Menu",
            style: TextStyle(fontSize: 32)
          ),
          Expanded(
            child: ListView(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.popUntil(context, (route) => route.isFirst);
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => const Page2())
                    );
                  },
                  child: const Text("Aller à la page 2"
                  ), 
                ),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => const Page3())
                    );
                  },
                  child: const Text("Aller à la page 3"
                  ), 
                )
              ],
            )
          )
        ],
      )
    );
  }
}
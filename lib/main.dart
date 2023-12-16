import 'package:flutter/material.dart';

void main() {
   runApp(MaterialApp(
     home: Scaffold(
       appBar: AppBar(title: const Text("Hello Eli!")),
       body: Column(
         mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: [
           Container(
             decoration: const BoxDecoration(
                 color: Colors.red
             ),
             child: const Text("One"),
           ),
           Container(
             decoration: const BoxDecoration(
                 color: Colors.green
             ),
             child: const Text("Two"),
           ),Container(
             decoration: const BoxDecoration(
                 color: Colors.blue
             ),
             child: const Text("Three"),
           )
         ],
       )
     ),
     ),
   );
}
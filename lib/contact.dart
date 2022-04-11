import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Me', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Center(child: Text("Nama : Aldi Rizky Gunawan \nEmail : aldirizkyg17@gmail.com \nIg : @_Aldiirr", style: TextStyle(fontSize: 20))),
    );
  }
}

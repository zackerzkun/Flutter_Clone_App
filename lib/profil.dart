import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
        ),
        title: Text(
          "Coinstelly",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}

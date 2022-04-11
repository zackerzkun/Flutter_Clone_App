import 'package:flutter/material.dart';

class Dash1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          color: Colors.white,
        ),
        title: Text(
          "Coinstelly",
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        actions: [
          IconButton(
            color: Colors.black,
            padding: const EdgeInsets.only(right: 20.0),
            icon: Icon(Icons.share),
            onPressed: () {},
          ),
          // add more IconButton
        ],

        // automaticallyImplyLeading: false,
      ),
      body: Container(
        color: Colors.white,
        child: Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            child: Card(
              elevation: 4,
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Container(
                width: MediaQuery.of(context).size.width * 1,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Container(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 500),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                                text: "Convicts Seeking to Clear Their Records Find More Prosecutors Willing to Help",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 20,
                                )),
                            TextSpan(
                                text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                  fontSize: 15,
                                )),
                          ],
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}

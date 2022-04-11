import 'package:flutter/material.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'custom.dart';
import 'NewsArticle.dart';
import 'NewsHelper.dart';

class Drawer1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
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
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
          actions: [
            IconButton(
              color: Colors.black,
              padding: const EdgeInsets.only(right: 20.0),
              icon: Icon(Icons.notifications),
              onPressed: () {},
            ),
            // add more IconButton
          ],
        ),
        drawer: CustomDrawer(),
        body: ListView.builder(
          itemBuilder: (context, position) {
            Column(
              children: [
                CustomRadioButton(
                  //Radio Button Tidak Muncul
                  padding: 100,
                  enableShape: true,
                  autoWidth: true,
                  elevation: 0,
                  absoluteZeroSpacing: true,
                  unSelectedColor: Theme.of(context).canvasColor,
                  buttonLables: [
                    'Student',
                    'Parent',
                    'Teacher',
                  ],
                  buttonValues: [
                    "STUDENT",
                    "PARENT",
                    "TEACHER",
                  ],
                  buttonTextStyle: ButtonTextStyle(selectedColor: Colors.white, unSelectedColor: Colors.black, textStyle: TextStyle(fontSize: 16)),
                  radioButtonValue: (value) {
                    print(value);
                  },
                  selectedColor: Theme.of(context).accentColor,
                ),
                IconButton(
                  color: Colors.black,
                  icon: Icon(Icons.notifications),
                  onPressed: () {},
                ),
              ],
            );
            NewsArticle article = NewsHelper.getArticle(position);
            return Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 0.5, 0.0, 0.5),
                child: Card(
                  child: new InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, article.navArticle);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            article.categoryTitle,
                            style: TextStyle(color: Colors.black38, fontWeight: FontWeight.w500, fontSize: 16.0),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Flexible(
                                  child: Text(
                                    article.title,
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
                                  ),
                                  flex: 3,
                                ),
                                Flexible(
                                  flex: 1,
                                  child: Container(
                                      height: 80.0,
                                      width: 80.0,
                                      child: Image.asset(
                                        "assets/images/" + article.imageAssetName,
                                        fit: BoxFit.cover,
                                      )),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    article.author,
                                    style: TextStyle(fontSize: 18.0),
                                  ),
                                  Text(
                                    article.date + " . " + article.readTime,
                                    style: TextStyle(color: Colors.black45, fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ));
          },
          itemCount: NewsHelper.articleCount,
        ),
      );
}

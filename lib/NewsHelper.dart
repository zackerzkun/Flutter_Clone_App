import 'NewsArticle.dart';

class NewsHelper {
  static var articleCount = 4;

  static var navArticle = [
    "/Dash1",
    "/Dash2",
    "/Dash3",
    "/Dash4"
  ];
  static var categoryTitles = [
    "GOOGLE",
    "TRENDING",
    "DATA SCIENTISTS",
    "DESIGNER"
  ];
  static var titles = [
    "Google is redefining mobile with artificial intelligence",
    "Revealed: The cities with the highest quality of life",
    "The most in demand Skills for Data Scientists",
    "How To Design Emotional Interfaces For Boring Apps"
  ];
  static var authorNames = [
    "Owen Williams",
    "Rudolf Kramysky",
    "Jeff Hele",
    "Smasing Magazine"
  ];
  static var date = [
    "12 Sept",
    "15 hours ago",
    "27 Apr",
    "14 Jun"
  ];
  static var readTimes = [
    "7 min read",
    "14 min read",
    "8 min read",
    "8 min read"
  ];
  static var imageAssetName = [
    "Bp1.jpg",
    "Bp2.jpg",
    "Bp3.jpg",
    "Bp4.jpg"
  ];

  static getArticle(int position) {
    return NewsArticle(navArticle[position], categoryTitles[position], titles[position], authorNames[position], date[position], readTimes[position], imageAssetName[position]);
  }
}

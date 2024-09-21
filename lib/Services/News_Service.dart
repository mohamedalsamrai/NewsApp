// ignore_for_file: file_names

import 'package:dio/dio.dart';
import 'package:news/models/EntertaimentNews_modle.dart';
import 'package:news/models/GnaralNews_modle.dart';
import 'package:news/models/HealthNews_model.dart';
import 'package:news/models/SportNews_model.dart';

class NewsService {
  final dio = Dio();

  Future<List<GnaralnewsModle>> getNews() async {
    try {
      Response response = await dio.get(
          "https://eventregistry.org/api/v1/article/getArticles?keyword=%D8%A7%D9%84%D8%B9%D8%B1%D8%A7%D9%82&apiKey=bb4ff359-cfb2-49a3-ba4f-18bf7c022115");

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData["articles"]["results"];
      List<GnaralnewsModle> gnarlNews = [];
      for (var element in articles) {
        GnaralnewsModle gnaralnewsModle = GnaralnewsModle(
          title: element["title"],
          subtitle: element["body"],
          urlImage: element["image"],
        );
        gnarlNews.add(gnaralnewsModle);
      }
      return gnarlNews;
    } catch (e) {
      return [];
    }
  }
  Future<List<SportnewsModel>> getSportNews() async {
    try {
      Response response = await dio.get(
          "https://eventregistry.org/api/v1/article/getArticles?keyword=%D8%A7%D9%84%D8%B1%D9%8A%D8%A7%D8%B6%D8%A9&apiKey=bb4ff359-cfb2-49a3-ba4f-18bf7c022115");

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData["articles"]["results"];
      List<SportnewsModel> sportNews = [];
      for (var element in articles) {
        SportnewsModel sportnewsModel = SportnewsModel(
          title: element["title"],
          subtitle: element["body"],
          urlImage: element["image"],
        );
        sportNews.add(sportnewsModel);
      }
      return sportNews;
    } catch (e) {
      return [];
    }
  }
  Future<List<EntertaimentnewsModle>> getEntertaimentNews() async {
    try {
      Response response = await dio.get(
          "https://eventregistry.org/api/v1/article/getArticles?keyword=%D8%AA%D8%B1%D9%81%D9%8A%D9%87&apiKey=bb4ff359-cfb2-49a3-ba4f-18bf7c022115");

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData["articles"]["results"];
      List<EntertaimentnewsModle> entertaimentNews = [];
      for (var element in articles) {
        EntertaimentnewsModle entertaimentnewsModle = EntertaimentnewsModle(
          title: element["title"],
          subtitle: element["body"],
          urlImage: element["image"],
        );
        entertaimentNews.add(entertaimentnewsModle);
      }
      return entertaimentNews;
    } catch (e) {
      return [];
    }
  }
   Future<List<HealthnewsModel>> getHealthNews() async {
    try {
      Response response = await dio.get(
          "https://eventregistry.org/api/v1/article/getArticles?keyword=%D8%A7%D9%84%D8%B5%D8%AD%D8%A9&apiKey=bb4ff359-cfb2-49a3-ba4f-18bf7c022115");

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData["articles"]["results"];
      List<HealthnewsModel> healthNews = [];
      for (var element in articles) {
        HealthnewsModel healthnewsModel = HealthnewsModel(
          title: element["title"],
          subtitle: element["body"],
          urlImage: element["image"],
        );
        healthNews.add(healthnewsModel);
      }
      return healthNews;
    } catch (e) {
      return [];
    }
  }
}

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_shortener/app/modules/models/isgd_model.dart';
import 'package:flutter_shortener/app/modules/models/urls_model.dart';

class IsGdRepository {
  List<UrlsModel> urlsList = List<UrlsModel>();

  var dio;
  Future<List<UrlsModel>> shortingUrl(String longUrl) async {
    dio = Dio();
    try {
      Response response =
          await dio.get('https://is.gd/create.php?format=json&url=$longUrl');

      var res = await json.decode(response.data);

      IsGdModel shortResponse = IsGdModel.fromJson(res);

      if (shortResponse.shorturl != null) {
        UrlsModel urls =
            UrlsModel(longUrl: longUrl, shortUrl: shortResponse.shorturl);
        urlsList.add(urls);
        return urlsList;
      } else {
        print(shortResponse.errormessage);
      }
    } catch (e) {
      print('Esse é o Erro: $e');
    }

    print('Fim do processo!');
  }
}

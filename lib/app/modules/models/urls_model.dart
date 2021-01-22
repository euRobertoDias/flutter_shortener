class UrlsModel {
  final String longUrl;
  final String shortUrl;

  UrlsModel({this.longUrl, this.shortUrl});

  factory UrlsModel.fromJson(Map<String, dynamic> json) =>
      UrlsModel(shortUrl: json["shorturl"], longUrl: json['longurl']);

  Map<String, dynamic> toJson() => {
        "shorturl": shortUrl,
      };
}

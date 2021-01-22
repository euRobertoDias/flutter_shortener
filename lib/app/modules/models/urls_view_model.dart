class UrlsViewModel {
  final String longUrl;
  final String shortUrl;

  UrlsViewModel({this.longUrl, this.shortUrl});

  factory UrlsViewModel.fromJson(Map<String, dynamic> json) =>
      UrlsViewModel(shortUrl: json["shorturl"], longUrl: json['longurl']);

  Map<String, dynamic> toJson() => {
        "shorturl": shortUrl,
      };
}

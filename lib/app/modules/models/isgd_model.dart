import 'dart:convert';

class IsGdModel {
  IsGdModel({this.shorturl, this.errorcode, this.errormessage});

  final String shorturl;
  final String errormessage;
  final int errorcode;

  factory IsGdModel.fromRawJson(String str) =>
      IsGdModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory IsGdModel.fromJson(Map<String, dynamic> json) => IsGdModel(
        shorturl: json["shorturl"],
        errorcode: json["errorcode"],
        errormessage: json["errormessage"],
      );

  Map<String, dynamic> toJson() => {
        "shorturl": shorturl,
      };
}

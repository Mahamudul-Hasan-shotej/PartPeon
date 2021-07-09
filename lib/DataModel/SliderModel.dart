// To parse this JSON data, do
//
//     final sliderModel = sliderModelFromJson(jsonString);

import 'dart:convert';

SliderModel sliderModelFromJson(String str) =>
    SliderModel.fromJson(json.decode(str));

String sliderModelToJson(SliderModel data) => json.encode(data.toJson());

class SliderModel {
  SliderModel({
    this.isExecuted,
    this.data,
    this.message,
  });

  bool isExecuted;
  List<Datum> data;
  String message;

  factory SliderModel.fromJson(Map<String, dynamic> json) => SliderModel(
        isExecuted: json["isExecuted"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "isExecuted": isExecuted,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "message": message,
      };
}

class Datum {
  Datum({
    this.id,
    this.datumId,
    this.title,
    this.subtitle,
    this.image,
  });

  String id;
  String datumId;
  String title;
  String subtitle;
  String image;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["_id"],
        datumId: json["id"],
        title: json["title"],
        subtitle: json["subtitle"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "id": datumId,
        "title": title,
        "subtitle": subtitle,
        "image": image,
      };
}

// To parse this JSON data, do
//
//     final allCatagoryModel = allCatagoryModelFromJson(jsonString);

import 'dart:convert';

AllCatagoryModel allCatagoryModelFromJson(String str) =>
    AllCatagoryModel.fromJson(json.decode(str));

String allCatagoryModelToJson(AllCatagoryModel data) =>
    json.encode(data.toJson());

class AllCatagoryModel {
  AllCatagoryModel({
    this.isExecuted,
    this.data,
    this.message,
  });

  bool isExecuted;
  List<Datum> data;
  String message;

  factory AllCatagoryModel.fromJson(Map<String, dynamic> json) =>
      AllCatagoryModel(
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
    this.name,
    this.hasSubCategory,
    this.parentId,
    this.parentName,
    this.datumId,
    this.child,
  });

  String id;
  String name;
  bool hasSubCategory;
  String parentId;
  String parentName;
  String datumId;
  List<Datum> child;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["_id"],
        name: json["name"],
        hasSubCategory: json["hasSubCategory"],
        parentId: json["parentId"],
        parentName: json["parentName"],
        datumId: json["id"],
        child: List<Datum>.from(json["child"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "hasSubCategory": hasSubCategory,
        "parentId": parentId,
        "parentName": parentName,
        "id": datumId,
        "child": List<dynamic>.from(child.map((x) => x.toJson())),
      };
}

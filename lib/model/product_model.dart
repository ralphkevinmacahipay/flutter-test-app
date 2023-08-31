// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

List<ProductData> kGetProdDataFromJson(String str) => List<ProductData>.from(
    json.decode(str).map((x) => ProductData.fromJson(x)));

String welcomeToJson(List<ProductData> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductData {
  String image;
  String buttonTitle;

  ProductData({
    required this.image,
    required this.buttonTitle,
  });

  factory ProductData.fromJson(Map<String, dynamic> json) => ProductData(
        image: json["image"],
        buttonTitle: json["button_title"],
      );

  Map<String, dynamic> toJson() => {
        "image": image,
        "button_title": buttonTitle,
      };
}

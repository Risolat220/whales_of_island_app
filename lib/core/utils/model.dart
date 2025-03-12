import 'dart:convert';

List<WhalesModel> whalesModelFromJson(String str) => List<WhalesModel>.from(json.decode(str).map((x) => WhalesModel.fromJson(x)));

String whalesModelToJson(List<WhalesModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class WhalesModel {
  final String? title;
  final String? subtitle;
  final int? length;
  final int? weight;
  final String? imageUrl;
  final int? duration;
  final String? population;
  final String? text;
  final String? id;

  WhalesModel({
    this.title,
    this.subtitle,
    this.length,
    this.weight,
    this.imageUrl,
    this.duration,
    this.population,
    this.text,
    this.id,
  });

  factory WhalesModel.fromJson(Map<String, dynamic> json) => WhalesModel(
    title: json["title"],
    subtitle: json["subtitle"],
    length: json["length"],
    weight: json["weight"],
    imageUrl: json["imageUrl"],
    duration: json["duration"],
    population: json["population"],
    text: json["text"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "subtitle": subtitle,
    "length": length,
    "weight": weight,
    "imageUrl": imageUrl,
    "duration": duration,
    "population": population,
    "text": text,
    "id": id,
  };
}

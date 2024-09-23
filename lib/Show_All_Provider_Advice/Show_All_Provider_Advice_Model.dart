// To parse this JSON data, do
//
//     final showAllProviderAdviceModel = showAllProviderAdviceModelFromJson(jsonString);

import 'dart:convert';

ShowAllProviderAdviceModel showAllProviderAdviceModelFromJson(String str) => ShowAllProviderAdviceModel.fromJson(json.decode(str));

String showAllProviderAdviceModelToJson(ShowAllProviderAdviceModel data) => json.encode(data.toJson());

class ShowAllProviderAdviceModel {
  List<Detaill> details;

  ShowAllProviderAdviceModel({
    required this.details,
  });

  factory ShowAllProviderAdviceModel.fromJson(Map<String, dynamic> json) => ShowAllProviderAdviceModel(
    details: List<Detaill>.from(json["details"].map((x) => Detaill.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "details": List<dynamic>.from(details.map((x) => x.toJson())),
  };
}

class Detaill {
  int id;
  int categoryId;
  int userId;
  String question;
  int status;
  String image;

  Detaill({
    required this.id,
    required this.categoryId,
    required this.userId,
    required this.question,
    required this.status,
    required this.image,
  });

  factory Detaill.fromJson(Map<String, dynamic> json) => Detaill(
    id: json["id"],
    categoryId: json["category_id"],
    userId: json["user_id"],
    question: json["question"],
    status: json["status"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "category_id": categoryId,
    "user_id": userId,
    "question": question,
    "status": status,
    "image": image,
  };
}

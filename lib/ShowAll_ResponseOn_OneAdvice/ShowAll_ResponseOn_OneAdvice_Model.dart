// To parse this JSON data, do
//
//     final showAllResponseOnOneAdviceModel = showAllResponseOnOneAdviceModelFromJson(jsonString);

import 'dart:convert';

ShowAllResponseOnOneAdviceModel showAllResponseOnOneAdviceModelFromJson(String str) => ShowAllResponseOnOneAdviceModel.fromJson(json.decode(str));

String showAllResponseOnOneAdviceModelToJson(ShowAllResponseOnOneAdviceModel data) => json.encode(data.toJson());

class ShowAllResponseOnOneAdviceModel {
  Detailss? detailss;

  ShowAllResponseOnOneAdviceModel({
     this.detailss,
  });

  factory ShowAllResponseOnOneAdviceModel.fromJson(Map<String, dynamic> json) => ShowAllResponseOnOneAdviceModel(
    detailss: Detailss.fromJson(json["details"]),
  );

  Map<String, dynamic> toJson() => {
    "details": detailss!.toJson(),
  };
}

class Detailss {

  int? id;
  int? categoryId;
  int ?userId;
  String? question;
  int? status;
  String? image;
  // DateTime createdAt;
  // DateTime updatedAt;
  List<Reply>? replies;

  Detailss({
     this.id,
     this.categoryId,
     this.userId,
     this.question,
     this.status,
     this.image,
    // required this.createdAt,
    // required this.updatedAt,
     this.replies,
  });

  factory Detailss.fromJson(Map<String, dynamic> json) => Detailss(
    id: json["id"],
    categoryId: json["category_id"],
    userId: json["user_id"],
    question: json["question"],
    status: json["status"],
    image: json["image"],
    // createdAt: DateTime.parse(json["created_at"]),
    // updatedAt: DateTime.parse(json["updated_at"]),
    replies: List<Reply>.from(json["replies"].map((x) => Reply.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "category_id": categoryId,
    "user_id": userId,
    "question": question,
    "status": status,
    "image": image,
    // "created_at": createdAt.toIso8601String(),
    // "updated_at": updatedAt.toIso8601String(),
    "replies": List<dynamic>.from(replies!.map((x) => x.toJson())),
  };
}

class Reply {
  int id;
  int questionId;
  int providerId;
  String reply;
  // DateTime createdAt;
  // DateTime updatedAt;
  Provider provider;

  Reply({
    required this.id,
    required this.questionId,
    required this.providerId,
    required this.reply,
    // required this.createdAt,
    // required this.updatedAt,
    required this.provider,
  });

  factory Reply.fromJson(Map<String, dynamic> json) => Reply(
    id: json["id"],
    questionId: json["question_id"],
    providerId: json["provider_id"],
    reply: json["reply"],
    // createdAt: DateTime.parse(json["created_at"]),
    // updatedAt: DateTime.parse(json["updated_at"]),
    provider: Provider.fromJson(json["provider"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "question_id": questionId,
    "provider_id": providerId,
    "reply": reply,
    // "created_at": createdAt.toIso8601String(),
    // "updated_at": updatedAt.toIso8601String(),
    "provider": provider.toJson(),
  };
}

class Provider {
  int id;
  String firstName;
  String lastName;
  String email;
  dynamic emailVerifiedAt;
  String type;
  String address;
  int status;
  int phone;
  int rate;
  // DateTime createdAt;
  // DateTime updatedAt;

  Provider({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    this.emailVerifiedAt,
    required this.type,
    required this.address,
    required this.status,
    required this.phone,
    required this.rate,
    // required this.createdAt,
    // required this.updatedAt,
  });

  factory Provider.fromJson(Map<String, dynamic> json) => Provider(
    id: json["id"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    email: json["email"],
    emailVerifiedAt: json["email_verified_at"],
    type: json["type"],
    address: json["address"],
    status: json["status"],
    phone: json["phone"],
    rate: json["rate"],
    // createdAt: DateTime.parse(json["created_at"]),
    // updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "first_name": firstName,
    "last_name": lastName,
    "email": email,
    "email_verified_at": emailVerifiedAt,
    "type": type,
    "address": address,
    "status": status,
    "phone": phone,
    "rate": rate,
    // "created_at": createdAt.toIso8601String(),
    // "updated_at": updatedAt.toIso8601String(),
  };
}

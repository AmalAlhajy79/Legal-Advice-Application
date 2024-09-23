
import 'dart:convert';

ShowAllMyResponseOnUserAdviceModel showAllMyResponseOnUserAdviceModelFromJson(String str) => ShowAllMyResponseOnUserAdviceModel.fromJson(json.decode(str));

String showAllMyResponseOnUserAdviceModelToJson(ShowAllMyResponseOnUserAdviceModel data) => json.encode(data.toJson());

class ShowAllMyResponseOnUserAdviceModel {
  List<Detail> details;

  ShowAllMyResponseOnUserAdviceModel({
    required this.details,
  });

  factory ShowAllMyResponseOnUserAdviceModel.fromJson(Map<String, dynamic> json) => ShowAllMyResponseOnUserAdviceModel(
    details: List<Detail>.from(json["details"].map((x) => Detail.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "details": List<dynamic>.from(details.map((x) => x.toJson())),
  };
}

class Detail {
  int id;
  int questionId;
  int providerId;
  String reply;

  Detail({
    required this.id,
    required this.questionId,
    required this.providerId,
    required this.reply,
  });

  factory Detail.fromJson(Map<String, dynamic> json) => Detail(
    id: json["id"],
    questionId: json["question_id"],
    providerId: json["provider_id"],
    reply: json["reply"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "question_id": questionId,
    "provider_id": providerId,
    "reply": reply,
  };
}

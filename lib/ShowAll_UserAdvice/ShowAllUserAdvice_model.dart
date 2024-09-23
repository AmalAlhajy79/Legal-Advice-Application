
import 'dart:convert';

ShowAllUserAdviceModel showAllUserAdviceModelFromJson(String str) {
  final jsonData = json.decode(str);
  return ShowAllUserAdviceModel.fromJson(jsonData);
}

String showAllUserAdviceModelToJson(ShowAllUserAdviceModel data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}

class ShowAllUserAdviceModel {
  List<Detailll> details;

  ShowAllUserAdviceModel({
    required this.details,
  });

  factory ShowAllUserAdviceModel.fromJson(Map<String, dynamic> json) => new ShowAllUserAdviceModel(
    details: new List<Detailll>.from(json["details"].map((x) => Detailll.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "details": new List<dynamic>.from(details.map((x) => x.toJson())),
  };
}

class Detailll {
  int id;
  int categoryId;
  int userId;
  String question;
  int status;
  String image;
  Category category;

  Detailll({
    required this.id,
    required this.categoryId,
    required this.userId,
    required this.question,
    required this.status,
    required this.image,
    required this.category,
  });

  factory Detailll.fromJson(Map<String, dynamic> json) => new Detailll(
    id: json["id"],
    categoryId: json["category_id"],
    userId: json["user_id"],
    question: json["question"],
    status: json["status"],
    image: json["image"],
    category: Category.fromJson(json["category"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "category_id": categoryId,
    "user_id": userId,
    "question": question,
    "status": status,
    "image": image,
    "category": category.toJson(),
  };
}

class Category {
  int id;
  String name;
  Category({
    required this.id,
    required this.name,
  });

  factory Category.fromJson(Map<String, dynamic> json) => new Category(
    id: json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
  };
}



HagzModel showAllProviderAdviceModelFromJson(String str) => HagzModel.fromJson(json.decode(str));

String showAllProviderAdviceModelToJson(HagzModel data) => json.encode(data.toJson());


class HagzModel {
  List<Detaillll> details;

  HagzModel({
    required this.details,
  });
  factory HagzModel.fromJson(Map<String, dynamic> json) => HagzModel(
    details: List<Detaillll>.from(json["details"].map((x) => Detaillll.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "details": List<dynamic>.from(details.map((x) => x.toJson())),
  };
}

class Detaillll {
 // int id;
  int providerId;
 // int userId;
  DateTime date;
  String time;
 // int status;
 //  DateTime createdAt;
 //  DateTime updatedAt;
  Provider user;
 // Provider provider;



  Map<String, dynamic> toJson() => {
    "details": List<dynamic>.from(details.map((x) => x.toJson())),
  };
  Detaillll({
  //  this?.id,
    required this.providerId,
 //   this.userId,
    required this.date,
    required this.time,
  //  this.status,
  //   this.createdAt,
  //   this.updatedAt,
    required this.user,
  //  required this.provider,
  });

}

class Provider {
//  int id;
  String firstName;
  String lastName;
  //String email;
 // dynamic emailVerifiedAt;
  String type;
  //String address;
  //int status;
  int phone;
  // String image;
  // int rate;
  // DateTime createdAt;
  // DateTime updatedAt;

  Provider({
   // this.id,

    required this.firstName,
    required this.lastName,
   // this.email,
   //  this.emailVerifiedAt,
    required this.type,
   //  this.address,
   //  this.status,
    required this.phone,
    // this.image,
    // this.rate,
    // this.createdAt,
    // this.updatedAt,
  });
  factory Detaillll.fromJson(Map<String, dynamic> json) => Detaillll(
    providerId: json["provider_id"],
    date: json["date"],
    time: json["time"],
    user: json["user"],

  );

  get providerId => null;

  Map<String, dynamic> toJson() => {
    "providerId": providerId,
    "date": date,
    "time": time,
    "user": user,
  };

}

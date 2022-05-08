
import 'dart:convert';


class Album {
  final int userId;
  final int id;
  final String title;

  const Album({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}

// UserModel UserModelFromJson(String str) => UserModel.fromJson(json.decode(str));

// String UserModelToJson(UserModel data) => json.encode(data.toJson());

// class UserModel {
//   List<Data>? data;
//   Links? links;
//   Meta? meta;
//   bool? status;
//   String? message;
//   int? statusCode;

//   UserModel(
//       {this.data,
//       this.links,
//       this.meta,
//       this.status,
//       this.message,
//       this.statusCode});

//   UserModel.fromJson(Map<String, dynamic> json) {
//     if (json['data'] != null) {
//       data = <Data>[];
//       json['data'].forEach((v) {
//         data!.add(new Data.fromJson(v));
//       });
//     }
//     links = json['links'] != null ? new Links.fromJson(json['links']) : null;
//     meta = json['meta'] != null ? new Meta.fromJson(json['meta']) : null;
//     status = json['status'];
//     message = json['message'];
//     statusCode = json['statusCode'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.data != null) {
//       data['data'] = this.data!.map((v) => v.toJson()).toList();
//     }
//     if (this.links != null) {
//       data['links'] = this.links!.toJson();
//     }
//     if (this.meta != null) {
//       data['meta'] = this.meta!.toJson();
//     }
//     data['status'] = this.status;
//     data['message'] = this.message;
//     data['statusCode'] = this.statusCode;
//     return data;
//   }
// }

// class Data {
//   int? id;
//   String? name;
//   String? profilePhotoUrl;
//   String? description;
//   String? primaryContactNumber;
//   String? secondaryContactNumber;
//   String? primaryEmail;
//   String? secondaryEmail;
//   String? websiteLink;
//   String? registrationNumber;
//   int? bedQuantityGeneral;
//   int? bedQuantityEmergency;
//   int? bedQuantityIcu;
//   List<Services>? services;
//   List<Addresses>? addresses;
//   int? distance;

//   Data(
//       {this.id,
//       this.name,
//       this.profilePhotoUrl,
//       this.description,
//       this.primaryContactNumber,
//       this.secondaryContactNumber,
//       this.primaryEmail,
//       this.secondaryEmail,
//       this.websiteLink,
//       this.registrationNumber,
//       this.bedQuantityGeneral,
//       this.bedQuantityEmergency,
//       this.bedQuantityIcu,
//       this.services,
//       this.addresses,
//       this.distance});

//   Data.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     profilePhotoUrl = json['profilePhotoUrl'];
//     description = json['description'];
//     primaryContactNumber = json['primaryContactNumber'];
//     secondaryContactNumber = json['secondaryContactNumber'];
//     primaryEmail = json['primaryEmail'];
//     secondaryEmail = json['secondaryEmail'];
//     websiteLink = json['websiteLink'];
//     registrationNumber = json['registrationNumber'];
//     bedQuantityGeneral = json['bedQuantityGeneral'];
//     bedQuantityEmergency = json['bedQuantityEmergency'];
//     bedQuantityIcu = json['bedQuantityIcu'];
//     if (json['services'] != null) {
//       services = <Services>[];
//       json['services'].forEach((v) {
//         services!.add(new Services.fromJson(v));
//       });
//     }
//     if (json['addresses'] != null) {
//       addresses = <Addresses>[];
//       json['addresses'].forEach((v) {
//         addresses!.add(new Addresses.fromJson(v));
//       });
//     }
//     distance = json['distance'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['profilePhotoUrl'] = this.profilePhotoUrl;
//     data['description'] = this.description;
//     data['primaryContactNumber'] = this.primaryContactNumber;
//     data['secondaryContactNumber'] = this.secondaryContactNumber;
//     data['primaryEmail'] = this.primaryEmail;
//     data['secondaryEmail'] = this.secondaryEmail;
//     data['websiteLink'] = this.websiteLink;
//     data['registrationNumber'] = this.registrationNumber;
//     data['bedQuantityGeneral'] = this.bedQuantityGeneral;
//     data['bedQuantityEmergency'] = this.bedQuantityEmergency;
//     data['bedQuantityIcu'] = this.bedQuantityIcu;
//     if (this.services != null) {
//       data['services'] = this.services!.map((v) => v.toJson()).toList();
//     }
//     if (this.addresses != null) {
//       data['addresses'] = this.addresses!.map((v) => v.toJson()).toList();
//     }
//     data['distance'] = this.distance;
//     return data;
//   }
// }

// class Services {
//   int? id;
//   String? name;
//   String? type;

//   Services({this.id, this.name, this.type});

//   Services.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     type = json['type'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['type'] = this.type;
//     return data;
//   }
// }

// class Addresses {
//   int? id;
//   String? addressLine1;
//   String? addressLine2;
//   String? addressLine3;
//   String? addressLine4;
//   String? city;
//   String? districtName;
//   int? districtId;
//   String? latitude;
//   String? longitude;

//   Addresses(
//       {this.id,
//       this.addressLine1,
//       this.addressLine2,
//       this.addressLine3,
//       this.addressLine4,
//       this.city,
//       this.districtName,
//       this.districtId,
//       this.latitude,
//       this.longitude});

//   Addresses.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     addressLine1 = json['addressLine1'];
//     addressLine2 = json['addressLine2'];
//     addressLine3 = json['addressLine3'];
//     addressLine4 = json['addressLine4'];
//     city = json['city'];
//     districtName = json['districtName'];
//     districtId = json['districtId'];
//     latitude = json['latitude'];
//     longitude = json['longitude'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['addressLine1'] = this.addressLine1;
//     data['addressLine2'] = this.addressLine2;
//     data['addressLine3'] = this.addressLine3;
//     data['addressLine4'] = this.addressLine4;
//     data['city'] = this.city;
//     data['districtName'] = this.districtName;
//     data['districtId'] = this.districtId;
//     data['latitude'] = this.latitude;
//     data['longitude'] = this.longitude;
//     return data;
//   }
// }

// class Links {
//   String? first;
//   String? last;
//   String? prev;
//   String? next;

//   Links({this.first, this.last, this.prev, this.next});

//   Links.fromJson(Map<String, dynamic> json) {
//     first = json['first'];
//     last = json['last'];
//     prev = json['prev'];
//     next = json['next'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['first'] = first;
//     data['last'] = last;
//     data['prev'] = prev;
//     data['next'] = next;
//     return data;
//   }
// }

// class Meta {
//   int? currentPage;
//   int? from;
//   int? lastPage;
//   List<Links>? links;
//   String? path;
//   int? perPage;
//   int? to;
//   int? total;

//   Meta(
//       {this.currentPage,
//       this.from,
//       this.lastPage,
//       this.links,
//       this.path,
//       this.perPage,
//       this.to,
//       this.total});

//   Meta.fromJson(Map<String, dynamic> json) {
//     currentPage = json['current_page'];
//     from = json['from'];
//     lastPage = json['last_page'];
//     if (json['links'] != null) {
//       links = <Links>[];
//       json['links'].forEach((v) {
//         links!.add(new Links.fromJson(v));
//       });
//     }
//     path = json['path'];
//     perPage = json['per_page'];
//     to = json['to'];
//     total = json['total'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['current_page'] = this.currentPage;
//     data['from'] = this.from;
//     data['last_page'] = this.lastPage;
//     if (this.links != null) {
//       data['links'] = this.links!.map((v) => v.toJson()).toList();
//     }
//     data['path'] = this.path;
//     data['per_page'] = this.perPage;
//     data['to'] = this.to;
//     data['total'] = this.total;
//     return data;
//   }
// }

// class Link {
//   String? url;
//   String? label;
//   bool? active;

//   Link({this.url, this.label, this.active});

//   Link.fromJson(Map<String, dynamic> json) {
//     url = json['url'];
//     label = json['label'];
//     active = json['active'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['url'] = this.url;
//     data['label'] = this.label;
//     data['active'] = this.active;
//     return data;
//   }
// }
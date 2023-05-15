class SearchModel {
  List<Data>? data;
  int? success;

  SearchModel({this.data, this.success});

  SearchModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['success'] = this.success;
    return data;
  }
}

class Data {
  int? id;
  String? name;
  String? familyId;
  String? firstName;
  String? lastName;
  String? zip;

  Data(
      {this.id,
        this.name,
        this.familyId,
        this.firstName,
        this.lastName,
        this.zip});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    familyId = json['family_id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    zip = json['zip'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['family_id'] = this.familyId;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['zip'] = this.zip;
    return data;
  }
}
class AddChildModel {
  Data? data;
  String? message;
  int? success;

  AddChildModel({this.data, this.message, this.success});

  AddChildModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    message = json['message'];
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = this.message;
    data['success'] = this.success;
    return data;
  }
}

class Data {
  Child? child;

  Data({this.child});

  Data.fromJson(Map<String, dynamic> json) {
    child = json['child'] != null ? new Child.fromJson(json['child']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.child != null) {
      data['child'] = this.child!.toJson();
    }
    return data;
  }
}

class Child {
  int? id;
  String? firstName;
  String? lastName;
  String? shortName;
  String? dob;
  int? roleId;
  String? photo;
  String? banner;
  String? zip;
  String? isPrimary;
  String? color;
  String? email;

  Child(
      {this.id,
        this.firstName,
        this.lastName,
        this.shortName,
        this.dob,
        this.roleId,
        this.photo,
        this.banner,
        this.zip,
        this.isPrimary,
        this.color,
        this.email});

  Child.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    shortName = json['short_name'];
    dob = json['dob'];
    roleId = json['role_id'];
    photo = json['photo'];
    banner = json['banner'];
    zip = json['zip'];
    isPrimary = json['is_primary'];
    color = json['color'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['short_name'] = this.shortName;
    data['dob'] = this.dob;
    data['role_id'] = this.roleId;
    data['photo'] = this.photo;
    data['banner'] = this.banner;
    data['zip'] = this.zip;
    data['is_primary'] = this.isPrimary;
    data['color'] = this.color;
    data['email'] = this.email;
    return data;
  }
}
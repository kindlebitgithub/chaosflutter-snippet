class FamilyProfileModel {
  int? success;
  Data? data;

  FamilyProfileModel({this.success, this.data});

  FamilyProfileModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? name;
  String? id;
  String? lastName;
  String? photo;
  String? banner;
  List<Adults>? adults;
  List<Adults>? children;
  Roles? roles;

  Data({this.name, this.id, this.adults, this.children, this.roles});

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
    lastName = json['last_name'];
    photo = json['photo'];
    banner = json['banner'];
    if (json['adults'] != null) {
      adults = <Adults>[];
      json['adults'].forEach((v) {
        adults!.add(new Adults.fromJson(v));
      });
    }
    if (json['children'] != null) {
      children = <Adults>[];
      json['children'].forEach((v) {
        children!.add(new Adults.fromJson(v));
      });
    }
    roles = json['roles'] != null ? new Roles.fromJson(json['roles']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['id'] = this.id;
    data['last_name'] = this.lastName;
    data['photo'] = this.photo;
    data['banner'] = this.banner;
    if (this.adults != null) {
      data['adults'] = this.adults!.map((v) => v.toJson()).toList();
    }
    if (this.children != null) {
      data['children'] = this.children!.map((v) => v.toJson()).toList();
    }
    if (this.roles != null) {
      data['roles'] = this.roles!.toJson();
    }
    return data;
  }
}

class Adults {
  int? id;
  String? firstName;
  String? lastName;
  String? shortName;
  String? dob;
  int? roleId;
  String? photo;
  String? banner;
  String? zip;
  int? isPrimary;
  int? userId;
  String? color;
  String? email;

  Adults(
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

  Adults.fromJson(Map<String, dynamic> json) {
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
    userId = json['user_id'];
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
    data['user_id'] = this.userId;
    data['color'] = this.color;
    data['email'] = this.email;
    return data;
  }
}

class Roles {
  String? s1;
  String? s2;
  String? s3;

  Roles({this.s1, this.s2, this.s3});

  Roles.fromJson(Map<String, dynamic> json) {
    s1 = json['1'];
    s2 = json['2'];
    s3 = json['3'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['1'] = this.s1;
    data['2'] = this.s2;
    data['3'] = this.s3;
    return data;
  }
}
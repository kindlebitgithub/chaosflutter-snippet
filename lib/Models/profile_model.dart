class ProfileModel {
  int? success;
  Data? data;

  ProfileModel({this.success, this.data});

  ProfileModel.fromJson(Map<String, dynamic> json) {
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
  User? user;
  FamilyMember? familyMember;
  Family? family;

  Data({this.user, this.familyMember, this.family});

  Data.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    familyMember = json['familyMember'] != null
        ? new FamilyMember.fromJson(json['familyMember'])
        : null;
    family =
    json['family'] != null ? new Family.fromJson(json['family']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    if (this.familyMember != null) {
      data['familyMember'] = this.familyMember!.toJson();
    }
    if (this.family != null) {
      data['family'] = this.family!.toJson();
    }
    return data;
  }
}

class User {
  int? id;
  String? name;
  String? email;
  Null? emailVerifiedAt;
  int? status;

  User({this.id, this.name, this.email, this.emailVerifiedAt, this.status});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['status'] = this.status;
    return data;
  }
}

class FamilyMember {
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
  String? color;
  String? email;
  int? userId;

  FamilyMember(
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
        this.email,
        this.userId});

  FamilyMember.fromJson(Map<String, dynamic> json) {
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
    userId = json['user_id'];
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
    data['user_id'] = this.userId;
    return data;
  }
}

class Family {
  int? id;
  String? name;
  String? familyId;
  String? photo;
  String? banner;

  Family({this.id, this.name, this.familyId, this.photo, this.banner});

  Family.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    familyId = json['family_id'];
    photo = json['photo'];
    banner = json['banner'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['family_id'] = this.familyId;
    data['photo'] = this.photo;
    data['banner'] = this.banner;
    return data;
  }
}
class LinkedFamilyModel {
  int? success;
  Data? data;

  LinkedFamilyModel({this.success, this.data});

  LinkedFamilyModel.fromJson(Map<String, dynamic> json) {
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
  List<Members>? members;
  Family? family;

  Data({this.members, this.family});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['members'] != null) {
      members = <Members>[];
      json['members'].forEach((v) {
        members!.add(new Members.fromJson(v));
      });
    }
    family =
    json['family'] != null ? new Family.fromJson(json['family']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.members != null) {
      data['members'] = this.members!.map((v) => v.toJson()).toList();
    }
    if (this.family != null) {
      data['family'] = this.family!.toJson();
    }
    return data;
  }
}

class Members {
  int? linkId;
  String? familyName;
  String? familyId;
  String? familyPhoto;
  int? approved;

  Members(
      {this.linkId,
        this.familyName,
        this.familyId,
        this.familyPhoto,
        this.approved});

  Members.fromJson(Map<String, dynamic> json) {
    linkId = json['link_id'];
    familyName = json['family_name'];
    familyId = json['family_id'];
    familyPhoto = json['family_photo'];
    approved = json['approved'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['link_id'] = this.linkId;
    data['family_name'] = this.familyName;
    data['family_id'] = this.familyId;
    data['family_photo'] = this.familyPhoto;
    data['approved'] = this.approved;
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
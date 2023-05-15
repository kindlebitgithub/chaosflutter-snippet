class MyGroupModel {
  int? success;
  Data? data;

  MyGroupModel({this.success, this.data});

  MyGroupModel.fromJson(Map<String, dynamic> json) {
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
  List<Groups>? groups;

  Data({this.groups});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['groups'] != null) {
      groups = <Groups>[];
      json['groups'].forEach((v) {
        groups!.add(new Groups.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.groups != null) {
      data['groups'] = this.groups!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Groups {
  int? id;
  String? name;
  Child? child;
  String? photo;
  String? family;
  List<Members>? members;

  Groups(
      {this.id, this.name, this.child, this.photo, this.family, this.members});

  Groups.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    child = json['child'] != null ? new Child.fromJson(json['child']) : null;
    photo = json['photo'];
    family = json['family'];
    if (json['members'] != null) {
      members = <Members>[];
      json['members'].forEach((v) {
        members!.add(new Members.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    if (this.child != null) {
      data['child'] = this.child!.toJson();
    }
    data['photo'] = this.photo;
    data['family'] = this.family;
    if (this.members != null) {
      data['members'] = this.members!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Child {
  String? firstName;
  String? lastName;
  String? shortName;
  String? photo;
  String? color;

  Child(
      {this.firstName, this.lastName, this.shortName, this.photo, this.color});

  Child.fromJson(Map<String, dynamic> json) {
    firstName = json['first_name'];
    lastName = json['last_name'];
    shortName = json['short_name'];
    photo = json['photo'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['short_name'] = this.shortName;
    data['photo'] = this.photo;
    data['color'] = this.color;
    return data;
  }
}

class Members {
  String? firstName;
  String? lastName;
  String? shortName;

  Members({this.firstName, this.lastName, this.shortName});

  Members.fromJson(Map<String, dynamic> json) {
    firstName = json['first_name'];
    lastName = json['last_name'];
    shortName = json['short_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['short_name'] = this.shortName;
    return data;
  }
}
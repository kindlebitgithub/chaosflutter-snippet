class RiquestRideModel {
  int? success;
  Data? data;

  RiquestRideModel({this.success, this.data});

  RiquestRideModel.fromJson(Map<String, dynamic> json) {
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
  List<LinkedFamilies>? linkedFamilies;
  List<Activities>? activities;
  List<GroupsOrAdults>? groupsOrAdults;
  List<DriveTypes>? driveTypes;

  Data(
      {this.linkedFamilies,
        this.activities,
        this.groupsOrAdults,
        this.driveTypes});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['linkedFamilies'] != null) {
      linkedFamilies = <LinkedFamilies>[];
      json['linkedFamilies'].forEach((v) {
        linkedFamilies!.add(new LinkedFamilies.fromJson(v));
      });
    }
    if (json['activities'] != null) {
      activities = <Activities>[];
      json['activities'].forEach((v) {
        activities!.add(new Activities.fromJson(v));
      });
    }
    if (json['groupsOrAdults'] != null) {
      groupsOrAdults = <GroupsOrAdults>[];
      json['groupsOrAdults'].forEach((v) {
        groupsOrAdults!.add(new GroupsOrAdults.fromJson(v));
      });
    }
    if (json['driveTypes'] != null) {
      driveTypes = <DriveTypes>[];
      json['driveTypes'].forEach((v) {
        driveTypes!.add(new DriveTypes.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.linkedFamilies != null) {
      data['linkedFamilies'] =
          this.linkedFamilies!.map((v) => v.toJson()).toList();
    }
    if (this.activities != null) {
      data['activities'] = this.activities!.map((v) => v.toJson()).toList();
    }
    if (this.groupsOrAdults != null) {
      data['groupsOrAdults'] =
          this.groupsOrAdults!.map((v) => v.toJson()).toList();
    }
    if (this.driveTypes != null) {
      data['driveTypes'] = this.driveTypes!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class DriveTypes {
  int? id;
  String? name;

  DriveTypes({this.id, this.name});

  DriveTypes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}

class LinkedFamilies {
  String? name;
  int? id;

  LinkedFamilies({this.name, this.id});

  LinkedFamilies.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['id'] = this.id;
    return data;
  }
}

class Activities {
  int? id;
  String? heading;
  String? date;
  String? childShort;
  String? childFirst;
  bool? is_incomplete;

  Activities(
      {this.id, this.heading, this.date, this.childShort, this.childFirst});

  Activities.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    heading = json['heading'];
    date = json['date'];
    childShort = json['child_short'];
    childFirst = json['child_first'];
    is_incomplete = json['is_incomplete'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['heading'] = this.heading;
    data['date'] = this.date;
    data['child_short'] = this.childShort;
    data['child_short'] = this.childShort;
    data['is_incomplete'] = this.is_incomplete;
    return data;
  }
}

class GroupsOrAdults {
  int? id;
  String? name;
  String? first_name;
  String? last_name;
  Child? child;
  String? photo;
  String? family;
  List<Members>? members;

  GroupsOrAdults(
      {this.id, this.name, this.child, this.photo, this.family, this.members});

  GroupsOrAdults.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    first_name = json['first_name'];
    last_name = json['last_name'];
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
    data['first_name'] = this.first_name;
    data['last_name'] = this.last_name;
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
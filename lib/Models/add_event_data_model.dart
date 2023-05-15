class AddEventDataModel {
  int? success;
  Data? data;

  AddEventDataModel({this.success, this.data});

  AddEventDataModel.fromJson(Map<String, dynamic> json) {
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
  List<ChildrenList>? childrenList;
  List<DriversList>? driversList;
  List<DriveTypes>? driveTypes;
  List<RiderList>? riderList;
  List<EventsList>? eventsList;
  List<EventTypeList>? eventTypeList;
  List<LinkedGroups>? linkedGroups;

  Data(
      {this.childrenList,
        this.driversList,
        this.driveTypes,
        this.riderList,
        this.eventsList,
        this.eventTypeList,
        this.linkedGroups});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['childrenList'] != null) {
      childrenList = <ChildrenList>[];
      json['childrenList'].forEach((v) {
        childrenList!.add(new ChildrenList.fromJson(v));
      });
    }
    if (json['driversList'] != null) {
      driversList = <DriversList>[];
      json['driversList'].forEach((v) {
        driversList!.add(new DriversList.fromJson(v));
      });
    }
    if (json['driveTypes'] != null) {
      driveTypes = <DriveTypes>[];
      json['driveTypes'].forEach((v) {
        driveTypes!.add(new DriveTypes.fromJson(v));
      });
    }
    if (json['riderList'] != null) {
      riderList = <RiderList>[];
      json['riderList'].forEach((v) {
        riderList!.add(new RiderList.fromJson(v));
      });
    }
    if (json['eventsList'] != null) {
      eventsList = <EventsList>[];
      json['eventsList'].forEach((v) {
        eventsList!.add(new EventsList.fromJson(v));
      });
    }
    if (json['eventTypeList'] != null) {
      eventTypeList = <EventTypeList>[];
      json['eventTypeList'].forEach((v) {
        eventTypeList!.add(new EventTypeList.fromJson(v));
      });
    }
    if (json['linkedGroups'] != null) {
      linkedGroups = <LinkedGroups>[];
      json['linkedGroups'].forEach((v) {
        linkedGroups!.add(new LinkedGroups.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.childrenList != null) {
      data['childrenList'] = this.childrenList!.map((v) => v.toJson()).toList();
    }
    if (this.driversList != null) {
      data['driversList'] = this.driversList!.map((v) => v.toJson()).toList();
    }
    if (this.driveTypes != null) {
      data['driveTypes'] = this.driveTypes!.map((v) => v.toJson()).toList();
    }
    if (this.riderList != null) {
      data['riderList'] = this.riderList!.map((v) => v.toJson()).toList();
    }
    if (this.eventsList != null) {
      data['eventsList'] = this.eventsList!.map((v) => v.toJson()).toList();
    }
    if (this.eventTypeList != null) {
      data['eventTypeList'] =
          this.eventTypeList!.map((v) => v.toJson()).toList();
    }
    if (this.linkedGroups != null) {
      data['linkedGroups'] = this.linkedGroups!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ChildrenList {
  int? id;
  String? firstName;
  String? lastName;

  ChildrenList({this.id, this.firstName, this.lastName});

  ChildrenList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    return data;
  }
}

class DriversList {
  int? id;
  String? firstName;
  String? lastName;
  bool? ourFamily;

  DriversList({this.id, this.firstName, this.lastName, this.ourFamily});

  DriversList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    ourFamily = json['our_family'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['our_family'] = this.ourFamily;
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

class EventsList {
  int? id;
  String? name;
  String? color;

  EventsList({this.id, this.name, this.color});

  EventsList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['color'] = this.color;
    return data;
  }
}

class LinkedGroups {
  int? id;
  String? name;
  Child? child;
  String? photo;
  String? family;
  List<Members>? members;

  LinkedGroups(
      {this.id, this.name, this.child, this.photo, this.family, this.members});

  LinkedGroups.fromJson(Map<String, dynamic> json) {
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

class EventTypeList {
  int? id;
  String? name;

  EventTypeList({this.id, this.name});

  EventTypeList.fromJson(Map<String, dynamic> json) {
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

class RiderList {
  int? id;
  String? firstName;
  String? lastName;
  String? shortName;
  String? email;
  int? roleId;
  String? dob;
  String? zip;
  String? primarySport;
  String? familyName;
  int? familyId;
  String? userId;
  int? isPrimary;
  String? color;
  String? banner;
  String? photo;
  String? createdAt;
  String? updatedAt;

  RiderList(
      {this.id,
        this.firstName,
        this.lastName,
        this.shortName,
        this.email,
        this.roleId,
        this.dob,
        this.zip,
        this.primarySport,
        this.familyName,
        this.familyId,
        this.userId,
        this.isPrimary,
        this.color,
        this.banner,
        this.photo,
        this.createdAt,
        this.updatedAt});

  RiderList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    shortName = json['short_name'];
    email = json['email'];
    roleId = json['role_id'];
    dob = json['dob'];
    zip = json['zip'];
    primarySport = json['primary_sport'];
    familyName = json['family_name'];
    familyId = json['family_id'];
    userId = json['user_id'];
    isPrimary = json['is_primary'];
    color = json['color'];
    banner = json['banner'];
    photo = json['photo'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['short_name'] = this.shortName;
    data['email'] = this.email;
    data['role_id'] = this.roleId;
    data['dob'] = this.dob;
    data['zip'] = this.zip;
    data['primary_sport'] = this.primarySport;
    data['family_name'] = this.familyName;
    data['family_id'] = this.familyId;
    data['user_id'] = this.userId;
    data['is_primary'] = this.isPrimary;
    data['color'] = this.color;
    data['banner'] = this.banner;
    data['photo'] = this.photo;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

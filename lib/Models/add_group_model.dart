class AddGroupDataModel {
  Data? data;
  int? success;

  AddGroupDataModel({this.data, this.success});

  AddGroupDataModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['success'] = this.success;
    return data;
  }
}

class Data {
  List<ChildrenList>? childrenList;
  List<LinkedAdults>? linkedAdults;
  List<LinkedFamilies>? linkedFamilies;

  Data({this.childrenList, this.linkedAdults, this.linkedFamilies});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['childrenList'] != null) {
      childrenList = <ChildrenList>[];
      json['childrenList'].forEach((v) {
        childrenList!.add(new ChildrenList.fromJson(v));
      });
    }
    if (json['linkedAdults'] != null) {
      linkedAdults = <LinkedAdults>[];
      json['linkedAdults'].forEach((v) {
        linkedAdults!.add(new LinkedAdults.fromJson(v));
      });
    }
    if (json['linkedFamilies'] != null) {
      linkedFamilies = <LinkedFamilies>[];
      json['linkedFamilies'].forEach((v) {
        linkedFamilies!.add(new LinkedFamilies.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.childrenList != null) {
      data['childrenList'] = this.childrenList!.map((v) => v.toJson()).toList();
    }
    if (this.linkedAdults != null) {
      data['linkedAdults'] = this.linkedAdults!.map((v) => v.toJson()).toList();
    }
    if (this.linkedFamilies != null) {
      data['linkedFamilies'] =
          this.linkedFamilies!.map((v) => v.toJson()).toList();
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

class LinkedAdults {
  int? id;
  String? firstName;
  String? lastName;
  int? familyIdNum;
  int? familyLinkId;

  LinkedAdults(
      {this.id,
        this.firstName,
        this.lastName,
        this.familyIdNum,
        this.familyLinkId});

  LinkedAdults.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    familyIdNum = json['family_id_num'];
    familyLinkId = json['family_link_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['family_id_num'] = this.familyIdNum;
    data['family_link_id'] = this.familyLinkId;
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
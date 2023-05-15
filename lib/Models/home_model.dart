class HomeModel {
  int? success;
  Data? data;

  HomeModel({this.success, this.data});

  HomeModel.fromJson(Map<String, dynamic> json) {
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
  int? noFamily;
  List<Events>? events;
  List<AvailableAdults>? availableAdults;

  Data({this.noFamily, this.events, this.availableAdults});

  Data.fromJson(Map<String, dynamic> json) {
    noFamily = json['noFamily'];
    if (json['events'] != null) {
      events = <Events>[];
      json['events'].forEach((v) {
        events!.add(new Events.fromJson(v));
      });
    }
    if (json['availableAdults'] != null) {
      availableAdults = <AvailableAdults>[];
      json['availableAdults'].forEach((v) {
        availableAdults!.add(new AvailableAdults.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['noFamily'] = this.noFamily;
    if (this.events != null) {
      data['events'] = this.events!.map((v) => v.toJson()).toList();
    }
    if (this.availableAdults != null) {
      data['availableAdults'] =
          this.availableAdults!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Events {
  int? id;
  String? requestId;
  String? handleType;
  String? status_color;
  String? groupId;
  String? group_name;
  String? title;
  String? titleColor;
  String? date;
  String? timestamp;
  String? dateTime;
  List<String>? iconDate;
  int? childId;
  Child? child;
  List<Drivers>? drivers;
  List<Riders>? riders;

  Events(
      {this.id,
        this.requestId,
        this.handleType,
        this.status_color,
        this.groupId,
        this.group_name,
        this.title,
        this.titleColor,
        this.date,
        this.timestamp,
        this.dateTime,
        this.iconDate,
        this.childId,
        this.child,
        this.drivers,
        this.riders});

  Events.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    requestId = json['request_id'];
    handleType = json['handle_type'];
    status_color = json['status_color'];
    groupId = json['group_id'];
    group_name = json['group_name'];
    title = json['title'];
    titleColor = json['title_color'];
    date = json['date'];
    timestamp = json['timestamp'];
    dateTime = json['date_time'];
    iconDate = json['icon_date'].cast<String>();
    childId = json['child_id'];
    child = json['child'] != null ? new Child.fromJson(json['child']) : null;
    if (json['drivers'] != null) {
      drivers = <Drivers>[];
      json['drivers'].forEach((v) {
        drivers!.add(new Drivers.fromJson(v));
      });
    }
    if (json['riders'] != null) {
      riders = <Riders>[];
      json['riders'].forEach((v) {
        riders!.add(new Riders.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['request_id'] = this.requestId;
    data['handle_type'] = this.handleType;
    data['group_id'] = this.groupId;
    data['group_name'] = this.group_name;
    data['title'] = this.title;
    data['title_color'] = this.titleColor;
    data['date'] = this.date;
    data['timestamp'] = this.timestamp;
    data['date_time'] = this.dateTime;
    data['icon_date'] = this.iconDate;
    data['child_id'] = this.childId;
    if (this.child != null) {
      data['child'] = this.child!.toJson();
    }
    if (this.drivers != null) {
      data['drivers'] = this.drivers!.map((v) => v.toJson()).toList();
    }
    if (this.riders != null) {
      data['riders'] = this.riders!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Child {
  int? id;
  String? firstName;
  String? lastName;
  String? shortName;
  String? photo;
  String? color;

  Child(
      {this.id,
        this.firstName,
        this.lastName,
        this.shortName,
        this.photo,
        this.color});

  Child.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    shortName = json['short_name'];
    photo = json['photo'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['short_name'] = this.shortName;
    data['photo'] = this.photo;
    data['color'] = this.color;
    return data;
  }
}

class Drivers {
  String? driveType;
  Child? driver;

  Drivers({this.driveType, this.driver});

  Drivers.fromJson(Map<String, dynamic> json) {
    driveType = json['drive_type'];
    driver = json['driver'] != null ? new Child.fromJson(json['driver']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['drive_type'] = this.driveType;
    if (this.driver != null) {
      data['driver'] = this.driver!.toJson();
    }
    return data;
  }
}

class Riders {
  int? id;
  String? rider;
  String? riderType;
  String? riderStatus;

  Riders({this.id, this.rider, this.riderType, this.riderStatus});

  Riders.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    rider = json['rider'];
    riderType = json['riderType'];
    riderStatus = json['rider_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['rider'] = this.rider;
    data['riderType'] = this.riderType;
    data['rider_status'] = this.riderStatus;
    return data;
  }
}

class AvailableAdults {
  int? id;
  String? firstName;
  String? lastName;
  String? familyIdNum;
  String? familyLinkId;

  AvailableAdults(
      {this.id,
        this.firstName,
        this.lastName,
        this.familyIdNum,
        this.familyLinkId});

  AvailableAdults.fromJson(Map<String, dynamic> json) {
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
class EventByChildModel {
  int? success;
  Data? data;

  EventByChildModel({this.success, this.data});

  EventByChildModel.fromJson(Map<String, dynamic> json) {
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
  Child? child;
  List<Events>? events;

  Data({this.child, this.events});

  Data.fromJson(Map<String, dynamic> json) {
    child = json['child'] != null ? new Child.fromJson(json['child']) : null;
    if (json['events'] != null) {
      events = <Events>[];
      json['events'].forEach((v) {
        events!.add(new Events.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.child != null) {
      data['child'] = this.child!.toJson();
    }
    if (this.events != null) {
      data['events'] = this.events!.map((v) => v.toJson()).toList();
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
  int? isPrimary;
  String? color;
  String? email;
  int? userId;

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
        this.email,
        this.userId});

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

class Events {
  int? id;
  String? address;
  String? location;
  String? eventList;
  String? eventListColor;
  String? time;
  String? date;
  String? timestamp;
  String? startTimestamp;
  String? timestampEnd;
  String? eventComplete;
  String? recurring;
  List<Riders>? riders;
  List<Drivers>? drivers;
  bool? editDelete;

  Events(
      {this.id,
        this.address,
        this.location,
        this.eventList,
        this.eventListColor,
        this.time,
        this.date,
        this.timestamp,
        this.startTimestamp,
        this.timestampEnd,
        this.eventComplete,
        this.recurring,
        this.riders,
        this.drivers,
        this.editDelete});

  Events.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    address = json['address'];
    location = json['location'];
    eventList = json['event_list'];
    eventListColor = json['event_list_color'];
    time = json['time'];
    date = json['date'];
    timestamp = json['timestamp'];
    startTimestamp = json['start_timestamp'];
    timestampEnd = json['timestamp_end'];
    eventComplete = json['event_complete'];
    recurring = json['recurring'];
    if (json['riders'] != null) {
      riders = <Riders>[];
      json['riders'].forEach((v) {
        riders!.add(new Riders.fromJson(v));
      });
    }
    if (json['drivers'] != null) {
      drivers = <Drivers>[];
      json['drivers'].forEach((v) {
        drivers!.add(new Drivers.fromJson(v));
      });
    }
    editDelete = json['edit_delete'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['address'] = this.address;
    data['location'] = this.location;
    data['event_list'] = this.eventList;
    data['event_list_color'] = this.eventListColor;
    data['time'] = this.time;
    data['date'] = this.date;
    data['timestamp'] = this.timestamp;
    data['start_timestamp'] = this.startTimestamp;
    data['timestamp_end'] = this.timestampEnd;
    data['event_complete'] = this.eventComplete;
    data['recurring'] = this.recurring;
    if (this.riders != null) {
      data['riders'] = this.riders!.map((v) => v.toJson()).toList();
    }
    if (this.drivers != null) {
      data['drivers'] = this.drivers!.map((v) => v.toJson()).toList();
    }
    data['edit_delete'] = this.editDelete;
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

class Drivers {
  String? driveType;
  Driver? driver;

  Drivers({this.driveType, this.driver});

  Drivers.fromJson(Map<String, dynamic> json) {
    driveType = json['drive_type'];
    driver =
    json['driver'] != null ? new Driver.fromJson(json['driver']) : null;
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

class Driver {
  int? id;
  String? firstName;
  String? lastName;
  String? shortName;
  String? photo;
  String? color;

  Driver(
      {this.id,
        this.firstName,
        this.lastName,
        this.shortName,
        this.photo,
        this.color});

  Driver.fromJson(Map<String, dynamic> json) {
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
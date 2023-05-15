class EventByDateModel {
  int? success;
  Data? data;

  EventByDateModel({this.success, this.data});

  EventByDateModel.fromJson(Map<String, dynamic> json) {
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
  List<Events>? events;
  List<FamilyChildren>? familyChildren;

  Data({this.events, this.familyChildren});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['events'] != null) {
      events = <Events>[];
      json['events'].forEach((v) {
        events!.add(new Events.fromJson(v));
      });
    }
    if (json['familyChildren'] != null) {
      familyChildren = <FamilyChildren>[];
      json['familyChildren'].forEach((v) {
        familyChildren!.add(new FamilyChildren.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.events != null) {
      data['events'] = this.events!.map((v) => v.toJson()).toList();
    }
    if (this.familyChildren != null) {
      data['familyChildren'] =
          this.familyChildren!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Events {
  String? date;
  List<EventsByDate>? eventsByDate;

  Events({this.date, this.eventsByDate});

  Events.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    if (json['eventsByDate'] != null) {
      eventsByDate = <EventsByDate>[];
      json['eventsByDate'].forEach((v) {
        eventsByDate!.add(new EventsByDate.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    if (this.eventsByDate != null) {
      data['eventsByDate'] = this.eventsByDate!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class EventsByDate {
  int? id;
  String? eventList;
  String? eventListColor;
  String? time;
  String? timestamp;
  String? timestampEnd;
  String? startTimestamp;
  String? eventComplete;
  String? recurring;
  Child? child;
  List<Drivers>? drivers;
  bool? editDelete;

  EventsByDate(
      {this.id,
        this.eventList,
        this.eventListColor,
        this.time,
        this.timestamp,
        this.timestampEnd,
        this.startTimestamp,
        this.eventComplete,
        this.recurring,
        this.child,
        this.drivers,
        this.editDelete});

  EventsByDate.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    eventList = json['event_list'];
    eventListColor = json['event_list_color'];
    time = json['time'];
    timestamp = json['timestamp'];
    timestampEnd = json['timestamp_end'];
    startTimestamp = json['start_timestamp'];
    eventComplete = json['event_complete'];
    recurring = json['recurring'];
    child = json['child'] != null ? new Child.fromJson(json['child']) : null;
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
    data['event_list'] = this.eventList;
    data['event_list_color'] = this.eventListColor;
    data['time'] = this.time;
    data['timestamp'] = this.timestamp;
    data['timestamp_end'] = this.timestampEnd;
    data['start_timestamp'] = this.startTimestamp;
    data['event_complete'] = this.eventComplete;
    data['recurring'] = this.recurring;
    if (this.child != null) {
      data['child'] = this.child!.toJson();
    }
    if (this.drivers != null) {
      data['drivers'] = this.drivers!.map((v) => v.toJson()).toList();
    }
    data['edit_delete'] = this.editDelete;
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

class FamilyChildren {
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

  FamilyChildren(
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

  FamilyChildren.fromJson(Map<String, dynamic> json) {
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
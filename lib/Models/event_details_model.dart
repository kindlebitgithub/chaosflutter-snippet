class EventDetailsModel {
  Data? data;

  EventDetailsModel({this.data});

  EventDetailsModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  bool? editDelete;
  Activity? activity;

  Data({this.editDelete, this.activity});

  Data.fromJson(Map<String, dynamic> json) {
    editDelete = json['edit_delete'];
    activity = json['activity'] != null
        ? new Activity.fromJson(json['activity'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['edit_delete'] = this.editDelete;
    if (this.activity != null) {
      data['activity'] = this.activity!.toJson();
    }
    return data;
  }
}

class Activity {
  int? eventId;
  int? childId;
  String? childMember;
  String? eventAt;
  String? eventEnd;
  String? date;
  String? time;
  String? dateEnd;
  String? timeEnd;
  String? address;
  String? latitude;
  String? longitude;
  String? location;
  String? driverId;
  String? driveType;
  String? otherDriverId;
  String? otherDriveType;
  int? otherStatus;
  String? recurring;
  List<Riders>? riders;
  String? eventType;
  String? event;
  String? eventComplete;

  Activity(
      {this.eventId,
        this.childId,
        this.childMember,
        this.eventAt,
        this.eventEnd,
        this.date,
        this.time,
        this.dateEnd,
        this.timeEnd,
        this.address,
        this.latitude,
        this.longitude,
        this.location,
        this.driverId,
        this.driveType,
        this.otherDriverId,
        this.otherDriveType,
        this.otherStatus,
        this.recurring,
        this.riders,
        this.eventType,
        this.event,
      this.eventComplete
      });

  Activity.fromJson(Map<String, dynamic> json) {
    eventId = json['event_id'];
    childId = json['child_id'];
    childMember = json['child_member'];
    eventAt = json['event_at'];
    eventEnd = json['event_end'];
    date = json['date'];
    time = json['time'];
    dateEnd = json['date_end'];
    timeEnd = json['time_end'];
    address = json['address'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    location = json['location'];
    driverId = json['driver_id'];
    driveType = json['drive_type'];
    otherDriverId = json['other_driver_id'];
    otherDriveType = json['other_drive_type'];
    otherStatus = json['other_status'];
    recurring = json['recurring'];
    if (json['riders'] != null) {
      riders = <Riders>[];
      json['riders'].forEach((v) {
        riders!.add(new Riders.fromJson(v));
      });
    }
    eventType = json['event_type'];
    event = json['event'];
    eventComplete = json['event_complete'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['event_id'] = this.eventId;
    data['child_id'] = this.childId;
    data['child_member'] = this.childMember;
    data['event_at'] = this.eventAt;
    data['event_end'] = this.eventEnd;
    data['date'] = this.date;
    data['time'] = this.time;
    data['date_end'] = this.dateEnd;
    data['time_end'] = this.timeEnd;
    data['address'] = this.address;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['location'] = this.location;
    data['driver_id'] = this.driverId;
    data['drive_type'] = this.driveType;
    data['other_driver_id'] = this.otherDriverId;
    data['other_drive_type'] = this.otherDriveType;
    data['other_status'] = this.otherStatus;
    data['recurring'] = this.recurring;
    if (this.riders != null) {
      data['riders'] = this.riders!.map((v) => v.toJson()).toList();
    }
    data['event_type'] = this.eventType;
    data['event'] = this.event;
    data['event_complete'] =this.eventComplete;
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
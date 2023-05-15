class NotificationModel {
  int? success;
  Data? data;

  NotificationModel({this.success, this.data});

  NotificationModel.fromJson(Map<String, dynamic> json) {
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
  Settings? settings;

  Data({this.settings});

  Data.fromJson(Map<String, dynamic> json) {
    settings = json['settings'] != null
        ? new Settings.fromJson(json['settings'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.settings != null) {
      data['settings'] = this.settings!.toJson();
    }
    return data;
  }
}

class Settings {
  int? pushNotifications;
  int? emailNotifications;
  int? rideRequests;
  int? newEventFcm;
  int? newEventEmail;
  int? newEventSms;
  int? newRideRequestFcm;
  int? newRideRequestEmail;
  int? newRideRequestSms;
  int? eventChangeFcm;
  int? eventChangeEmail;
  int? eventChangeSms;
  int? newFamilyRequestFcm;
  int? newFamilyRequestEmail;
  int? newFamilyRequestSms;
  int? eventReminderFcm;
  int? eventReminderEmail;
  int? eventReminderSms;
  int? event_reminder_time;

  Settings(
      {this.pushNotifications,
        this.emailNotifications,
        this.rideRequests,
        this.newEventFcm,
        this.newEventEmail,
        this.newEventSms,
        this.newRideRequestFcm,
        this.newRideRequestEmail,
        this.newRideRequestSms,
        this.eventChangeFcm,
        this.eventChangeEmail,
        this.eventChangeSms,
        this.newFamilyRequestFcm,
        this.newFamilyRequestEmail,
        this.newFamilyRequestSms,
        this.eventReminderFcm,
        this.eventReminderEmail,
        this.eventReminderSms,
        this.event_reminder_time});

  Settings.fromJson(Map<String, dynamic> json) {
    pushNotifications = json['push_notifications'];
    emailNotifications = json['email_notifications'];
    rideRequests = json['ride_requests'];
    newEventFcm = json['new_event_fcm'];
    newEventEmail = json['new_event_email'];
    newEventSms = json['new_event_sms'];
    newRideRequestFcm = json['new_ride_request_fcm'];
    newRideRequestEmail = json['new_ride_request_email'];
    newRideRequestSms = json['new_ride_request_sms'];
    eventChangeFcm = json['event_change_fcm'];
    eventChangeEmail = json['event_change_email'];
    eventChangeSms = json['event_change_sms'];
    newFamilyRequestFcm = json['new_family_request_fcm'];
    newFamilyRequestEmail = json['new_family_request_email'];
    newFamilyRequestSms = json['new_family_request_sms'];
    eventReminderFcm = json['event_reminder_fcm'];
    eventReminderEmail = json['event_reminder_email'];
    eventReminderSms = json['event_reminder_sms'];
    event_reminder_time = json['event_reminder_time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['push_notifications'] = this.pushNotifications;
    data['email_notifications'] = this.emailNotifications;
    data['ride_requests'] = this.rideRequests;
    data['new_event_fcm'] = this.newEventFcm;
    data['new_event_email'] = this.newEventEmail;
    data['new_event_sms'] = this.newEventSms;
    data['new_ride_request_fcm'] = this.newRideRequestFcm;
    data['new_ride_request_email'] = this.newRideRequestEmail;
    data['new_ride_request_sms'] = this.newRideRequestSms;
    data['event_change_fcm'] = this.eventChangeFcm;
    data['event_change_email'] = this.eventChangeEmail;
    data['event_change_sms'] = this.eventChangeSms;
    data['new_family_request_fcm'] = this.newFamilyRequestFcm;
    data['new_family_request_email'] = this.newFamilyRequestEmail;
    data['new_family_request_sms'] = this.newFamilyRequestSms;
    data['event_reminder_fcm'] = this.eventReminderFcm;
    data['event_reminder_email'] = this.eventReminderEmail;
    data['event_reminder_sms'] = this.eventReminderSms;
    data['event_reminder_time'] = this.event_reminder_time;
    return data;
  }
}
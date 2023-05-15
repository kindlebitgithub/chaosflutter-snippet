class SettingModel {
  int? success;
  Data? data;

  SettingModel({this.success, this.data});

  SettingModel.fromJson(Map<String, dynamic> json) {
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
  int? allowRequests;
  int? familySearch;

  Settings({this.allowRequests, this.familySearch});

  Settings.fromJson(Map<String, dynamic> json) {
    allowRequests = json['allow_requests'];
    familySearch = json['family_search'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['allow_requests'] = this.allowRequests;
    data['family_search'] = this.familySearch;
    return data;
  }
}
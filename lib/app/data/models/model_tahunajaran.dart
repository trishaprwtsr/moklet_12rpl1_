class ModelTahunAjaran {
  bool? isError;
  String? message;
  List<Data>? data;

  ModelTahunAjaran({this.isError, this.message, this.data});

  ModelTahunAjaran.fromJson(Map<String, dynamic> json) {
    isError = json['is_error'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['is_error'] = this.isError;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? name;
  String? deskripsi;
  String? sLastUpdate;
  String? displayName;
  List<int>? createUid;
  String? createDate;
  List<int>? writeUid;
  String? writeDate;

  Data(
      {this.id,
      this.name,
      this.deskripsi,
      this.sLastUpdate,
      this.displayName,
      this.createUid,
      this.createDate,
      this.writeUid,
      this.writeDate});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    deskripsi = json['deskripsi'];
    sLastUpdate = json['__last_update'];
    displayName = json['display_name'];
    createUid = json['create_uid'].cast<int>();
    createDate = json['create_date'];
    writeUid = json['write_uid'].cast<int>();
    writeDate = json['write_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['deskripsi'] = this.deskripsi;
    data['__last_update'] = this.sLastUpdate;
    data['display_name'] = this.displayName;
    data['create_uid'] = this.createUid;
    data['create_date'] = this.createDate;
    data['write_uid'] = this.writeUid;
    data['write_date'] = this.writeDate;
    return data;
  }
}
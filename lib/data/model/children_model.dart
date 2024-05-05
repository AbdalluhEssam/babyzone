class ChildrenModel {
  String? dadPhone;
  String? doctorPhone;
  String? dadPhoto;
  String? doctorPhoto;
  String? dadName;
  String? doctorName;
  String? id;
  String? name;
  String? berathDate;
  String? gender;
  String? entryDate;
  String? expectioOutDate;
  String? outDate;
  String? piriorty;
  String? bloodType;
  String? jaundiceRatio;
  String? jaundiceStatu;
  String? dadId;
  String? doctorId;
  String? createdAt;
  String? bloodName;
  String? bodyTemp;
  String? atmosphierTemp;
  String? bmp;
  String? oxygen;
  String? wight;
  String? entryReason;
  String? outReason;
  String? childId;

  ChildrenModel(
      {this.dadPhone,
        this.doctorPhone,
        this.dadPhoto,
        this.doctorPhoto,
        this.dadName,
        this.doctorName,
        this.id,
        this.name,
        this.berathDate,
        this.gender,
        this.entryDate,
        this.expectioOutDate,
        this.outDate,
        this.piriorty,
        this.bloodType,
        this.jaundiceRatio,
        this.jaundiceStatu,
        this.dadId,
        this.doctorId,
        this.createdAt,
        this.bloodName,
        this.bodyTemp,
        this.atmosphierTemp,
        this.bmp,
        this.oxygen,
        this.wight,
        this.entryReason,
        this.outReason,
        this.childId});

  ChildrenModel.fromJson(Map<String, dynamic> json) {
    dadPhone = json['dadPhone'];
    doctorPhone = json['doctorPhone'];
    dadPhoto = json['dadPhoto'];
    doctorPhoto = json['doctorPhoto'];
    dadName = json['dadName'];
    doctorName = json['doctorName'];
    id = json['id'];
    name = json['name'];
    berathDate = json['berath_date'];
    gender = json['gender'];
    entryDate = json['entry_date'];
    expectioOutDate = json['expectio_out _date'];
    outDate = json['out_date'];
    piriorty = json['piriorty'];
    bloodType = json['blood_type'];
    jaundiceRatio = json['jaundice_ratio'];
    jaundiceStatu = json['jaundice_statu'];
    dadId = json['dad_id'];
    doctorId = json['doctor_id'];
    createdAt = json['createdAt'];
    bloodName = json['blood_name'];
    bodyTemp = json['body_temp'];
    atmosphierTemp = json['atmosphier_temp'];
    bmp = json['bmp'];
    oxygen = json['oxygen'];
    wight = json['wight'];
    entryReason = json['entry_reason'];
    outReason = json['out_reason'];
    childId = json['child_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['dadPhone'] = dadPhone;
    data['doctorPhone'] = doctorPhone;
    data['dadPhoto'] = dadPhoto;
    data['doctorPhoto'] = doctorPhoto;
    data['dadName'] = dadName;
    data['doctorName'] = doctorName;
    data['id'] = id;
    data['name'] = name;
    data['berath_date'] = berathDate;
    data['gender'] = gender;
    data['entry_date'] = entryDate;
    data['expectio_out _date'] = expectioOutDate;
    data['out_date'] = outDate;
    data['piriorty'] = piriorty;
    data['blood_type'] = bloodType;
    data['jaundice_ratio'] = jaundiceRatio;
    data['jaundice_statu'] = jaundiceStatu;
    data['dad_id'] = dadId;
    data['doctor_id'] = doctorId;
    data['createdAt'] = createdAt;
    data['blood_name'] = bloodName;
    data['body_temp'] = bodyTemp;
    data['atmosphier_temp'] = atmosphierTemp;
    data['bmp'] = bmp;
    data['oxygen'] = oxygen;
    data['wight'] = wight;
    data['entry_reason'] = entryReason;
    data['out_reason'] = outReason;
    data['child_id'] = childId;
    return data;
  }
}

class ChildModel {
  String? id;
  String? name;
  String? berathDate;
  String? gender;
  String? entryDate;
  String? expectioOutDate;
  String? outDate;
  String? piriorty;
  String? bloodType;
  String? jaundiceRatio;
  String? jaundiceStatu;
  String? dadId;
  String? doctorId;
  String? createdAt;

  ChildModel(
      {this.id,
        this.name,
        this.berathDate,
        this.gender,
        this.entryDate,
        this.expectioOutDate,
        this.outDate,
        this.piriorty,
        this.bloodType,
        this.jaundiceRatio,
        this.jaundiceStatu,
        this.dadId,
        this.doctorId,
        this.createdAt});

  ChildModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    berathDate = json['berath_date'];
    gender = json['gender'];
    entryDate = json['entry_date'];
    expectioOutDate = json['expectio_out _date'];
    outDate = json['out_date'];
    piriorty = json['piriorty'];
    bloodType = json['blood_type'];
    jaundiceRatio = json['jaundice_ratio'];
    jaundiceStatu = json['jaundice_statu'];
    dadId = json['dad_id'];
    doctorId = json['doctor_id'];
    createdAt = json['createdAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['berath_date'] = this.berathDate;
    data['gender'] = this.gender;
    data['entry_date'] = this.entryDate;
    data['expectio_out _date'] = this.expectioOutDate;
    data['out_date'] = this.outDate;
    data['piriorty'] = this.piriorty;
    data['blood_type'] = this.bloodType;
    data['jaundice_ratio'] = this.jaundiceRatio;
    data['jaundice_statu'] = this.jaundiceStatu;
    data['dad_id'] = this.dadId;
    data['doctor_id'] = this.doctorId;
    data['createdAt'] = this.createdAt;
    return data;
  }
}



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
    dadPhone = json['dadPhone'].toString();
    doctorPhone = json['doctorPhone'].toString();
    dadPhoto = json['dadPhoto'].toString();
    doctorPhoto = json['doctorPhoto'].toString();
    dadName = json['dadName'].toString();
    doctorName = json['doctorName'].toString();
    id = json['id'].toString();
    name = json['name'].toString();
    berathDate = json['berath_date'].toString();
    gender = json['gender'].toString();
    entryDate = json['entry_date'].toString();
    expectioOutDate = json['expectio_out _date'].toString();
    outDate = json['out_date'].toString();
    piriorty = json['piriorty'].toString();
    bloodType = json['blood_type'].toString();
    jaundiceRatio = json['jaundice_ratio'].toString();
    jaundiceStatu = json['jaundice_statu'].toString();
    dadId = json['dad_id'].toString();
    doctorId = json['doctor_id'].toString();
    createdAt = json['createdAt'].toString();
    bloodName = json['blood_name'].toString();
    bodyTemp = json['body_temp'].toString();
    atmosphierTemp = json['atmosphier_temp'].toString();
    bmp = json['bmp'].toString();
    oxygen = json['oxygen'].toString();
    wight = json['wight'].toString();
    entryReason = json['entry_reason'].toString();
    outReason = json['out_reason'].toString();
    childId = json['child_id'].toString();
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
    id = json['id'].toString();
    name = json['name'].toString();
    berathDate = json['berath_date'].toString();
    gender = json['gender'].toString();
    entryDate = json['entry_date'].toString();
    expectioOutDate = json['expectio_out _date'].toString();
    outDate = json['out_date'].toString();
    piriorty = json['piriorty'].toString();
    bloodType = json['blood_type'].toString();
    jaundiceRatio = json['jaundice_ratio'].toString();
    jaundiceStatu = json['jaundice_statu'].toString();
    dadId = json['dad_id'].toString();
    doctorId = json['doctor_id'].toString();
    createdAt = json['createdAt'].toString();
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



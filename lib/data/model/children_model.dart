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
  String? incubationId;
  String? bloodName;
  String? minAirTemp;
  String? maxAirTemp;
  String? airTemp;
  String? minAirHum;
  String? maxAirHum;
  String? airHum;
  String? valveStatues;
  String? heaterStatues;
  String? fanStatues;
  String? sysFanStatues;
  String? ledStatus;
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
        this.incubationId,
        this.bloodName,
        this.minAirTemp,
        this.maxAirTemp,
        this.airTemp,
        this.minAirHum,
        this.maxAirHum,
        this.airHum,
        this.valveStatues,
        this.heaterStatues,
        this.fanStatues,
        this.sysFanStatues,
        this.ledStatus,
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
    incubationId = json['incubation_id'].toString();
    bloodName = json['blood_name'].toString();
    minAirTemp = json['min_air_temp'].toString();
    maxAirTemp = json['max_air_temp'].toString();
    airTemp = json['air_temp'].toString();
    minAirHum = json['min_air_hum'].toString();
    maxAirHum = json['max_air_hum'].toString();
    airHum = json['air_hum'].toString();
    valveStatues = json['valve_statues'].toString();
    heaterStatues = json['heater_statues'].toString();
    fanStatues = json['fan_statues'].toString();
    sysFanStatues = json['sys_fan_statues'].toString();
    ledStatus = json['led_status'].toString();
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['dadPhone'] = this.dadPhone;
    data['doctorPhone'] = this.doctorPhone;
    data['dadPhoto'] = this.dadPhoto;
    data['doctorPhoto'] = this.doctorPhoto;
    data['dadName'] = this.dadName;
    data['doctorName'] = this.doctorName;
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
    data['incubation_id'] = this.incubationId;
    data['blood_name'] = this.bloodName;
    data['min_air_temp'] = this.minAirTemp;
    data['max_air_temp'] = this.maxAirTemp;
    data['air_temp'] = this.airTemp;
    data['min_air_hum'] = this.minAirHum;
    data['max_air_hum'] = this.maxAirHum;
    data['air_hum'] = this.airHum;
    data['valve_statues'] = this.valveStatues;
    data['heater_statues'] = this.heaterStatues;
    data['fan_statues'] = this.fanStatues;
    data['sys_fan_statues'] = this.sysFanStatues;
    data['led_status'] = this.ledStatus;
    data['body_temp'] = this.bodyTemp;
    data['atmosphier_temp'] = this.atmosphierTemp;
    data['bmp'] = this.bmp;
    data['oxygen'] = this.oxygen;
    data['wight'] = this.wight;
    data['entry_reason'] = this.entryReason;
    data['out_reason'] = this.outReason;
    data['child_id'] = this.childId;
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



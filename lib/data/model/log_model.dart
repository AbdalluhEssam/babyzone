class LogModel {
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
  String? usersId;
  String? usersName;
  String? usersEmail;
  String? usersPassword;
  String? usersPhone;
  String? image;
  String? usersVerfiycode;
  String? usersApprove;
  String? usersCreate;
  String? logId;
  String? logLevel;
  String? logAction;
  String? childId;
  String? createAt;

  LogModel(
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
        this.createdAt,
        this.incubationId,
        this.usersId,
        this.usersName,
        this.usersEmail,
        this.usersPassword,
        this.usersPhone,
        this.image,
        this.usersVerfiycode,
        this.usersApprove,
        this.usersCreate,
        this.logId,
        this.logLevel,
        this.logAction,
        this.createAt,
        this.childId});

  LogModel.fromJson(Map<String, dynamic> json) {
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
    usersId = json['users_id'].toString();
    usersName = json['users_name'].toString();
    usersEmail = json['users_email'].toString();
    usersPassword = json['users_password'].toString();
    usersPhone = json['users_phone'].toString();
    image = json['image'].toString();
    usersVerfiycode = json['users_verfiycode'].toString();
    usersApprove = json['users_approve'].toString();
    usersCreate = json['users_create'].toString();
    logId = json['log_id'].toString();
    logLevel = json['log_level'].toString();
    logAction = json['log_action'].toString();
    childId = json['child_id'].toString();
    createAt = json['createAt'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
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
    data['incubation_id'] = incubationId;
    data['users_id'] = usersId;
    data['users_name'] = usersName;
    data['users_email'] = usersEmail;
    data['users_password'] = usersPassword;
    data['users_phone'] = usersPhone;
    data['image'] = image;
    data['users_verfiycode'] = usersVerfiycode;
    data['users_approve'] = usersApprove;
    data['users_create'] = usersCreate;
    data['log_id'] = logId;
    data['log_level'] = logLevel;
    data['log_action'] = logAction;
    data['child_id'] = childId;
    data['createAt'] = createAt;
    return data;
  }
}

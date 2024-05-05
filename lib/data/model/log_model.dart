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
    incubationId = json['incubation_id'];
    usersId = json['users_id'];
    usersName = json['users_name'];
    usersEmail = json['users_email'];
    usersPassword = json['users_password'];
    usersPhone = json['users_phone'];
    image = json['image'];
    usersVerfiycode = json['users_verfiycode'];
    usersApprove = json['users_approve'];
    usersCreate = json['users_create'];
    logId = json['log_id'];
    logLevel = json['log_level'];
    logAction = json['log_action'];
    childId = json['child_id'];
    createAt = json['createAt'];
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

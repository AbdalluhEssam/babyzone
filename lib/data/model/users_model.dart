class UsersModel {
  String? usersId;
  String? usersName;
  String? usersEmail;
  String? usersPassword;
  String? usersPhone;
  String? image;
  String? usersVerfiycode;
  String? usersApprove;
  String? usersCreate;
  String? id;
  String? name;

  UsersModel(
      {this.usersId,
        this.usersName,
        this.usersEmail,
        this.usersPassword,
        this.usersPhone,
        this.image,
        this.usersVerfiycode,
        this.usersApprove,
        this.usersCreate,
        this.id,
        this.name});

  UsersModel.fromJson(Map<String, dynamic> json) {
    usersId = json['users_id'];
    usersName = json['users_name'];
    usersEmail = json['users_email'];
    usersPassword = json['users_password'];
    usersPhone = json['users_phone'];
    image = json['image'];
    usersVerfiycode = json['users_verfiycode'];
    usersApprove = json['users_approve'];
    usersCreate = json['users_create'];
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['users_id'] = this.usersId;
    data['users_name'] = this.usersName;
    data['users_email'] = this.usersEmail;
    data['users_password'] = this.usersPassword;
    data['users_phone'] = this.usersPhone;
    data['image'] = this.image;
    data['users_verfiycode'] = this.usersVerfiycode;
    data['users_approve'] = this.usersApprove;
    data['users_create'] = this.usersCreate;
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}

class PermissionModel {
  String? id;
  String? name;

  PermissionModel({this.id, this.name});

  PermissionModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}




class UserModel {
  String? usersId;
  String? usersName;
  String? usersEmail;
  String? usersPassword;
  String? usersPhone;
  String? usersVerfiycode;
  String? usersApprove;
  String? usersCreate;
  String? employeesId;
  String? employeesName;
  String? employeesAge;
  String? nationalid;
  String? employeesPhone;
  String? employeesPhoto;
  String? employeesStudy;
  String? jobDescription;
  String? startData;
  String? endData;
  String? employeesSalary;
  String? status;
  String? userId;
  String? createdAt;

  UserModel(
      {this.usersId,
        this.usersName,
        this.usersEmail,
        this.usersPassword,
        this.usersPhone,
        this.usersVerfiycode,
        this.usersApprove,
        this.usersCreate,
        this.employeesId,
        this.employeesName,
        this.employeesAge,
        this.nationalid,
        this.employeesPhone,
        this.employeesPhoto,
        this.employeesStudy,
        this.jobDescription,
        this.startData,
        this.endData,
        this.employeesSalary,
        this.status,
        this.userId,
        this.createdAt});

  UserModel.fromJson(Map<String, dynamic> json) {
    usersId = json['users_id'];
    usersName = json['users_name'];
    usersEmail = json['users_email'];
    usersPassword = json['users_password'];
    usersPhone = json['users_phone'];
    usersVerfiycode = json['users_verfiycode'];
    usersApprove = json['users_approve'];
    usersCreate = json['users_create'];
    employeesId = json['employees_id'];
    employeesName = json['employees_name'];
    employeesAge = json['employees_age'];
    nationalid = json['nationalid'];
    employeesPhone = json['employees_phone'];
    employeesPhoto = json['employees_photo'];
    employeesStudy = json['employees_study'];
    jobDescription = json['job_description'];
    startData = json['start_data'];
    endData = json['end_data'];
    employeesSalary = json['employees_salary'];
    status = json['status'];
    userId = json['user_id'];
    createdAt = json['createdAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['users_id'] = this.usersId;
    data['users_name'] = this.usersName;
    data['users_email'] = this.usersEmail;
    data['users_password'] = this.usersPassword;
    data['users_phone'] = this.usersPhone;
    data['users_verfiycode'] = this.usersVerfiycode;
    data['users_approve'] = this.usersApprove;
    data['users_create'] = this.usersCreate;
    data['employees_id'] = this.employeesId;
    data['employees_name'] = this.employeesName;
    data['employees_age'] = this.employeesAge;
    data['nationalid'] = this.nationalid;
    data['employees_phone'] = this.employeesPhone;
    data['employees_photo'] = this.employeesPhoto;
    data['employees_study'] = this.employeesStudy;
    data['job_description'] = this.jobDescription;
    data['start_data'] = this.startData;
    data['end_data'] = this.endData;
    data['employees_salary'] = this.employeesSalary;
    data['status'] = this.status;
    data['user_id'] = this.userId;
    data['createdAt'] = this.createdAt;
    return data;
  }
}


class ProfileModel {
  String? model;
  String? regular;
  String? years;
  String? employeesId;
  String? employeesName;
  String? employeesAge;
  String? nationalid;
  String? employeesPhone;
  String? employeesPhoto;
  String? employeesStudy;
  String? jobDescription;
  String? startData;
  String? endData;
  String? employeesSalary;
  String? status;
  String? userId;
  String? createdAt;
  String? id;
  String? name;
  String? usersId;
  String? usersName;
  String? usersEmail;
  String? usersPassword;
  String? usersPhone;
  String? usersVerfiycode;
  String? usersApprove;
  String? usersCreate;

  ProfileModel(
      {this.model,
        this.regular,
        this.years,
        this.employeesId,
        this.employeesName,
        this.employeesAge,
        this.nationalid,
        this.employeesPhone,
        this.employeesPhoto,
        this.employeesStudy,
        this.jobDescription,
        this.startData,
        this.endData,
        this.employeesSalary,
        this.status,
        this.userId,
        this.createdAt,
        this.id,
        this.name,
        this.usersId,
        this.usersName,
        this.usersEmail,
        this.usersPassword,
        this.usersPhone,
        this.usersVerfiycode,
        this.usersApprove,
        this.usersCreate});

  ProfileModel.fromJson(Map<String, dynamic> json) {
    model = json['model'];
    regular = json['regular'];
    years = json['years'];
    employeesId = json['employees_id'];
    employeesName = json['employees_name'];
    employeesAge = json['employees_age'];
    nationalid = json['nationalid'];
    employeesPhone = json['employees_phone'];
    employeesPhoto = json['employees_photo'];
    employeesStudy = json['employees_study'];
    jobDescription = json['job_description'];
    startData = json['start_data'];
    endData = json['end_data'];
    employeesSalary = json['employees_salary'];
    status = json['status'];
    userId = json['user_id'];
    createdAt = json['createdAt'];
    id = json['id'];
    name = json['name'];
    usersId = json['users_id'];
    usersName = json['users_name'];
    usersEmail = json['users_email'];
    usersPassword = json['users_password'];
    usersPhone = json['users_phone'];
    usersVerfiycode = json['users_verfiycode'];
    usersApprove = json['users_approve'];
    usersCreate = json['users_create'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['model'] = this.model;
    data['regular'] = this.regular;
    data['years'] = this.years;
    data['employees_id'] = this.employeesId;
    data['employees_name'] = this.employeesName;
    data['employees_age'] = this.employeesAge;
    data['nationalid'] = this.nationalid;
    data['employees_phone'] = this.employeesPhone;
    data['employees_photo'] = this.employeesPhoto;
    data['employees_study'] = this.employeesStudy;
    data['job_description'] = this.jobDescription;
    data['start_data'] = this.startData;
    data['end_data'] = this.endData;
    data['employees_salary'] = this.employeesSalary;
    data['status'] = this.status;
    data['user_id'] = this.userId;
    data['createdAt'] = this.createdAt;
    data['id'] = this.id;
    data['name'] = this.name;
    data['users_id'] = this.usersId;
    data['users_name'] = this.usersName;
    data['users_email'] = this.usersEmail;
    data['users_password'] = this.usersPassword;
    data['users_phone'] = this.usersPhone;
    data['users_verfiycode'] = this.usersVerfiycode;
    data['users_approve'] = this.usersApprove;
    data['users_create'] = this.usersCreate;
    return data;
  }
}


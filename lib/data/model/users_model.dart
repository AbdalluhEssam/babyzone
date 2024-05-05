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
    usersId = json['users_id'].toString();
    usersName = json['users_name'].toString();
    usersEmail = json['users_email'].toString();
    usersPassword = json['users_password'].toString();
    usersPhone = json['users_phone'].toString();
    image = json['image'].toString();
    usersVerfiycode = json['users_verfiycode'].toString();
    usersApprove = json['users_approve'].toString();
    usersCreate = json['users_create'].toString();
    id = json['id'].toString();
    name = json['name'].toString();
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
    id = json['id'].toString();
    name = json['name'].toString();
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
    usersId = json['users_id'].toString();
    usersName = json['users_name'].toString();
    usersEmail = json['users_email'].toString();
    usersPassword = json['users_password'].toString();
    usersPhone = json['users_phone'].toString();
    usersVerfiycode = json['users_verfiycode'].toString();
    usersApprove = json['users_approve'].toString();
    usersCreate = json['users_create'].toString();
    employeesId = json['employees_id'].toString();
    employeesName = json['employees_name'].toString();
    employeesAge = json['employees_age'].toString();
    nationalid = json['nationalid'].toString();
    employeesPhone = json['employees_phone'].toString();
    employeesPhoto = json['employees_photo'].toString();
    employeesStudy = json['employees_study'].toString();
    jobDescription = json['job_description'].toString();
    startData = json['start_data'].toString();
    endData = json['end_data'].toString();
    employeesSalary = json['employees_salary'].toString();
    status = json['status'].toString();
    userId = json['user_id'].toString();
    createdAt = json['createdAt'].toString();
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
    model = json['model'].toString();
    regular = json['regular'].toString();
    years = json['years'].toString();
    employeesId = json['employees_id'].toString();
    employeesName = json['employees_name'].toString();
    employeesAge = json['employees_age'].toString();
    nationalid = json['nationalid'].toString();
    employeesPhone = json['employees_phone'].toString();
    employeesPhoto = json['employees_photo'].toString();
    employeesStudy = json['employees_study'].toString();
    jobDescription = json['job_description'].toString();
    startData = json['start_data'].toString();
    endData = json['end_data'].toString();
    employeesSalary = json['employees_salary'].toString();
    status = json['status'].toString();
    userId = json['user_id'].toString();
    createdAt = json['createdAt'].toString();
    id = json['id'].toString();
    name = json['name'].toString();
    usersId = json['users_id'].toString();
    usersName = json['users_name'].toString();
    usersEmail = json['users_email'].toString();
    usersPassword = json['users_password'].toString();
    usersPhone = json['users_phone'].toString();
    usersVerfiycode = json['users_verfiycode'].toString();
    usersApprove = json['users_approve'].toString();
    usersCreate = json['users_create'].toString();
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


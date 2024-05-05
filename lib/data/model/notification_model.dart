class NotificationModel {
  String? notificationId;
  String? notificationTitle;
  String? notificationBody;
  String? topic;
  String? pagename;
  String? createAt;

  NotificationModel(
      {this.notificationId,
        this.notificationTitle,
        this.notificationBody,
        this.topic,
        this.pagename,
        this.createAt});

  NotificationModel.fromJson(Map<String, dynamic> json) {
    notificationId = json['notification_id'].toString();
    notificationTitle = json['notification_title'].toString();
    notificationBody = json['notification_body'].toString();
    topic = json['topic'].toString();
    pagename = json['pagename'].toString();
    createAt = json['createAt'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['notification_id'] = this.notificationId;
    data['notification_title'] = this.notificationTitle;
    data['notification_body'] = this.notificationBody;
    data['topic'] = this.topic;
    data['pagename'] = this.pagename;
    data['createAt'] = this.createAt;
    return data;
  }
}

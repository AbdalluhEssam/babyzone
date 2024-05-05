class AppLink {
//================================== Hosting ===============================//
  static const String serverLink = "https://abdalluh-essam.com/babyzone";
  static const String imageOCR = "https://api.ocr.space/parse/image";
//================================== Image ===============================//
  static const String imageStatic = "$serverLink/upload";
  static const String imageUsers = "$imageStatic/users";
  static const String imageCategories = "$imageStatic/categories";
  static const String imageItems = "$imageStatic/items";
  static const String imageHR = "$imageStatic/HR";
  static const String imageEvents = "$imageStatic/event";
  static const String imageRegistration = "$imageStatic/registration";
  static const String imageBanner = "$imageStatic/banner";
//================================== Auth ===============================//
  static const String signUp = "$serverLink/auth/signup.php";
  static const String viewPermission = "$serverLink/auth/view.php";
  static const String verfiyCodeSignUp = "$serverLink/auth/verfiycode.php";
  static const String reSend = "$serverLink/auth/resend.php";
  static const String login = "$serverLink/auth/login.php";
//================================== Forget Password ===============================//
  static const String checkEmail = "$serverLink/forgetpassword/checkemail.php";
  static const String verfiyCodeForgetPass ="$serverLink/forgetpassword/verfiycode.php";
  static const String resetPassword ="$serverLink/forgetpassword/resetpassword.php";
//================================== Home ===============================//
  static const String homePage = "$serverLink/home.php";
  static const String searchPage = "$serverLink/search.php";
//================================== log ===============================//
  static const String log = "$serverLink/log/view.php";
  static const String all = "$serverLink/log/all.php";
  static const String logAdd = "$serverLink/log/add.php";
//================================== NOTIFICATION ===============================//
  static const String notification = "$serverLink/notification.php";
//================================== Profile ===============================//
  static const String profile = "$serverLink/HR/profile/view.php";
//================================== Users ===============================//
  static const String doctors = "$serverLink/users/doctors.php";
  static const String nurses = "$serverLink/users/nurses.php";
  static const String permission = "$serverLink/users/permission.php";
  static const String addUsers = "$serverLink/users/add.php";
  static const String search = "$serverLink/users/search.php";
//================================== Children ===============================//
  static const String children = "$serverLink/children/view.php";
  static const String childrenOnly = "$serverLink/children/viewonly.php";
  static const String childrenList = "$serverLink/children/childlist.php";
//================================== END ===============================//
}

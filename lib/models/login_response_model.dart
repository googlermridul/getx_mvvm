class LoginResponseModel {
  String? token;
  bool? isLogin;

  LoginResponseModel({this.token, this.isLogin});

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    isLogin = json['isLogin'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['token'] = token;
    data['isLogin'] = isLogin;
    return data;
  }
}

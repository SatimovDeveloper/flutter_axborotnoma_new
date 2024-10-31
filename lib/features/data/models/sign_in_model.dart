import 'dart:convert';

SignInModel signInModelFromJson(String str) => SignInModel.fromJson(json.decode(str));

String signInModelToJson(SignInModel data) => json.encode(data.toJson());

class SignInModel {
  final String? username;
  final String? password;

  SignInModel({
    this.username,
    this.password,
  });

  SignInModel copyWith({
    String? username,
    String? password,
  }) =>
      SignInModel(
        username: username ?? this.username,
        password: password ?? this.password,
      );

  factory SignInModel.fromJson(Map<String, dynamic> json) => SignInModel(
    username: json["username"],
    password: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "username": username,
    "password": password,
  };
}

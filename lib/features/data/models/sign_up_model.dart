import 'dart:convert';

SignUpModel signUpModelFromJson(String str) => SignUpModel.fromJson(json.decode(str));

String signUpModelToJson(SignUpModel data) => json.encode(data.toJson());

class SignUpModel {
  final int? imie;
  final String? psr;
  final String? username;
  final String? password;
  final String? passwordRepeat;
  final int? isCheckPerson;

  SignUpModel({
    this.imie,
    this.psr,
    this.username,
    this.password,
    this.passwordRepeat,
    this.isCheckPerson,
  });

  SignUpModel copyWith({
    int? imie,
    String? psr,
    String? username,
    String? password,
    String? passwordRepeat,
    int? isCheckPerson,
  }) =>
      SignUpModel(
        imie: imie ?? this.imie,
        psr: psr ?? this.psr,
        username: username ?? this.username,
        password: password ?? this.password,
        passwordRepeat: passwordRepeat ?? this.passwordRepeat,
        isCheckPerson: isCheckPerson ?? this.isCheckPerson,
      );

  factory SignUpModel.fromJson(Map<String, dynamic> json) => SignUpModel(
    imie: json["imie"],
    psr: json["psr"],
    username: json["username"],
    password: json["password"],
    passwordRepeat: json["password_repeat"],
    isCheckPerson: json["is_check_person"],
  );

  Map<String, dynamic> toJson() => {
    "imie": imie,
    "psr": psr,
    "username": username,
    "password": password,
    "password_repeat": passwordRepeat,
    "is_check_person": isCheckPerson,
  };
}

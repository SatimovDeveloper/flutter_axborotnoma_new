import 'dart:convert';

PasswordResetModel passwordResetModelFromJson(String str) =>
    PasswordResetModel.fromJson(json.decode(str));

String passwordResetModelToJson(PasswordResetModel data) =>
    json.encode(data.toJson());

class PasswordResetModel {
  final int? imie;
  final String? username;

  PasswordResetModel({
    this.imie,
    this.username,
  });

  PasswordResetModel copyWith({
    int? imie,
    String? username,
  }) =>
      PasswordResetModel(
        imie: imie ?? this.imie,
        username: username ?? this.username,
      );

  factory PasswordResetModel.fromJson(Map<String, dynamic> json) =>
      PasswordResetModel(
        imie: json["imie"],
        username: json["username"],
      );

  Map<String, dynamic> toJson() => {
    "imie": imie,
    "username": username,
  };
}

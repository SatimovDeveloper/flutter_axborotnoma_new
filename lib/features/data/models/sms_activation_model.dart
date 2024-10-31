import 'dart:convert';

SmsActivationModel smsActivationModelFromJson(String str) => SmsActivationModel.fromJson(json.decode(str));

String smsActivationModelToJson(SmsActivationModel data) => json.encode(data.toJson());

class SmsActivationModel {
  final String? smsSend;
  final int? phone;
  final int? id;
  final int? statusCode;

  SmsActivationModel({
    this.smsSend,
    this.phone,
    this.id,
    this.statusCode,
  });

  SmsActivationModel copyWith({
    String? smsSend,
    int? phone,
    int? id,
    int? statusCode,
  }) =>
      SmsActivationModel(
        smsSend: smsSend ?? this.smsSend,
        phone: phone ?? this.phone,
        id: id ?? this.id,
        statusCode: statusCode ?? this.statusCode,
      );

  factory SmsActivationModel.fromJson(Map<String, dynamic> json) => SmsActivationModel(
    smsSend: json["sms_send"],
    phone: json["phone"],
    id: json["id"],
    statusCode: json["status_code"],
  );

  Map<String, dynamic> toJson() => {
    "sms_send": smsSend,
    "phone": phone,
    "id": id,
    "status_code": statusCode,
  };
}

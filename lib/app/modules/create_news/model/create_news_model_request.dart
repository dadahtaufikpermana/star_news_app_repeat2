// To parse this JSON data, do
//
//     final createNewsModelRequest = createNewsModelRequestFromJson(jsonString);

import 'dart:convert';

String createNewsModelRequestToJson(CreateNewsModelRequest data) => json.encode(data.toJson());

class CreateNewsModelRequest {
  CreateNewsModelRequest({
    required this.title,
    required this.body,
    required this.userId,
  });

  String title;
  String body;
  int userId;

  Map<String, dynamic> toJson() => {
    "title": title,
    "body": body,
    "userId": userId,
  };
}

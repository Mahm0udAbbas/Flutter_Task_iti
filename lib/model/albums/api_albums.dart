// To parse this JSON data, do
//
//     final albumsFromApi = albumsFromApiFromJson(jsonString);

import 'dart:convert';

AlbumsFromApi albumsFromApiFromJson(String str) =>
    AlbumsFromApi.fromJson(json.decode(str));

String albumsFromApiToJson(AlbumsFromApi data) => json.encode(data.toJson());

class AlbumsFromApi {
  int userId;
  int id;
  String title;

  AlbumsFromApi({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory AlbumsFromApi.fromJson(Map<String, dynamic> json) => AlbumsFromApi(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
      };
}

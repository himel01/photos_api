import 'package:meta/meta.dart';
import 'dart:convert';

List<ModelAlbum> modelAlbumFromJson(String str) => List<ModelAlbum>.from(json.decode(str).map((x) => ModelAlbum.fromJson(x)));

//String modelAlbumToJson(List<ModelAlbum> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ModelAlbum {
  ModelAlbum({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  factory ModelAlbum.fromJson(Map<String, dynamic> json) => ModelAlbum(
    albumId: json["albumId"],
    id: json["id"],
    title: json["title"],
    url: json["url"],
    thumbnailUrl: json["thumbnailUrl"],
  );


}
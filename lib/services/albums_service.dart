import 'package:dio/dio.dart';
import 'package:myfirstproj/model/albums/api_albums.dart';

final String baseUrl = "https://jsonplaceholder.typicode.com/";

class AlbumsServices {
  Future<List<AlbumsFromApi>> getAllAlbums() async {
    List<AlbumsFromApi> albums = [];
    final String path = "albums";
    var res = await Dio().get("${baseUrl}${path}");
    res.data.forEach((ele) {
      AlbumsFromApi album = AlbumsFromApi.fromJson(ele);
      albums.add(album);
    });
    return albums;
  }
}

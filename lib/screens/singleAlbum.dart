import 'package:flutter/material.dart';
import 'package:myfirstproj/model/albums/api_albums.dart';

class SingleAlbum extends StatelessWidget {
  final AlbumsFromApi album;
  SingleAlbum({required this.album, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(album.title),
      ),
    );
  }
}

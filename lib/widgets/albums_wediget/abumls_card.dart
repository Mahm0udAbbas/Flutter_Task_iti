import 'package:flutter/material.dart';
import 'package:myfirstproj/model/albums/api_albums.dart';
import 'package:myfirstproj/screens/singleAlbum.dart';

class AlbumsCard extends StatelessWidget {
  AlbumsCard({required this.album, super.key});
  final AlbumsFromApi album;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SingleAlbum(album: album)),
        );
      },
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.teal,
            radius: 32,
            child: Text(
              "${album.id}",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsetsDirectional.only(start: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  // "",
                  album.title,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:myfirstproj/model/albums/albums_model.dart';
import 'package:myfirstproj/model/albums/api_albums.dart';
import 'package:myfirstproj/services/albums_service.dart';
import 'package:myfirstproj/widgets/albums_wediget/abumls_card.dart';

class Albums extends StatefulWidget {
  // List<AlbumsModel> albums = [
  //   AlbumsModel(id: 1, title: "Album"),
  //   AlbumsModel(id: 2, title: "Album"),
  //   AlbumsModel(id: 3, title: "Album"),
  //   AlbumsModel(id: 4, title: "Album"),
  //   AlbumsModel(id: 5, title: "Album"),
  //   AlbumsModel(id: 6, title: "Album"),
  //   AlbumsModel(id: 7, title: "Album"),
  //   AlbumsModel(id: 8, title: "Album"),
  //   AlbumsModel(id: 9, title: "Album"),
  //   AlbumsModel(id: 10, title: "Album"),
  //   AlbumsModel(id: 11, title: "Album"),
  // ];
  Albums({super.key});
  @override
  State<Albums> createState() => _AlbumsState();
}

class _AlbumsState extends State<Albums> {
  final AlbumsServices albumsServices = AlbumsServices();
  List<AlbumsFromApi> data = [];
  bool isLoad = true;
  Future<void> getData() async {
    data = await albumsServices.getAllAlbums();
    if (data != []) {
      isLoad = false;
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Albums"),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.black,
      ),
      body: isLoad
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.separated(
              itemCount: data.length,
              separatorBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    height: 2,
                    color: Colors.black,
                  ),
                );
              },
              itemBuilder: (BuildContext context, index) {
                return AlbumsCard(album: data[index]);
              },
            ),
    );
  }
}

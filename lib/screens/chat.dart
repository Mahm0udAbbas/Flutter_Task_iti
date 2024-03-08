import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myfirstproj/Activs.dart';
import 'package:myfirstproj/ChatPage.dart';
import 'package:myfirstproj/search.dart';
import 'package:myfirstproj/userChat.dart';

class Chat extends StatelessWidget {
  Chat({super.key});
  List<Widget> actives = [
    Actives(username: "mohamed"),
    SizedBox(
      width: 5,
    ),
    Actives(username: "mohamed"),
    SizedBox(
      width: 5,
    ),
    Actives(username: "mohamed"),
    SizedBox(
      width: 5,
    ),
    Actives(username: "mohamed"),
    SizedBox(
      width: 5,
    ),
    Actives(username: "mohamed"),
    SizedBox(
      width: 5,
    ),
    Actives(username: "mohamed"),
    SizedBox(
      width: 5,
    ),
    Actives(username: "mohamed"),
    SizedBox(
      width: 5,
    ),
    Actives(username: "mohamed"),
    SizedBox(
      width: 5,
    ),
    Actives(username: "mohamed"),
    SizedBox(
      width: 5,
    ),
    Actives(username: "mohamed"),
    SizedBox(
      width: 5,
    ),
    Actives(username: "mohamed"),
    SizedBox(
      width: 5,
    ),
    Actives(username: "mohamed"),
    SizedBox(
      width: 5,
    ),
    Actives(username: "mohamed"),
    SizedBox(
      width: 5,
    ),
    Actives(username: "mohamed"),
    SizedBox(
      width: 5,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Stack(children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(
                    "https://lush.com.ph/cdn/shop/articles/sunflower_petal_infusion_1024x1024.jpg?v=1562727399"), // SibaczedBox(width: 20),
              ),
              Stack(
                children: [
                  CircleAvatar(
                    radius: 8,
                    backgroundColor: Colors.white,
                  ),
                  CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.green,
                  ),
                ],
                alignment: AlignmentDirectional.center,
              )
            ], alignment: AlignmentDirectional.bottomEnd),
            SizedBox(
              width: 10,
            ),
            Text(
              "chat",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
          ],
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.grey[300],
            radius: 25,
            child: IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
          ),
        ],
      ),
      drawer: Text("ss"),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsDirectional.symmetric(vertical: 1, horizontal: 10),
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Search()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Search"),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 80,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: actives.length,
                  itemBuilder: (BuildContext context, int index) {
                    return actives[index];
                  },
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 20,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: 5);
                },
                itemBuilder: (BuildContext context, int index) {
                  return UserChat(chat: "hello there");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

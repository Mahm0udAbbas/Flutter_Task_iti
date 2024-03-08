import 'package:flutter/material.dart';
import 'package:myfirstproj/ChatPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class UserChat extends StatelessWidget {
  final String chat;
  UserChat({required this.chat, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ChatPage()));
            },
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey[300],
                  // SizedBox(width: 20),
                  radius: 25,
                  child: Icon(Icons.account_circle),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("username",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22)),
                    Text(
                      chat,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                )),
                Row(
                  children: [
                    Text("am"),
                    CircleAvatar(
                      radius: 3,
                      backgroundColor: Colors.blue,
                    ),
                    Text("10:50"),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

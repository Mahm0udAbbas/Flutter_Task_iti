import 'package:flutter/material.dart';

class Actives extends StatelessWidget {
  final String username;
  const Actives({required this.username, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      child: Column(
        children: [
          CircleAvatar(),
          Text(
            username,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          )
        ],
      ),
    );
    ;
  }
}

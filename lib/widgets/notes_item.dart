import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16, bottom: 16, left: 16),
      decoration: BoxDecoration(
        color: const Color(0xfffacd7d),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'Flutter Tips',
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
              ),
            ),
            subtitle: const Text(
              'Build Your career with flutter',
              style: TextStyle(
                color: Color(0xff8d6c34),
                fontSize: 20,
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.trash,
                color: Colors.black,
                size: 25,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 16, right: 20, bottom: 16),
            child: Text(
              'May 21, 2023',
              style: TextStyle(
                color: Color(0xffc59d5d),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

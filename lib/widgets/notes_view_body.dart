import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_appBar.dart';
import 'package:notes/widgets/notes_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
      children: const [
        CustomAppBar(),
        NotesItem(),
      ],
    );
  }
}

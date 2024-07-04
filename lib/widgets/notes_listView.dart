import 'package:flutter/material.dart';

import 'notes_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(height: 10),
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (ctx, index) {
        return const NotesItem();
      },
      itemCount: 10,
    );
  }
}

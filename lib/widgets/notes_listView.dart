import 'package:flutter/material.dart';

import 'notes_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.separated(
        padding: EdgeInsets.zero,
        separatorBuilder: (context, index) => const SizedBox(height: 10),
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (ctx, index) {
          return const NotesItem();
        },
        itemCount: 10,
      ),
    );
  }
}

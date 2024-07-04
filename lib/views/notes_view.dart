import 'package:flutter/material.dart';
import '../widgets/note_bottom_sheet.dart';
import '../widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => const NoteBottomSheet(),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

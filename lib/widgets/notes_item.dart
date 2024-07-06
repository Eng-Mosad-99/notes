import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes/model/note_model.dart';
import 'package:notes/views/edit_note.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (ctx) => const EditNoteView(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(top: 16, bottom: 16, left: 16),
        decoration: BoxDecoration(
          color: Color(noteModel.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                noteModel.title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                ),
              ),
              subtitle: Text(
                noteModel.desc,
                style: const TextStyle(
                  color: Color(0xff8d6c34),
                  fontSize: 18,
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
            Padding(
              padding: const EdgeInsets.only(top: 16, right: 20, bottom: 16),
              child: Text(
                // '${noteModel.dateTime.month},${noteModel.dateTime.day} ${noteModel.dateTime.year}',
                noteModel.dateTime.toString(),
                style: const TextStyle(
                  color: Color(0xffc59d5d),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

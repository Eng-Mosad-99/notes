import 'package:flutter/material.dart';
import 'package:notes/views/notes_view.dart';

void main() {
  runApp(const Notes());
}

class Notes extends StatelessWidget {
  const Notes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const NotesView(),
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
    );
  }
}

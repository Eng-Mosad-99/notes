import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/note_cubit/notes_cubit.dart';
import 'package:notes/model/note_model.dart';

import '../cubits/note_cubit/notes_state.dart';
import 'notes_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notesList =
            BlocProvider.of<NotesCubit>(context).notes ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.separated(
            padding: EdgeInsets.zero,
            separatorBuilder: (context, index) => const SizedBox(height: 10),
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (ctx, index) {
              return  NotesItem(
                noteModel: notesList[index],
              );
            },
            itemCount: notesList.length,
          ),
        );
      },
    );
  }
}

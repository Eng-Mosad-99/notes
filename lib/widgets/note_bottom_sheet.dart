import 'package:flutter/material.dart';
import 'package:notes/constant.dart';

import 'custom_text_form_field.dart';

class NoteBottomSheet extends StatelessWidget {
  const NoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 24,
          ),
          CustomTextFormField(
            hntText: 'Title',
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            hntText: 'Content',
            maxLines: 6,
          ),
        ],
      ),
    );
  }
}

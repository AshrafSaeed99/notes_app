import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_item_widget.dart';

class NotestListViewWidget extends StatelessWidget {
  const NotestListViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return NoteItemWidget(
            title: 'Note Title',
            description: 'Note Description',
            traling: 'Jan 10, 2024',
          );
        },
      ),
    );
  }
}

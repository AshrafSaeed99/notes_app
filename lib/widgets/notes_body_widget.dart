import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_app_widget.dart';
import 'package:notes_app/widgets/notes_list_view_widget.dart';
class NotesBodyWidget extends StatelessWidget {
  const NotesBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child:  Column(
        children: [
          SizedBox(height: 50),
          NotesAppBarWidget(
            appBarTitle: 'Notes',
            icon: Icons.search,
          ),
          NotestListViewWidget(),

        ],
      ),
    );
  }
}

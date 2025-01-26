
import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_note_bottom_sheet.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  const FloatingActionButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: (){
      showModalBottomSheet(context: context, builder: (context) {
        return AddNoteBottomSheet(
        
      );
      },);
    }, child: const Icon(Icons.add,size: 36,color: Colors.black,),);
  }
}
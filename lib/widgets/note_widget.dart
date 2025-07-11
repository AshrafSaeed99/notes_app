import 'package:flutter/material.dart';

class NoteWidget extends StatelessWidget {
  const NoteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withAlpha(40),
        borderRadius: BorderRadius.circular(12),
      ),
      width: double.infinity,
      height: 200,
      margin: const EdgeInsets.symmetric(vertical: 12,),
      child: ListTile(
        //isThreeLine: true,
        
        title: Text('Note'),
        subtitle: Text('This is a note'),
        trailing: IconButton(onPressed: (){}, icon: Icon(Icons.delete),),
        iconColor: Colors.red,
        
      ),
    );
  }
}

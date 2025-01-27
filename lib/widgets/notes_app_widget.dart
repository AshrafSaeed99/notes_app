import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_icon_widget.dart';
class NotesAppBarWidget extends StatelessWidget {
  const NotesAppBarWidget({super.key,required this.icon,required this.appBarTitle});
  final IconData icon;
  final String appBarTitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          appBarTitle,
          style: const TextStyle(fontSize: 30),
        ),
        CustomIconWidget(icon: icon,),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Center(child: Text('Add Note', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),)),
    );
  }
}
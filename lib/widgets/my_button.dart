import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    super.key, required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: ElevatedButton(
          onPressed: (){},
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0), // Adjust the border radius as needed
              ),
            ),
            backgroundColor: MaterialStateProperty.all(Colors.lightBlue.shade900), // Adjust the button background color
          ),
          child:Text(
            title,
            style: TextStyle(
                color: Colors.white
            ),
          )
      ),
    );
  }
}
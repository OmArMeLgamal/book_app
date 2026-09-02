import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
      // Icon( FontAwesomeIcons.solidStar as IconData,
      //   color: Colors.yellowAccent,
      //   size: 15,
      // ),
      SizedBox(width: 5,),
      Text(
        '4.5',
        style: Styles.title16 ,
      ),
      SizedBox(width: 5,),
      Text(
        '(2.3k)',
        style: Styles.title16.copyWith(color: Colors.grey),
      ), 
     
      ],
    );
  }
}
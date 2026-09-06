import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, mainAxisAlignment = MainAxisAlignment.start});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellowAccent,
          size: 13,
        ), // FaIcon
        SizedBox(width: 4),
        Text('4.5', style: Styles.title16),
        SizedBox(width: 4),
        Flexible(
          child: Text(
            '(2.3k)',
            style: Styles.title16.copyWith(color: Colors.grey),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: buildOutlinelnputBorder(),
        focusedBorder: buildOutlinelnputBorder(),
        hintText: 'search',
        suffixIcon: IconButton(
          onPressed: () {},
          icon: Opacity(
            opacity: .7,
            child: FaIcon(FontAwesomeIcons.magnifyingGlass, size: 16),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlinelnputBorder() {
    return OutlineInputBorder(
        borderSide: BorderSide(
          color: const Color.fromARGB(201, 255, 255, 255),
        ),
        borderRadius: BorderRadius.circular(12),
      );
  }
}

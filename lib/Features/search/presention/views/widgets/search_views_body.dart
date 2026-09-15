import 'package:bookly_app/Features/search/presention/views/widgets/custom_search_text_field.dart';
import 'package:flutter/material.dart';


class SearchViewsBody extends StatelessWidget {
  const SearchViewsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 30),
      child: Column(children: [CustomSearchTextField()]),
     
    );
  }
}


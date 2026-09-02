import 'package:bookly_app/Features/Splash/presentation/views/widgets/Custom_Book_Details_App_Bar.dart';
import 'package:bookly_app/Features/Splash/presentation/views/widgets/feature_list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      const CustomBookDetailsAppBar(),  
    const  FeaturedListViewItems(),
      ]
      
    );
    
    
  }
}


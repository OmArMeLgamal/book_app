import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:bookly_app/Features/Splash/presentation/views/widgets/book_details_view_body.dart';
import 'package:bookly_app/core/utils/app_routers.dart';
class FeaturedListViewItems extends StatelessWidget {
  const FeaturedListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.7 / 4,
            child: Container(
              // width: 100,
              //  color: Colors.redAccent,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(image: AssetImage(AssetsData.book1)),
              ),
            ),
      )]
        
        ),);

          }}
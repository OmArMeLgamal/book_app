import 'package:bookly_app/Features/Splash/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/Features/Splash/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/Features/Splash/presentation/views/widgets/best_seller_list_view_items.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              const SizedBox(height: 50),
              Text(
                'Featured Books',
                style: Styles.title_medium.copyWith(fontFamily: kGtSectraFine),
              ),
              const SizedBox(height: 20),
              const FeatureListviewImage(),
              const SizedBox(height: 50),
              Text(
                'Best Seller',
                style: Styles.title_medium.copyWith(fontFamily: kGtSectraFine),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        SliverFillRemaining(child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: BestSellerListView(),
        )),
      ],
    );
  }
}

class FeatureListviewImage extends StatelessWidget {
  const FeatureListviewImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,

      child: ListView.builder(
        scrollDirection: Axis.horizontal,

        itemBuilder: (context, index) {
          return Padding(padding: const EdgeInsets.all(8.0));
        },
      ),
    );
  }
}

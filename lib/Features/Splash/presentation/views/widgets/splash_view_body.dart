import 'package:bookly_app/Features/Splash/presentation/views/home_view.dart';
import 'package:bookly_app/core/utils/app_routers.dart';
import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with TickerProviderStateMixin { late AnimationController animationcontroller;

  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    animationcontroller = AnimationController(
      vsync: this,
      duration: Duration(minutes: 1),
    );

    slidingAnimation = Tween<Offset>(
      begin: Offset(0, 5),
      end: Offset.zero,
    ).animate(animationcontroller);

    animationcontroller.forward();

    Future.delayed(const Duration(seconds: 2), () {
      GoRouter.of(context).push(AppRouters.kHomeView);
    });
  }

  @override
  void dispose() {
    super.dispose();
    animationcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AssetsData.logo,
          width: MediaQuery.of(context).size.width * 0.5,
        ),

        const SizedBox(height: 12),

        AnimatedBuilder(
          animation: slidingAnimation,
          builder: (context, _) {
            return SlideTransition(
              position: slidingAnimation,
              child: Padding(
                padding: const EdgeInsets.only(right: 80.0),
                child: const Text(
                  'Enjoy Reading  Books',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

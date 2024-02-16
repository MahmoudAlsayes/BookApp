import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/features/splash/presentation/view/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> SlidingSplashText;

  @override
  void initState() {
    super.initState();
    navgateToHomeScreen();

    initSlidingAnimation();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(
          height: 4,
        ),
        SlidingText(SlidingSplashText: SlidingSplashText),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    SlidingSplashText = Tween<Offset>(begin: const Offset(0, 3), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
    // SlidingSplashText.addListener(() {
    //   setState(() {
    //
    //   });
    // });
  }

  void navgateToHomeScreen() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        // Get.to( () =>const HomePage(), transition: Transition.fade, duration: KDuration);
        GoRouter.of(context).push(AppRouter.KHomeView);
      },
    );
  }
}

import 'package:get/get.dart';
import 'package:nectar_app/screens/onboarding_screen.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 4), () {
      Get.to(() => const OnboardingScreen(), transition: Transition.fadeIn);
    });
  }
}

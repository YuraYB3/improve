import 'package:appka/app/common/widgets/main_loading_widget.dart';
import 'package:appka/app/theme/color_palete.dart';
import 'package:flutter/material.dart';

part 'widgets/_appka_text.dart';

part 'widgets/_is_loading_text.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorPalette.pg_0,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 20,
        children: [
          _AppkaText(),
          MainLoadingWidget(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _IsLoadingText(),
              CircularProgressIndicator(
                color: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

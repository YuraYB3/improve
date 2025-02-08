part of '../splash_screen.dart';

class _IsLoadingText extends StatelessWidget {
  const _IsLoadingText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'IS LOADING',
      style: TextStyle(
        color: Colors.white,
        fontSize: 42,
      ),
    );
  }
}

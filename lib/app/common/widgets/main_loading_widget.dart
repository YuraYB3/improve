import 'package:appka/app/theme/color_palete.dart';
import 'package:flutter/material.dart';

class MainLoadingWidget extends StatefulWidget {
  const MainLoadingWidget({
    this.duration,
    this.reverseDuration,
    this.beginValue = 10,
    this.endValue = 200,
    this.height = 200,
    this.width = 200,
    super.key,
  });

  final Duration? duration;
  final Duration? reverseDuration;
  final double beginValue;
  final double endValue;
  final double height;
  final double width;

  @override
  State<MainLoadingWidget> createState() => _MainLoadingWidgetState();
}

class _MainLoadingWidgetState extends State<MainLoadingWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration ??
          const Duration(
            milliseconds: 1000,
          ),
      reverseDuration: widget.reverseDuration ??
          const Duration(
            milliseconds: 1000,
          ),
    );

    _animation = Tween<double>(
      begin: widget.beginValue,
      end: widget.endValue,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    _setAnimationListener();

    _controller.forward();
  }

  void _setAnimationListener() {
    _controller.addStatusListener(
      (status) {
        if (status == AnimationStatus.completed) {
          _controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          _controller.forward();
        }
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: widget.height,
              width: widget.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: _animation.value,
              width: _animation.value,
              decoration: const BoxDecoration(
                color: ColorPalette.pg_0,
                shape: BoxShape.circle,
              ),
            ),
          ],
        );
      },
    );
  }
}

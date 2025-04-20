import 'package:flutter/material.dart';

class BunnyWidget extends StatefulWidget {
  const BunnyWidget({super.key});

  @override
  State<BunnyWidget> createState() => _BunnyWidgetState();
}

class _BunnyWidgetState extends State<BunnyWidget> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _bounce;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    _bounce = Tween<double>(begin: 0, end: -10).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
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
      animation: _bounce,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, _bounce.value),
          child: Image.asset(
            'assets/images/bunny.png',
            height: 150,
          ),
        );
      },
    );
  }
}

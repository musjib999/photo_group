import 'package:flutter/material.dart';

class RoundFadedContainer extends StatelessWidget {
  final Widget child;
  final Color color;
  const RoundFadedContainer(
      {Key? key, required this.child, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color.withOpacity(0.3),
      ),
      child: child,
    );
  }
}

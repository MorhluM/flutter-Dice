import 'package:flutter/material.dart';
import 'dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF1A1A1D),
            Color(0xFF3B1C32),
            Color(0xFF6A1E55),
            Color(0xFFA64D79),
          ],
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}

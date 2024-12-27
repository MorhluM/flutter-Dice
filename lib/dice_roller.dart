import 'package:flutter/material.dart';
import 'package:myapp/styled_text.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-1.png';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
          height: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min, // ใช้พื้นที่เท่าที่จำเป็น
            children: const [
              Icon(
                Icons.casino, // ไอคอนรูปคาสิโน (เหมาะสำหรับเกม)
                color: Colors.white, // สีของไอคอน
              ),
              SizedBox(width: 8), // ระยะห่างระหว่างไอคอนกับข้อความ
              StyledText(
                "Roll Dice",
              ),
            ],
          ),
        ),
      ],
    );
  }

  void rollDice() {
    setState(() {
      activeDiceImage = 'assets/images/dice-${Random().nextInt(6) + 1}.png';
    });
  }
}

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tic_tac_toe_x/main.dart';

class SpleshScreen extends StatefulWidget {
  const SpleshScreen({Key? key}) : super(key: key);

  @override
  State<SpleshScreen> createState() => _SpleshScreenState();
}

class _SpleshScreenState extends State<SpleshScreen> {
  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    forNavigate();
  }

  void forNavigate() {
    Future.delayed(Duration(seconds: 4)).then((value) {
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) {
          return opt();
        },
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf8ccf9),
      body: Center(
        child: Lottie.asset(
          "Animation/TicTacToe.json",
        ),
      ),
    );
  }
}

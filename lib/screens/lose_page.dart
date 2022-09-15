import 'package:flutter/material.dart';

class Lose_Page extends StatefulWidget {
  const Lose_Page({Key? key}) : super(key: key);

  @override
  State<Lose_Page> createState() => _Lose_PageState();
}

class _Lose_PageState extends State<Lose_Page> {
  var style = const TextStyle(
    fontSize: 18,
    color: Color(0xffd4d4ff),
  );
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: Container(
          width: double.infinity,
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                child: const Image(
                  image: AssetImage("assets/images/lose.png"),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Oops!",
                style: style,
              ),
              const SizedBox(
                height: 35,
              ),
              Text(
                "Sorry You are",
                style: style,
              ),
              Text(
                "the lose",
                style: style,
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  "Try again",
                ),
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xff1e1f23),
                  onPrimary: const Color(0xffd6d6d6),
                  padding: const EdgeInsets.only(
                      top: 10, bottom: 10, left: 70, right: 70),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

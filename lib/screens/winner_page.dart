import 'package:flutter/material.dart';
import 'package:kbc/screens/global.dart';

class Winner_page extends StatefulWidget {
  const Winner_page({Key? key}) : super(key: key);

  @override
  State<Winner_page> createState() => _Winner_pageState();
}

class _Winner_pageState extends State<Winner_page> {
  var style1 = const TextStyle(
    fontSize: 18,
    color: Color(0xff984051),
  );
  var style2 = const TextStyle(
    fontSize: 18,
    color: Color(0xff80572a),
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
                  image: AssetImage("assets/images/fire-cracker.png"),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Your Answer is Correct",
                style: style1,
              ),
              const SizedBox(
                height: 35,
              ),
              Text(
                "You Won",
                style: style2,
              ),
              Text(
                "₹${Global.price}",
                style: style2,
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  "Next",
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

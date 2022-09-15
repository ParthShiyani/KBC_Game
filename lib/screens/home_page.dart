import 'package:flutter/material.dart';
import 'package:kbc/screens/question.dart';
import 'package:kbc/screens/global.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int qindex = 0;
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: Scaffold(
          body: (qindex < QBank.length)
              ? IndexedStack(
                  index: qindex,
                  children: QBank.map((Map e) {
                    return getwidget(width: _width, data: e);
                  }).toList(),
                )
              : Container(
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
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Text(
                        "Congratulations",
                        style:
                            TextStyle(color: Color(0xff5b5f62), fontSize: 18),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "Game Over",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacementNamed('/');
                        },
                        child: const Text(
                          "Restart",
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
                )),
    );
  }

  Widget getwidget({required double width, required Map data}) {
    return Column(
      children: [
        Expanded(
          child: Container(
            color: data['bgcolor'],
            child: Column(
              children: [
                const Spacer(),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: Text(
                    "${data['question']}",
                    style: const TextStyle(fontSize: 22),
                  ),
                ),
                const Spacer(),
                Container(
                  height: 400,
                  color: Colors.black,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Spacer(
                        flex: 2,
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    if (data['ans'] == 'o_a') {
                                      Global.price = Global.price * 2;
                                      qindex++;
                                      Navigator.of(context).pushNamed('winner');
                                    } else {
                                      Navigator.of(context).pushNamed('lose');
                                    }
                                  });
                                },
                                child: Text("${data['o_a']}"),
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(0xff1e1f23),
                                  onPrimary: const Color(0xffa8a8a9),
                                  padding: const EdgeInsets.only(
                                      top: 20, bottom: 20),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    if (data['ans'] == 'o_b') {
                                      Global.price = Global.price * 2;
                                      qindex++;
                                      Navigator.of(context).pushNamed('winner');
                                    } else {
                                      Navigator.of(context).pushNamed('lose');
                                    }
                                  });
                                },
                                child: Text("${data['o_b']}"),
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(0xff1e1f23),
                                  onPrimary: const Color(0xffa8a8a9),
                                  padding: const EdgeInsets.only(
                                      top: 20, bottom: 20),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    if (data['ans'] == 'o_c') {
                                      Global.price = Global.price * 2;
                                      qindex++;
                                      Navigator.of(context).pushNamed('winner');
                                    } else {
                                      Navigator.of(context).pushNamed('lose');
                                    }
                                  });
                                },
                                child: Text("${data['o_c']}"),
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(0xff1e1f23),
                                  onPrimary: const Color(0xffa8a8a9),
                                  padding: const EdgeInsets.only(
                                      top: 20, bottom: 20),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    if (data['ans'] == 'o_d') {
                                      Global.price = Global.price * 2;
                                      qindex++;
                                      Navigator.of(context).pushNamed('winner');
                                    } else {
                                      Navigator.of(context).pushNamed('lose');
                                    }
                                  });
                                },
                                child: Text("${data['o_d']}"),
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(0xff1e1f23),
                                  onPrimary: const Color(0xffa8a8a9),
                                  padding: const EdgeInsets.only(
                                      top: 20, bottom: 20),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                      ),
                      const Spacer(
                        flex: 2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

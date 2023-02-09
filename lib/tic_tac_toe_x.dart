import 'dart:math';

import 'package:flutter/material.dart';

class tick extends StatefulWidget {
  const tick({Key? key}) : super(key: key);

  @override
  State<tick> createState() => _tickState();
}

class _tickState extends State<tick> {
  List ls = ["", "", "", "", "", "", "", "", "", ""];
  List cl = [
    "",
    Color(0xFF7e4b8b),
    Color(0xFF7e4b8b),
    Color(0xFF7e4b8b),
    Color(0xFF7e4b8b),
    Color(0xFF7e4b8b),
    Color(0xFF7e4b8b),
    Color(0xFF7e4b8b),
    Color(0xFF7e4b8b),
    Color(0xFF7e4b8b),
  ];

  String win = "";
  Color? mb;

  int cnt = 0, ch = 0;

  void xo(int a) {
    setState(() {
      if (ls[a] == "" && win == "") {
        ls[a] = "X";
        ch++;
        // winn();
        if (ch < 5 && win == "") {
          while (true) {
            int ran = Random().nextInt(9);
            ran = ran + 1;
            if (ls[ran] == "") {
              ls[ran] = "O";
              break;
            }
          }
        }

        cnt++;
      }
    });
  }

  void winn() {
    if (ls[1] == "X" && ls[2] == "X" && ls[3] == "X" ||
        ls[4] == "X" && ls[5] == "X" && ls[6] == "X" ||
        ls[7] == "X" && ls[8] == "X" && ls[9] == "X" ||
        ls[1] == "X" && ls[4] == "X" && ls[7] == "X" ||
        ls[2] == "X" && ls[5] == "X" && ls[8] == "X" ||
        ls[3] == "X" && ls[6] == "X" && ls[9] == "X" ||
        ls[1] == "X" && ls[5] == "X" && ls[9] == "X" ||
        ls[3] == "X" && ls[5] == "X" && ls[7] == "X") {
      win = "You Are Win";
      mb = Color(0xFF84ad74);
      wn();
    } else if (ls[1] == "O" && ls[2] == "O" && ls[3] == "O" ||
        ls[4] == "O" && ls[5] == "O" && ls[6] == "O" ||
        ls[7] == "O" && ls[8] == "O" && ls[9] == "O" ||
        ls[1] == "O" && ls[4] == "O" && ls[7] == "O" ||
        ls[2] == "O" && ls[5] == "O" && ls[8] == "O" ||
        ls[3] == "O" && ls[6] == "O" && ls[9] == "O" ||
        ls[1] == "O" && ls[5] == "O" && ls[9] == "O" ||
        ls[3] == "O" && ls[5] == "O" && ls[7] == "O") {
      win = "Robot Are Win";
      mb = Color(0xFF84ad74);
      wn();
    } else {
      win = "";
    }
    if (cnt == 5 && win == "") {
      win = "Tie";
      mb = Color(0xFFec7475);
      wn();
      cl = [
        "",
        Color(0xFFec7475),
        Color(0xFFec7475),
        Color(0xFFec7475),
        Color(0xFFec7475),
        Color(0xFFec7475),
        Color(0xFFec7475),
        Color(0xFFec7475),
        Color(0xFFec7475),
        Color(0xFFec7475),
      ];
    }
    if (ls[1] == "X" && ls[2] == "X" && ls[3] == "X" ||
        ls[1] == "O" && ls[2] == "O" && ls[3] == "O") {
      cl[1] = Color(0xFF84ad74);
      cl[2] = Color(0xFF84ad74);
      cl[3] = Color(0xFF84ad74);
    } else if (ls[4] == "X" && ls[5] == "X" && ls[6] == "X" ||
        ls[4] == "O" && ls[5] == "O" && ls[6] == "O") {
      cl[4] = Color(0xFF84ad74);
      cl[5] = Color(0xFF84ad74);
      cl[6] = Color(0xFF84ad74);
    } else if (ls[7] == "X" && ls[8] == "X" && ls[9] == "X" ||
        ls[7] == "O" && ls[8] == "O" && ls[9] == "O") {
      cl[7] = Color(0xFF84ad74);
      cl[8] = Color(0xFF84ad74);
      cl[9] = Color(0xFF84ad74);
    } else if (ls[1] == "X" && ls[4] == "X" && ls[7] == "X" ||
        ls[1] == "O" && ls[4] == "O" && ls[7] == "O") {
      cl[1] = Color(0xFF84ad74);
      cl[4] = Color(0xFF84ad74);
      cl[7] = Color(0xFF84ad74);
    } else if (ls[2] == "X" && ls[5] == "X" && ls[8] == "X" ||
        ls[2] == "O" && ls[5] == "O" && ls[8] == "O") {
      cl[2] = Color(0xFF84ad74);
      cl[5] = Color(0xFF84ad74);
      cl[8] = Color(0xFF84ad74);
    } else if (ls[3] == "X" && ls[6] == "X" && ls[9] == "X" ||
        ls[3] == "O" && ls[6] == "O" && ls[9] == "O") {
      cl[3] = Color(0xFF84ad74);
      cl[6] = Color(0xFF84ad74);
      cl[9] = Color(0xFF84ad74);
    } else if (ls[1] == "X" && ls[5] == "X" && ls[9] == "X" ||
        ls[1] == "O" && ls[5] == "O" && ls[9] == "O") {
      cl[1] = Color(0xFF84ad74);
      cl[5] = Color(0xFF84ad74);
      cl[9] = Color(0xFF84ad74);
    } else if (ls[3] == "X" && ls[5] == "X" && ls[7] == "X" ||
        ls[3] == "O" && ls[5] == "O" && ls[7] == "O") {
      cl[3] = Color(0xFF84ad74);
      cl[5] = Color(0xFF84ad74);
      cl[7] = Color(0xFF84ad74);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Tic-Tac-Toe")),
      ),
      body: Center(
        child: Expanded(
          child: Container(
            padding: EdgeInsets.fromLTRB(40, 0, 40, 20),
            height: double.infinity,
            width: double.infinity,
            color: Color(0xFFf8ccf9),
            child: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        /*1*/ Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                xo(1);
                                winn();
                              });
                            },
                            child: Card(
                              elevation: 20,
                              color: Colors.transparent,
                              child: Container(
                                margin: EdgeInsets.all(5),
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: cl[1],
                                    border: Border.all(
                                        color: Colors.black, width: 4)),
                                child: Center(
                                  child: Text(
                                    "${ls[1]}",
                                    style: TextStyle(fontSize: 50),
                                  ),
                                ),
                                // child: Neon(
                                //     text: '${ls[1]}',
                                //     color: Colors.green,
                                //     fontSize: 50,
                                //     font: NeonFont.Membra,
                                //     flickeringText: true,
                                //     flickeringLetters: [0, 1]
                                //     //       child: Text(
                                //     //   "${ls[1]}",
                                //     //   style: TextStyle(fontSize: 50),
                                //     // ),
                                //     ),
                              ),
                            ),
                          ),
                        ),
                        /*2*/ Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                xo(2);
                                winn();
                              });
                            },
                            child: Card(
                              elevation: 20,
                              color: Colors.transparent,
                              child: Container(
                                margin: EdgeInsets.all(5),
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: cl[2],
                                    border: Border.all(
                                        color: Colors.black, width: 4)),
                                child: Center(
                                    child: Text(
                                  "${ls[2]}",
                                  style: TextStyle(fontSize: 50),
                                )),
                              ),
                            ),
                          ),
                        ),
                        /*3*/ Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                xo(3);
                                winn();
                              });
                            },
                            child: Card(
                              elevation: 20,
                              color: Colors.transparent,
                              child: Container(
                                margin: EdgeInsets.all(5),
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: cl[3],
                                    border: Border.all(
                                        color: Colors.black, width: 4)),
                                child: Center(
                                    child: Text(
                                  "${ls[3]}",
                                  style: TextStyle(fontSize: 50),
                                )),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        /*4*/ Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                xo(4);
                                winn();
                              });
                            },
                            child: Card(
                              elevation: 20,
                              color: Colors.transparent,
                              child: Container(
                                margin: EdgeInsets.all(5),
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: cl[4],
                                    border: Border.all(
                                        color: Colors.black, width: 4)),
                                child: Center(
                                    child: Text(
                                  "${ls[4]}",
                                  style: TextStyle(fontSize: 50),
                                )),
                              ),
                            ),
                          ),
                        ),
                        /*5*/ Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                xo(5);
                                winn();
                              });
                            },
                            child: Card(
                              elevation: 20,
                              color: Colors.transparent,
                              child: Container(
                                margin: EdgeInsets.all(5),
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: cl[5],
                                    border: Border.all(
                                        color: Colors.black, width: 4)),
                                child: Center(
                                    child: Text(
                                  "${ls[5]}",
                                  style: TextStyle(fontSize: 50),
                                )),
                              ),
                            ),
                          ),
                        ),
                        /*6*/ Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                xo(6);
                                winn();
                              });
                            },
                            child: Card(
                              elevation: 20,
                              color: Colors.transparent,
                              child: Container(
                                margin: EdgeInsets.all(5),
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: cl[6],
                                    border: Border.all(
                                        color: Colors.black, width: 4)),
                                child: Center(
                                    child: Text(
                                  "${ls[6]}",
                                  style: TextStyle(fontSize: 50),
                                )),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        /*7*/ Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                xo(7);
                                winn();
                              });
                            },
                            child: Card(
                              elevation: 20,
                              color: Colors.transparent,
                              child: Container(
                                margin: EdgeInsets.all(5),
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: cl[7],
                                    border: Border.all(
                                        color: Colors.black, width: 4)),
                                child: Center(
                                    child: Text(
                                  "${ls[7]}",
                                  style: TextStyle(fontSize: 50),
                                )),
                              ),
                            ),
                          ),
                        ),
                        /*8*/ Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                xo(8);
                                winn();
                              });
                            },
                            child: Card(
                              elevation: 20,
                              color: Colors.transparent,
                              child: Container(
                                margin: EdgeInsets.all(5),
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: cl[8],
                                    border: Border.all(
                                        color: Colors.black, width: 4)),
                                child: Center(
                                    child: Text(
                                  "${ls[8]}",
                                  style: TextStyle(fontSize: 50),
                                )),
                              ),
                            ),
                          ),
                        ),
                        /*9*/ Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                xo(9);
                                winn();
                              });
                            },
                            child: Card(
                              elevation: 20,
                              color: Colors.transparent,
                              child: Container(
                                margin: EdgeInsets.all(5),
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: cl[9],
                                    border: Border.all(
                                        color: Colors.black, width: 4)),
                                child: Center(
                                    child: Text(
                                  "${ls[9]}",
                                  style: TextStyle(fontSize: 50),
                                )),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // /*win*/ Expanded(
                        //   child: Card(
                        //     elevation: 20,
                        //     color: Colors.transparent,
                        //     child: Container(
                        //       margin: EdgeInsets.all(5),
                        //       height: double.infinity,
                        //       width: double.infinity,
                        //       decoration: BoxDecoration(
                        //           borderRadius:
                        //               BorderRadius.all(Radius.circular(10)),
                        //           color: Color(0xffb4fe98),
                        //           border: Border.all(
                        //               color: Colors.black, width: 4)),
                        //       child: Center(
                        //           child: Text(
                        //         "$win",
                        //         style: TextStyle(
                        //             fontSize: 50, color: Colors.deepOrange),
                        //       )),
                        //     ),
                        //   ),
                        // ),
                        /*reset*/ Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                rf();
                              });
                            },
                            child: Card(
                              elevation: 20,
                              color: Colors.transparent,
                              child: Container(
                                margin: EdgeInsets.all(15),
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: Color(0xFFff577f),
                                    border: Border.all(
                                        color: Colors.black, width: 4)),
                                child: Center(
                                    child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("Restart",
                                        style: TextStyle(fontSize: 40)),
                                    Icon(
                                      Icons.restart_alt,
                                      size: 50,
                                    ),
                                  ],
                                )),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void rf() {
    ls = ["", "", "", "", "", "", "", "", "", ""];

    win = "";
    cnt = 0;
    ch = 0;

    cl = [
      "",
      Color(0xFF7e4b8b),
      Color(0xFF7e4b8b),
      Color(0xFF7e4b8b),
      Color(0xFF7e4b8b),
      Color(0xFF7e4b8b),
      Color(0xFF7e4b8b),
      Color(0xFF7e4b8b),
      Color(0xFF7e4b8b),
      Color(0xFF7e4b8b),
    ];
  }

  void wn() {
    // print('HHHEEELLLLOOOOOOOOOOOOOOOOOOO');
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      // useSafeArea: true,
      context: context,
      builder: (context) {
        return Container(
          color: mb,
          margin: EdgeInsets.fromLTRB(50, 240, 50, 160),
          child: Column(children: [
            SizedBox(
              height: 20,
            ),
            Center(
                child: Text(
              "$win",
              style: TextStyle(fontSize: 50),
            )),
            SizedBox(
              height: 10,
            ),
            Center(
                child: Text(
              "Scroll Me Down To Play Again",
              style: TextStyle(fontSize: 15),
            ))
          ]),
        );
      },
    );
  }
}

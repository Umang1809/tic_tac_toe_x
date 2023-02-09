import 'package:flutter/material.dart';
import 'package:tic_tac_toe_x/SpleshScreen.dart';
import 'package:tic_tac_toe_x/tic_tac_toe_x.dart';
import 'package:tic_tac_toe_x/tickkk.dart';

void main() {
  runApp(MaterialApp(home: SpleshScreen()));
}

class opt extends StatefulWidget {
  const opt({Key? key}) : super(key: key);

  @override
  State<opt> createState() => _optState();
}

class _optState extends State<opt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Tic-Tac-Toe")),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        color: Color(0xFFf8ccf9),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            /*Friend*/ Expanded(
              child: Container(
                margin: EdgeInsets.fromLTRB(100, 10, 100, 10),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.cyan,
                  image: DecorationImage(
                    image: AssetImage(
                      "Imaggeee/logo.jpg",
                    ),
                    fit: BoxFit.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 120,
            ),
            /*Robot*/ Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return tick();
                      },
                    ));
                  });
                },
                child: Card(
                  margin: EdgeInsets.all(50),
                  elevation: 20,
                  color: Colors.transparent,
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.green,
                        border: Border.all(color: Colors.black, width: 4)),
                    child: Center(
                        child: Text(
                      "Play With Robot!",
                      style: TextStyle(fontSize: 40, color: Colors.black),
                    )),
                  ),
                ),
              ),
            ),
            /*Robot*/ Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return ttt();
                      },
                    ));
                  });
                },
                child: Card(
                  margin: EdgeInsets.all(45),
                  elevation: 20,
                  color: Colors.transparent,
                  child: Container(
                    margin: EdgeInsets.all(5),
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.orangeAccent,
                        border: Border.all(color: Colors.black, width: 4)),
                    child: Center(
                        child: Text(
                      "Play With Friend!",
                      style: TextStyle(fontSize: 40, color: Colors.black),
                    )),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:godatu/diamonds.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Godatu Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, title: _title, home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DiamondPage()),
                    );
                  },
                  icon: Icon(Icons.wallet_giftcard))
            ],
            centerTitle: true,
            title: Text(
              "Godatu Demo",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            )),
        body: Center(
          child: Container(
            child: TextButton(
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text(
                    'Send Coins',
                    style: TextStyle(
                      color: Colors.lightBlue,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(35))),
                  content: Container(
                    height: 210,
                    width: 180,
                    child: Column(
                      children: [
                        FirsrRow(),
                        SizedBox(
                          height: 12,
                        ),
                        SecondRow(),
                        SizedBox(
                          height: 12,
                        ),
                        textBox(),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 33,
                              width: 110,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22),
                                color: Colors.lightBlue,
                              ),
                              child: TextButton(
                                onPressed: () =>
                                    Navigator.pop(context, 'Cancel'),
                                child: const Text(
                                  'Cancel',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            Container(
                              height: 33,
                              width: 110,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22),
                                color: Colors.lightBlue,
                              ),
                              child: TextButton(
                                onPressed: () => Navigator.pop(context, 'Pay'),
                                child: const Text('Pay',
                                    style: TextStyle(color: Colors.white)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              child: Container(
                  height: 43,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: Colors.lightBlue,
                  ),
                  child: Center(
                      child: Text(
                    'Show Dialog',
                    style: TextStyle(color: Colors.white),
                  ))),
            ),
          ),
        ));
  }
}

class textBox extends StatelessWidget {
  const textBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1.5,
      borderRadius: BorderRadius.circular(22),
      child: Container(
        height: 45,
        child: TextField(
          decoration: InputDecoration(
            hintText: "      Message (Optional)",
            hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}

class SecondRow extends StatefulWidget {
  const SecondRow({
    Key? key,
  }) : super(key: key);

  @override
  State<SecondRow> createState() => _SecondRowState();
}

class _SecondRowState extends State<SecondRow> {
  int counter = 10;
  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1.5,
      borderRadius: BorderRadius.circular(22),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: Colors.white38,
        ),
        height: 35,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: _decrementCounter,
                icon: Icon(Icons.remove, color: Colors.grey)),
            Text(
              "$counter Coins",
              style: TextStyle(color: Colors.grey),
            ),
            IconButton(
                onPressed: _incrementCounter,
                icon: Icon(
                  Icons.add,
                  color: Colors.grey,
                )),
          ],
        ),
      ),
    );
  }
}

class FirsrRow extends StatelessWidget {
  const FirsrRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 40,
          width: 40,
          child: CircleAvatar(
            radius: 16.0,
            child: ClipRRect(
              child: Image.asset('lib/assets/godatu.jpg'),
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Text(
          "Godatu Godatu",
          style: TextStyle(
            fontWeight: FontWeight.w700,
          ),
        )
      ],
    );
  }
}

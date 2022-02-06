import 'package:flutter/material.dart';

class DiamondPage extends StatelessWidget {
  const DiamondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Diamonds"),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        actions: [
          Icon(
            Icons.live_help_outlined,
            size: 35,
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Center(
              child: Container(
                  height: 260, child: Image.asset("lib/assets/diamonds.jpeg")),
            ),
            Text(
              "Total Diamonds",
              style: TextStyle(fontSize: 25, color: Colors.black54),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "3900",
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Divider(),
            Container(
              height: 130,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                          height: 80,
                          child: Image.asset("lib/assets/diamond.jpeg")),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Diamonds Balance",
                        style: TextStyle(fontSize: 15, color: Colors.black54),
                      ),
                      Text(
                        "3900",
                        style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward,
                    size: 60,
                    color: Colors.grey,
                  ),
                  Column(
                    children: [
                      Container(
                          height: 90,
                          child: Image.asset("lib/assets/cash.jpeg")),
                      Text(
                        "Cash Value",
                        style: TextStyle(fontSize: 15, color: Colors.black54),
                      ),
                      Text(
                        "₹ 10",
                        style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.error_outline_rounded,
                    color: Colors.orange,
                    size: 18,
                  ),
                  Text(
                    "What are diamonds?",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                "When viewers sends gifts during your live broadcast, you will receive the same amount of diamonds equivalent to the value of the gifts.",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  wordSpacing: 2,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {},
                child: Material(
                  elevation: 2,
                  shadowColor: Colors.green,
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    width: 240,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: Text(
                        "Cash Out",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

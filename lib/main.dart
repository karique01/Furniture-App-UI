import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 400,
            color: Color(0xFFbcd2c5),
            child: Image.asset("assets/chair.png",
                width: 550, height: 390, fit: BoxFit.cover),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              for (int i = 0; i <= 2; i++)
                Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Container(
                    width: 28,
                    height: 4,
                    color: i == 1 ? Colors.black : Color(0xFFbcd2c5),
                  ),
                )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 18, left: 18, right: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Green Chair",
                    style: TextStyle(
                        fontSize: 33,
                        fontFamily: "Poppins-SemiBold",
                        color: Color(0xFF606060))),
                Text("Wooden",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Poppins-Light",
                        color: Color(0xFF606060))),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 35,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black54, width: 2),
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {},
                            child: Text("-",
                                style: TextStyle(
                                    fontFamily: "Poppins-SemiBold",
                                    fontSize: 20)),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Text("1",
                                style: TextStyle(
                                    fontFamily: "Poppins-SemiBold",
                                    fontSize: 20)),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Text("+",
                                style: TextStyle(
                                    fontFamily: "Poppins-SemiBold",
                                    fontSize: 20)),
                          )
                        ],
                      ),
                    ),
                    Text("₹ 1,576",
                        style: TextStyle(
                            fontFamily: "Poppins-SemiBold", fontSize: 22))
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Text("About Product",
                    style: TextStyle(
                        fontFamily: "Poppins-SemiBold",
                        fontSize: 26,
                        color: Color(0xFF606060))),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod"
                  "tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,",
                  style: TextStyle(fontFamily: "Poppins-Light", fontSize: 12),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.black),
                          shape: BoxShape.circle),
                      child: Icon(Icons.favorite_border),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: MaterialButton(
                        color: Color(0xFFbcd2c5),
                        minWidth: 200,
                        height: 50,
                        child: Text("Add To Cart",
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: "Poppins-SemiBold",
                                color: Color(0xFF606060))),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.black),
                          shape: BoxShape.circle),
                      child: Icon(Icons.share),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

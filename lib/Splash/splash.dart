import 'package:flutter/material.dart';
import 'package:travelapp/Pages/Home/home.dart';
import 'package:travelapp/theme.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            child: Positioned(
              right: 0,
              bottom: 0,
              child: Image(
                image: AssetImage("assets/alpine.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
              height: MediaQuery.of(context).size.height,
              child: Center(child: SizedBox())),
          Padding(
            padding: const EdgeInsets.only(left: 24, top: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Begin\nThe Adventure",
                  style: BlackText.copyWith(fontSize: 30),
                ),
                SizedBox(height: 10,),
                Container(
                  margin: EdgeInsets.only(left: 5),
                  child: Text("Let's a Take Trip With Us", style: BlackText.copyWith(fontSize: 14),))
              ],
            ),
          ),
          Align(
            alignment: Alignment(0,0.8),
            child: Container(
              width: MediaQuery.of(context).size.width - (2 * 32),
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                
              ),
              child: RaisedButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
                color: Colors.blue,
                
                child: Text("Get Started", style: WhiteText.copyWith(
                  fontSize: 18
                ),),
                
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                    return HomePage();
                  }));
                },
              ),
            ),
          )
        ],
      )),
    );
  }
}

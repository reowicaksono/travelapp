import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/theme.dart';

class Call extends StatelessWidget {
  const Call({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(150),
                  border: Border.all(width: 2.0, color: greyColor),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, top: 10),
                child: Container(
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(
                    color: orangeColor,
                    image: DecorationImage(
                      
                        image: AssetImage("assets/tzuyu-removebg-preview.png"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Mine", style: BlackText.copyWith(fontSize: 18)),
              Icon(CupertinoIcons.heart_fill, color: Colors.red),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "10 : 30 minutes",
            style: GreyText,
          ),
          SizedBox(
            height: 40,
          ),
          Icon(CupertinoIcons.xmark_circle_fill, color: Colors.red, size: 50,)
        ],
      ),
    );
  }
}

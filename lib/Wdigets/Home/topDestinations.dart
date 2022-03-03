import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/Models/Home/topDestinationsModels.dart';
import 'package:travelapp/theme.dart';

class TopDestinations extends StatelessWidget {
  final TopDestinationsModel topDestinationsModel;

  TopDestinations(this.topDestinationsModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      child: Stack(
        children: [
          //NOTE: Penjelasan destinasi
          Align(
            alignment: Alignment(0,0.9),
            child: Container(
              height: 130,
              width: 210,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(17),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 2,
                    offset: Offset(3, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 10,top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${topDestinationsModel.activities} activities", style: BlackText.copyWith(fontSize: 20),),
                    Text("Enjoy best trips from top travel\nagencies at best prices",style: GreyText.copyWith( fontSize: 10),)
                  ],
                ),
              )
            ),
          ),

          // NOTE:Gambar destinasi
          Padding(
            padding: EdgeInsets.only(left: 5),
            child: Container(
              height: 160,
              width: 200,
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    image: DecorationImage(
                        image: AssetImage(topDestinationsModel.imgUrl),
                        fit: BoxFit.cover),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 15, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          topDestinationsModel.city,
                          style: WhiteText.copyWith(fontSize: 20),
                        ),
                        Row(
                          children: [
                            Icon(
                              CupertinoIcons.heart_fill,
                              color: Colors.red,
                              size: 14,
                            ),
                            Text(
                              topDestinationsModel.country,
                              style: WhiteText,
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/Models/Home/modelExclusiveHotel.dart';
import 'package:travelapp/theme.dart';

class CardExclusiveHotels extends StatelessWidget {

  final ModelExlusiveHotel modelExlusiveHotel;

  CardExclusiveHotels(this.modelExlusiveHotel);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      width: double.infinity,
      height: 400,
      child: Container(
      height: 140,
      child: Stack(
        children: [
          //NOTE: Penjelasan destinasi
          Align(
            alignment: Alignment(0,1),
            child: Container(
              height: 160,
              width: MediaQuery.of(context).size.width - (2*edge),
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
                    Text("${modelExlusiveHotel.activities} activities", style: BlackText.copyWith(fontSize: 25),),
                    Text("Enjoy best trips from top travel\nagencies at best prices",style: GreyText.copyWith( fontSize: 16),)
                  ],
                ),
              )
            ),
          ),

          // NOTE:Gambar destinasi
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Container(
              height: 280,
              width: MediaQuery.of(context).size.width - (3 * edge),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    image: DecorationImage(
                        image: AssetImage(modelExlusiveHotel.imgUrl),
                        fit: BoxFit.cover),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 15, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          modelExlusiveHotel.nameHotel,
                          style: WhiteText.copyWith(fontSize: 20),
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Icon(
                              CupertinoIcons.house_fill,
                              color: whiteColor,
                              size: 14,
                            ), SizedBox(width: 5,),
                            Text(
                              "${modelExlusiveHotel.city} , ${modelExlusiveHotel.country}",
                              style: WhiteText,
                            ),
                          ],
                        ),
                        SizedBox(height: 5,),
                      ],
                    ),
                  )),
            ),
          )
        ],
      ),)
    );
  }
}

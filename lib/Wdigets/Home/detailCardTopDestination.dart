import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/Models/Home/detailsModelTopDestination.dart';
import 'package:travelapp/Pages/Detail%20Top%20Destination/detailPlacePagesTopDestination.dart';
import 'package:travelapp/theme.dart';

class DetailCardTopDestination extends StatelessWidget {
  final DetailsModelTopDestination detailsModelTopDestination;

  DetailCardTopDestination(this.detailsModelTopDestination);

  @override
  Widget build(BuildContext context) {
    return InkWell(
            onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPlacePagesTopDestination(detailsModelTopDestination)
          ),
        );
      },
      child: Card(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 170,
              width: 120,
              child: Image(image: AssetImage(detailsModelTopDestination.imgUrl),fit: BoxFit.cover,)),
              SizedBox(width: 5,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Text("${detailsModelTopDestination.namePlace}\nIsland", style: BlackText.copyWith(fontSize : 18),),
                      SizedBox(width: 5,),
                    ],
                  ),
                  SizedBox(height: 5,),
                  Text(detailsModelTopDestination.activities, style: GreyText.copyWith(fontSize : 14),),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      for(int i = 1; i <= detailsModelTopDestination.rating; i++)Icon(CupertinoIcons.star_fill, color: orangeColor, size: 17),
                      if(detailsModelTopDestination.rating != 5) for(int j = detailsModelTopDestination.rating; j < 5; j++) Icon(CupertinoIcons.star_fill, color: greyColor, size: 17)
                      
                      
                    ],
                  ),
                  SizedBox(height: 30,),
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(17),
                        ),
                        child: Center(child: Text(detailsModelTopDestination.open)),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 30,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(17),
                        ),
                        child: Center(child: Text(detailsModelTopDestination.close)),
                      ),
                    ],
                  ),
    
                ],
              ),
              
              
          ],
        ),
      ),
    );
  }
}
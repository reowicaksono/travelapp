import 'package:flutter/material.dart';
import 'package:panorama/panorama.dart';
import 'package:travelapp/Models/Home/detailsModelTopDestination.dart';
import 'package:travelapp/theme.dart';

class viewStreetCard extends StatelessWidget {
  
  String? u;
  viewStreetCard(this.u);

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Stack(
            children: [
              Panorama(
                child: Image.asset('${this.u}'),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: EdgeInsets.only(left: edge,top: 18),
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Image(image: AssetImage("assets/btn_back.png"), fit: BoxFit.cover,)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/model/country_model.dart';

class ItemCountry extends StatelessWidget {
  CountryModel ob;

  ItemCountry(this.ob);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 3),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: Image.network(
              ob.imgUrl,
              fit: BoxFit.fill,
              height: 200,
              width: 150,
            ),
          ),
          Container(
            padding: EdgeInsets.all(7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Positioned(
                    child: Container(
                      padding: EdgeInsets.all(4),
                      child: Text(
                        ob.label,
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.all(Radius.circular(7))),
                    ),
                    left: 6,
                    top: 6),
                Spacer(),
                Row(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Text(
                              ob.countryName,
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                            Text(ob.noOfTours.toString() + "Tours",
                                style: TextStyle(
                                    fontSize: 13, color: Colors.white))
                          ],
                        )
                      ],
                    ),
                    Spacer(),
                    Container(child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Text(
                              ob.rating.toString(),
                              style:
                              TextStyle(fontSize: 15, color: Colors.white),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 20,
                            ),
                          ],
                        )
                      ],
                    ),padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.all(Radius.circular(7))),
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

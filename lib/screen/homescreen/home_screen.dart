import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/fakedata/data.dart';
import 'package:travel_app/model/country_model.dart';
import 'package:travel_app/widget/constant.dart';
import 'package:travel_app/widget/item_country.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CountryModel> contrys = getCountrys();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constant.titleHome,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 40,
                width: 40,
                child: Image.asset("assets/images/logo.png"),
              ),
              Text(
                Constant.titleHome,
                style: TextStyle(color: Colors.black54, fontSize: 20),
              )
            ],
          ),
          leading: Container(
              padding: EdgeInsets.all(7),
              height: 20,
              width: 20,
              child: Image.asset("assets/images/menu.png")),
          actions: [
            IconButton(
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                onPressed: null)
          ],
        ),
        body: Container(
          padding: EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(top: 20)),
              Text(
                "Find the best tour",
                style: TextStyle(color: Colors.black54, fontSize: 28),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Text(
                "Country",
                style: TextStyle(color: Colors.black54, fontSize: 20),
              ),SizedBox(height: 10,),
              Container(
                height: 200,
                child: GridView(
                  scrollDirection: Axis.horizontal,
                  semanticChildCount: 1,
                  //like for each
                  children: contrys.map((ob) => ItemCountry(ob)).toList(),
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      crossAxisSpacing: 10,
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 4/2.8),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

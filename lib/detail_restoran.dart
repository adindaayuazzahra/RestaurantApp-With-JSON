import 'package:flutter/material.dart';
import 'package:restoran_sub1/model/restoran.dart';
import 'package:restoran_sub1/styles.dart';

class DetailRestoran extends StatelessWidget {
  final Restoran restoran;
  const DetailRestoran({required this.restoran});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: bgColor,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: secondaryColor,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black87,
                        offset: Offset(1, 3),
                        blurRadius: 5),
                  ]),
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Hero(
                tag: restoran.pictureId,
                child: Image.network(
                  restoran.pictureId,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 35, 20, 0),
                //padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ' ${restoran.name}',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    SizedBox(height: 6),
                    IntrinsicHeight(
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.red,
                          ),
                          Text(restoran.city,
                              style: Theme.of(context).textTheme.bodyText2),
                          VerticalDivider(
                            color: Colors.black,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Text(
                            restoran.rating.toString(),
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 25),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: primaryColor),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Description',
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                            SizedBox(height: 5),
                            Text(
                              restoran.description,
                              style: Theme.of(context).textTheme.bodyText2,
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: EdgeInsets.all(9),
                      child: TabBar(
                        indicator: BoxDecoration(
                            color: secondaryColor,
                            borderRadius: BorderRadius.circular(30)),
                        tabs: [
                          Tab(
                            child: Text(
                              'Foods',
                              style: Theme.of(context).textTheme.button,
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Drinks',
                              style: Theme.of(context).textTheme.button,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 330,
                      child: TabBarView(children: <Widget>[
                        //foods
                        SingleChildScrollView(
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: restoran.foods.map((foods) {
                                return Container(
                                  width: MediaQuery.of(context).size.width,
                                  padding: EdgeInsets.only(bottom: 5),
                                  child: Card(
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Text(foods,
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption),
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ),

                        //Drinks
                        SingleChildScrollView(
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: restoran.drinks.map((drinks) {
                                return Container(
                                  width: MediaQuery.of(context).size.width,
                                  padding: EdgeInsets.only(bottom: 5),
                                  child: Card(
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Text(drinks,
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption),
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ]),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

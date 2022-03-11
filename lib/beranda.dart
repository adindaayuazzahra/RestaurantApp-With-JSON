import 'package:flutter/material.dart';
import 'package:restoran_sub1/detail_restoran.dart';
import 'package:restoran_sub1/model/restoran.dart';
import 'package:restoran_sub1/styles.dart';

class Beranda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        elevation: 10,
        backgroundColor: primaryColor,
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Wellcome!',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    SizedBox(height: 5),
                    Text(
                      'We have a restaurant recommendation for you!',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: FutureBuilder<String>(
        future: DefaultAssetBundle.of(context)
            .loadString('assets/local_restaurant.json'),
        builder: (context, snapshot) {
          final List<Restoran> restoran = parseRestorant(snapshot.data);
          return ListView.builder(
            padding: EdgeInsets.symmetric(vertical: 10),
            itemCount: restoran.length,
            itemBuilder: (context, index) {
              return _restoranItem(context, restoran[index]);
            },
          );
        },
      ),
    );
  }
}

Widget _restoranItem(BuildContext context, Restoran restoran) {
  return InkWell(
    child: Card(
      elevation: 10,
      margin: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 13, horizontal: 10),
        child: Row(
          children: [
            Hero(
              tag: restoran.pictureId,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  restoran.pictureId,
                  fit: BoxFit.cover,
                  width: 120,
                  height: 85,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ' ${restoran.name}',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.red,
                      ),
                      Text(restoran.city,
                          style: Theme.of(context).textTheme.bodyText2),
                    ],
                  ),
                  Row(
                    children: [
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
                ],
              ),
            ),
          ],
        ),
      ),
    ),
    onTap: () {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DetailRestoran(restoran: restoran)));
    },
  );
}

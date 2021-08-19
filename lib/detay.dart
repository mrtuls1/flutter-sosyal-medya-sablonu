import 'package:flutter/material.dart';

class Detay extends StatefulWidget {
  var imgPath;

  Detay({this.imgPath});

  @override
  _DetayState createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Hero(
            tag: widget.imgPath,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.imgPath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            left: 15,
            right: 15,
            bottom: 15,
            child: Material(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 230,
                width: MediaQuery.of(context).size.width - 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              image: DecorationImage(
                                  image: AssetImage('assets/dress.jpg'),
                                  fit: BoxFit.contain),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "LAMİNATED",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Louis vuitton",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Montserrat',
                                  color: Colors.grey),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 30,
                              width: MediaQuery.of(context).size.width - 180,
                              child: Text(
                                "One button V-neck sling long-sleeved waist female stitching dress",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Montserrat',
                                    color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Divider(),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15, top: 10, bottom: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "\$6500",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 22,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            child: FloatingActionButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.arrow_forward_ios,
                              ),
                              backgroundColor: Colors.brown,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: (MediaQuery.of(context).size.height - 100) / 2,
            left: 35,
            child: Container(
              height: 30,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        "LAMİNATED",
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 10),
                      ),
                    ),
                  ),

                  Icon(Icons.arrow_forward_ios,color: Colors.white,size: 12,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

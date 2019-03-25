import 'package:flutter/material.dart';


// creating class and list for Popular brands element
class Brands{
  Brands({this.image2, this.outlets});

  String image2;
  String outlets;

}

List<Brands> _brandlist = <Brands>[
  Brands(image2: 'images/brand1.jpg', outlets: '10 outlets near you'),
  Brands(image2: 'images/brand2.jpg', outlets: '45 outlets near you'),
  Brands(image2: 'images/brand3.jpg', outlets: '20 outlets near you'),
  Brands(image2: 'images/brand4.jpg', outlets: '30 outlets near you'),
  Brands(image2: 'images/brand5.png', outlets: '25 outlets near you'),


];


// creating class and list for elements other than popular brands

class OfferAds {
  OfferAds({this.image1, this.rating});

  String image1;
  String rating;
}

List<OfferAds> _offerlist = <OfferAds>[
  OfferAds(image1: 'images/offeradd1.jpg', rating: '4.2'),
  OfferAds(image1: 'images/offeradd2.jpg', rating: '4.5'),
  OfferAds(image1: 'images/offeradd3.jpg', rating: '4.0'),

];



class Foryou extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return new Container(
        child: ListView(

          shrinkWrap: true,
          children: <Widget>[
            Column(
              children: <Widget>[


                //element -1
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 10),

                      //creating container for dine res with image row
                      child: Container(
                          height: 300.0,
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[


                              // writing text and see more
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5.0, 10.0, 0.0, 10.0),
                                    child: Text('Dine-out restauants',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 28.0
                                      ),),
                                  ),

                                  InkWell(
                                    child: Text('See all ',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold
                                      ),),

                                    //Icon(Icons.arrow_forward),
                                    onTap: (){
                                      debugPrint('see more..');
                                    },

                                  )


                                ],
                              ),

                             Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                                    child: Text('go out for dinner',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18.0
                                      ),),
                                  ),

                                ],
                              ),

                              // image container and positioned element for rating
                              SizedBox(height: 10.0),
                              Padding(
                                padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      height: 200.0,
                                      child: ListView.builder(
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemCount: _offerlist.length,
                                        itemBuilder: (context, index){
                                          final offerlist = _offerlist[index];
                                          return Column(
                                            children: <Widget>[
                                              Container(
                                                child: Card(
                                                  elevation: 1.0,
                                                  child: Stack(
                                                    children: <Widget>[
                                                      Image.asset(
                                                        offerlist.image1,
                                                        fit: BoxFit.fill,
                                                        height: 180.0,
                                                        width: 250.0,
                                                      ),
                                                      Positioned(
                                                        right: 15.0,
                                                        bottom: 15.0,
                                                        child: Material(

                                                            shape: OutlineInputBorder(
                                                                borderRadius: BorderRadius.circular(5),
                                                                borderSide: BorderSide(
                                                                    color: Colors.green
                                                                )
                                                            ),
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                  color: Colors.green
                                                              ),
                                                              height: 15.0,
                                                              width: 20.0,
                                                              child: Center(
                                                                child: Text(offerlist.rating,
                                                                  style: TextStyle(
                                                                      color: Colors.white,
                                                                      fontSize: 10.0,
                                                                      fontWeight: FontWeight.bold
                                                                  ),),
                                                              ),
                                                            )
                                                        ),
                                                      )


                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          );
                                        },  //itembuilder
                                      ),
                                    )
                                  ],
                                ),)

                            ],
                          )
                      ) ,
                    )
                  ],
                ),



                //2nd element

                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 10),

                      //creating container for dine res with image row
                      child: Container(
                          height: 300.0,
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[


                              // writing text and see more
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5.0, 10.0, 0.0, 10.0),
                                    child: Text('Cafes',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 28.0
                                      ),),
                                  ),

                                  InkWell(
                                    child: Text('See all ',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold
                                      ),),

                                    //Icon(Icons.arrow_forward),
                                    onTap: (){
                                      debugPrint('see more..');
                                    },

                                  )


                                ],
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                                    child: Text('Coffee, snacks and beverages',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18.0
                                      ),),
                                  ),

                                ],
                              ),

                              // image column
                              SizedBox(height: 10.0),
                              Padding(
                                padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      height: 200.0,
                                      child: ListView.builder(
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemCount: _offerlist.length,
                                        itemBuilder: (context, index){
                                          final offerlist = _offerlist[index];
                                          return Column(
                                            children: <Widget>[
                                              Container(
                                                child: Card(
                                                  elevation: 1.0,
                                                  child: Stack(
                                                    children: <Widget>[
                                                      Image.asset(
                                                        offerlist.image1,
                                                        fit: BoxFit.fill,
                                                        height: 180.0,
                                                        width: 250.0,
                                                      ),
                                                      Positioned(
                                                        right: 15.0,
                                                        bottom: 15.0,
                                                        child: Material(

                                                            shape: OutlineInputBorder(
                                                                borderRadius: BorderRadius.circular(5),
                                                                borderSide: BorderSide(
                                                                    color: Colors.green
                                                                )
                                                            ),
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                  color: Colors.green
                                                              ),
                                                              height: 15.0,
                                                              width: 20.0,
                                                              child: Center(
                                                                child: Text(offerlist.rating,
                                                                  style: TextStyle(
                                                                      color: Colors.white,
                                                                      fontSize: 10.0,
                                                                      fontWeight: FontWeight.bold
                                                                  ),),
                                                              ),
                                                            )
                                                        ),
                                                      )


                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          );
                                        },  //itembuilder
                                      ),
                                    )
                                  ],
                                ),)

                            ],
                          )
                      ) ,
                    )
                  ],
                ),


                // element-3

                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 10),

                      //creating container for dine res with image row
                      child: Container(
                          height: 300.0,
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[


                              // writing text and see more
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5.0, 10.0, 0.0, 10.0),
                                    child: Text('Pubs, bars & party spots',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 28.0
                                      ),),
                                  ),

                                  InkWell(
                                    child: Text('See all ',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold
                                      ),),

                                    //Icon(Icons.arrow_forward),
                                    onTap: (){
                                      debugPrint('see more..');
                                    },

                                  )


                                ],
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                                    child: Text('Enjoy the night life',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18.0
                                      ),),
                                  ),

                                ],
                              ),

                              // image column
                              SizedBox(height: 10.0),
                              Padding(
                                padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      height: 200.0,
                                      child: ListView.builder(
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemCount: _offerlist.length,
                                        itemBuilder: (context, index){
                                          final offerlist = _offerlist[index];
                                          return Column(
                                            children: <Widget>[
                                              Container(
                                                child: Card(
                                                  elevation: 1.0,
                                                  child: Stack(
                                                    children: <Widget>[
                                                      Image.asset(
                                                        offerlist.image1,
                                                        fit: BoxFit.fill,
                                                        height: 180.0,
                                                        width: 250.0,
                                                      ),
                                                      Positioned(
                                                        right: 15.0,
                                                        bottom: 15.0,
                                                        child: Material(

                                                            shape: OutlineInputBorder(
                                                                borderRadius: BorderRadius.circular(5),
                                                                borderSide: BorderSide(
                                                                    color: Colors.green
                                                                )
                                                            ),
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                  color: Colors.green
                                                              ),
                                                              height: 15.0,
                                                              width: 20.0,
                                                              child: Center(
                                                                child: Text(offerlist.rating,
                                                                  style: TextStyle(
                                                                      color: Colors.white,
                                                                      fontSize: 10.0,
                                                                      fontWeight: FontWeight.bold
                                                                  ),),
                                                              ),
                                                            )
                                                        ),
                                                      )


                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          );
                                        },  //itembuilder
                                      ),
                                    )
                                  ],
                                ),)

                            ],
                          )
                      ) ,
                    )
                  ],
                ),

                //element-4

                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 10),

                      //creating container for dine res with image row
                      child: Container(
                          height: 240.0,
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[


                              // writing text and see more
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5.0, 10.0, 0.0, 10.0),
                                    child: Text('Popular Brands',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 28.0
                                      ),),
                                  ),

                                  InkWell(
                                    child: Text('See all ',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold
                                      ),),

                                    //Icon(Icons.arrow_forward),
                                    onTap: (){
                                      debugPrint('see more..');
                                    },

                                  )


                                ],
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                                    child: Text('Browse through popular brands',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18.0
                                      ),),
                                  ),

                                ],
                              ),

                              // image column

                              SizedBox(height: 10.0),
                              Padding(
                                padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      height: 150.0,
                                      child: ListView.builder(
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemCount: _brandlist.length,
                                        itemBuilder: (context, index){
                                          final brandlist = _brandlist[index];
                                          return Column(
                                            children: <Widget>[
                                              Container(
                                                child: Card(
                                                  elevation: 1.0,
                                                  child: Stack(
                                                    children: <Widget>[
                                                      Image.asset(
                                                        brandlist.image2,
                                                        fit: BoxFit.fill,
                                                        height: 100.0,
                                                        width: 120.0,
                                                      ),

                                                      //SizedBox(height: 100.0,),



                                                    ],
                                                  ),
                                                ),


                                              )
                                            ],
                                          );
                                        },  //itembuilder
                                      ),
                                    )
                                  ],
                                ),)

                            ],
                          )
                      ) ,
                    )
                  ],
                ),

                //element-5

                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 10),

                      //creating container for dine res with image row
                      child: Container(
                          height: 300.0,
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[


                              // writing text and see more
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5.0, 10.0, 0.0, 10.0),
                                    child: Text('Newly opened',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 28.0
                                      ),),
                                  ),

                                  InkWell(
                                    child: Text('See all ',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold
                                      ),),

                                    //Icon(Icons.arrow_forward),
                                    onTap: (){
                                      debugPrint('see more..');
                                    },
                                  )
                                ],
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                                    child: Text('The best new places in town',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18.0
                                      ),),
                                  ),

                                ],
                              ),

                              // image column
                              SizedBox(height: 10.0),
                              Padding(
                                padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      height: 200.0,
                                      child: ListView.builder(
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemCount: _offerlist.length,
                                        itemBuilder: (context, index){
                                          final offerlist = _offerlist[index];
                                          return Column(
                                            children: <Widget>[
                                              Container(
                                                child: Card(
                                                  elevation: 1.0,
                                                  child: Stack(
                                                    children: <Widget>[
                                                      Image.asset(
                                                        offerlist.image1,
                                                        fit: BoxFit.fill,
                                                        height: 180.0,
                                                        width: 250.0,
                                                      ),
                                                      Positioned(
                                                        right: 15.0,
                                                        bottom: 15.0,
                                                        child: Material(

                                                            shape: OutlineInputBorder(
                                                                borderRadius: BorderRadius.circular(5),
                                                                borderSide: BorderSide(
                                                                    color: Colors.grey
                                                                )
                                                            ),
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                  color: Colors.grey
                                                              ),
                                                              height: 15.0,
                                                              width: 30.0,
                                                              child: Center(
                                                                child: Text('NEW',
                                                                  style: TextStyle(
                                                                      color: Colors.white,
                                                                      fontSize: 10.0,
                                                                      fontWeight: FontWeight.bold
                                                                  ),),
                                                              ),
                                                            )
                                                        ),
                                                      )

                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          );
                                        },  //itembuilder
                                      ),
                                    )
                                  ],
                                ),)

                            ],
                          )
                      ) ,
                    )
                  ],
                ),

                //element- 6

                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 10),

                      //creating container for dine res with image row
                      child: Container(
                          height: 300.0,
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[


                              // writing text and see more
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5.0, 10.0, 0.0, 10.0),
                                    child: Text('Mishti, bakery and cakes',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 28.0
                                      ),),
                                  ),

                                  InkWell(
                                    child: Text('See all ',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold
                                      ),),

                                    //Icon(Icons.arrow_forward),
                                    onTap: (){
                                      //debugPrint('see more..');
                                    },

                                  )
                                ],
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                                    child: Text('Satisfy your sweet tooth',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18.0
                                      ),),
                                  ),

                                ],
                              ),

                              // image column
                              SizedBox(height: 10.0),
                              Padding(
                                padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      height: 200.0,
                                      child: ListView.builder(
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemCount: _offerlist.length,
                                        itemBuilder: (context, index){
                                          final offerlist = _offerlist[index];
                                          return Column(
                                            children: <Widget>[
                                              Container(
                                                child: Card(
                                                  elevation: 1.0,
                                                  child: Stack(
                                                    children: <Widget>[
                                                      Image.asset(
                                                        offerlist.image1,
                                                        fit: BoxFit.fill,
                                                        height: 180.0,
                                                        width: 250.0,
                                                      ),
                                                      Positioned(
                                                        right: 15.0,
                                                        bottom: 15.0,
                                                        child: Material(

                                                            shape: OutlineInputBorder(
                                                                borderRadius: BorderRadius.circular(5),
                                                                borderSide: BorderSide(
                                                                    color: Colors.green
                                                                )
                                                            ),
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                  color: Colors.green
                                                              ),
                                                              height: 15.0,
                                                              width: 20.0,
                                                              child: Center(
                                                                child: Text(offerlist.rating,
                                                                  style: TextStyle(
                                                                      color: Colors.white,
                                                                      fontSize: 10.0,
                                                                      fontWeight: FontWeight.bold
                                                                  ),),
                                                              ),
                                                            )
                                                        ),
                                                      )


                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          );
                                        },  //itembuilder
                                      ),
                                    )
                                  ],
                                ),)

                            ],
                          )
                      ) ,
                    )
                  ],
                ),

                //element-7

                Padding(
                  padding: EdgeInsets.all( 10.0),
                  child:
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text('zomato',
                            style: TextStyle(
                                fontSize: 40.0,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold
                            ),),

                          SizedBox(width: 30.0,),

                          Text(' think food think zomato',
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w300
                            ),),
                        ],
                      ),

                      Row(
                        children: <Widget>[
                          Text('We are showing you a combination of our sponsors and popular places around you.',
                            style: TextStyle(
                                fontSize: 10.0,
                                color: Colors.grey,
                                fontWeight: FontWeight.w300
                            ),),
                        ],
                      ),
                    ],

                  ),

                )




              ],
            )

          ],
        ),

    );
  }


}


import 'package:flutter/material.dart';
import 'package:ui_zomato_clone/app_pages/foryou.dart';
import 'package:ui_zomato_clone/app_pages/cuisines.dart';
import 'package:ui_zomato_clone/app_pages/bookatable.dart';
import 'package:ui_zomato_clone/app_pages/sneakpeek.dart';
import 'package:ui_zomato_clone/app_pages/events.dart';
import 'package:ui_zomato_clone/app_pages/collections.dart';
import 'package:ui_zomato_clone/app_pages/order.dart';
import 'package:ui_zomato_clone/app_pages/goout.dart';
import 'package:ui_zomato_clone/app_pages/gold.dart';
import 'package:ui_zomato_clone/app_pages/search.dart';
import 'package:ui_zomato_clone/app_pages/profile.dart';

//defining main function
void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ZOMATO home page replication',
        home: MyApp(),
      )
  );
}

// create stateful widget using class
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

//creating state for MyApp
class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin{
  TabController  _tabController;
  TextEditingController principalController = TextEditingController();

  @override
  void initState(){
    super.initState();
    _tabController = TabController(vsync: this, initialIndex: 0, length: 6);
  }

  int _index = 0;
    final List<Widget> children = [
      OrderPage(),
      GooutPage(),
      GoldPage(),
      SearchPage(),
      ProfilePage()
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('YOUR LOCATION',
        style: TextStyle(
          color: Colors.green,
          fontSize: 15.0

        ),),
        backgroundColor: Colors.white,
        //elevation: 0.5,
        bottom: new TabBar(
          //unselectedLabelColor: Colors.black,
          labelColor: Colors.black,
          isScrollable: true,
          indicatorWeight: 5.0 ,
          controller: _tabController,
          indicatorColor: Colors.red,
          tabs: <Widget>[
            Tab(text: 'For You', ),
            Tab(text: 'Sneakpeek'),
            //icon: Icon(Icons.vignette, color: Colors.black, size: 12.0 )
            Tab(text: 'Collections',),
            Tab(text: 'Events',),
            Tab(text: 'Cuisines',),
            Tab(text: 'Book a Table',),
          ],
        ),
        actions: <Widget>[

          IconButton(
              onPressed: (){
                showSearch(context: context, delegate: DataSearch());
              },
              icon: Icon(Icons.search,
                color: Colors.black,
                size: 25,
              )),
           ],
         ),



      body:

      TabBarView(
        controller: _tabController,
        children:<Widget>[

          new Foryou(),
          new Sneakpeek(),
          new Collections(),
          new Events(),
          new Cuisines(),
          new Bookatable(),

        ],
      ),

      //body: _children[_index],
      //BottomNavigation Bar Items

        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.orange,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.fastfood,
                    color: Colors.grey),
                title: Text('ORDER',
                  style: TextStyle(
                      color: Colors.black
                  ),)
            ),

            BottomNavigationBarItem(
                icon: Icon(Icons.card_travel,
                    color: Colors.grey),
                title: Text('GO OUT',
                  style: TextStyle(
                      color: Colors.black
                  ),)
            ),

            BottomNavigationBarItem(
                icon: Icon(Icons.details,
                    color: Colors.grey),
                title: Text('GOLD',
                  style: TextStyle(
                      color: Colors.black
                  ),)
            ),

            BottomNavigationBarItem(
                icon: Icon(Icons.search,
                    color: Colors.grey),
                title: Text('SEARCH',
                  style: TextStyle(
                      color: Colors.black
                  ),)
            ),

            BottomNavigationBarItem(
                icon: Icon(Icons.person,
                    color: Colors.grey),
                title: Text('PROFILE',
                  style: TextStyle(
                      color: Colors.black
                  ),)
            )

          ],
          currentIndex: _index,
          onTap: _onTapped,
        ),

    );
  }
  void _onTapped(int _index){
    setState( (){
      this._index = _index;
    });
   // _navigateToScreens(index);
  }

}



//class for your location search bar

class DataSearch extends SearchDelegate<String> {

  final cities = ["mumbai",
  "delhi",
  "bangalore",
  "allahabad",
  "goa",
  "lucknow",
  "hyderabad",
  "jaipur",
  "agra",
  "noida",
  "howrah",
    "ahemdabad", "jamshedpur", "konchi", "kollam", "kottayam", "kanpur", "kalyani", "kota", "karnataka",
  ];

  final recentCities = [
    "delhi",
    "bangalore",
    "allahabad",
    "goa",
    "kalyani",
  ];


  @override
  List<Widget> buildActions(BuildContext context) {
    //actions for Appbar

    return [
      IconButton(icon: Icon(Icons.clear), onPressed: () {
        query = "";
      })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    //leading icon on the left of the appbar

    return IconButton(
        icon: AnimatedIcon(icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,),

        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    //show some results based on the selection
    return Container(
      height: 100.0,
      width: 100.0,
      child: Card(
        color: Colors.green,
        child: Center(
          child: Text(query),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    //show when someone searches for something

    final suggestionList = query.isEmpty ? recentCities : cities.where((p) =>
        p.startsWith(query)).toList();

    return ListView.builder(itemBuilder: (context, index) =>
        ListTile(
          onTap: () {
            showResults(context);
          },

          leading: Icon(Icons.location_city),
          title: RichText(
              text: TextSpan(
                  text: suggestionList[index].substring(0, query.length),
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),
                  children: [ TextSpan(
                      text: suggestionList[index].substring(query.length),
                      style: TextStyle(
                          color: Colors.grey
                      )
                  )
                  ]
              )),
        ),
      itemCount: suggestionList.length,
    );
  }
}

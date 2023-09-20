import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantui/screens/soil.dart';
import 'package:plantui/screens/zodiac.dart';

class TabView extends StatefulWidget {
  const TabView({Key? key}) : super(key: key);

  @override
  State<TabView> createState() => _TabViewState();
}

class _TabViewState extends State<TabView> {
  final List<Tab> myTabs=<Tab>[

    Tab(text: 'All'),
    Tab(text: 'Zodiac'),
    Tab(text: 'Medicinal'),
    Tab(text: 'Air-purifying'),
    Tab(text: 'Flowering'),
    Tab(text: 'Pet-friendly'),
    Tab(text: 'Low-maintenance'),



  ];
  List<Widget> _tabPages = [
    Soil(),
    Zodiac(),
    Soil(),
    Zodiac(),
    Soil(),
    Zodiac(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: myTabs.length,
        child: Scaffold(
          body: CustomScrollView(
            slivers: <Widget>[

              SliverToBoxAdapter(

                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 45,left: 125,bottom: 5),
                      width: double.infinity,
                      color: Colors.lightGreen[50],
                      child: Text("Plants",
                      style: GoogleFonts.adamina(
                        fontSize: 35,
                        color: Color(0xFF50694C),
                        fontWeight: FontWeight.w200
                      ),
                      textAlign: TextAlign.start,
                      ),

                    ),
                    Container(
                      color: Colors.lightGreen[50],
                     child:TabBar(
                      isScrollable: true, // Set this property to make the tab bar scrollable
                      tabs: myTabs,
                      labelColor: Color(0xFF21411C),
                      // padding: EdgeInsets.only(top: 50),
                      indicatorColor:  Color(0xFF21411C),
                      unselectedLabelColor: Color(0xFF50694C),
                       indicatorWeight: 1.5,
                       indicatorSize: TabBarIndicatorSize.label,


                    ),),
                  ],
                )
              ),
              SliverFillRemaining(
                child: TabBarView(
                  children:_tabPages
                ),
              ),
            ],
          ),
        )
    );
  }
}


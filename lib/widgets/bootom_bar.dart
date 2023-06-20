import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

import '../../screens/home_screen.dart';
import '../../screens/profile_screen.dart';
import '../../screens/search_Screen.dart';
import '../../screens/ticket_screen.dart';

class MyBottomBar extends StatefulWidget {
  const MyBottomBar({Key? key}) : super(key: key);

  @override
  State<MyBottomBar> createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  int _selectedIndex=0;
  static final List<Widget> _widgetOptions=<Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen()
  ];
  void _onItemTap(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    double screenHeight=MediaQuery.of(context).size.height;

    double height10=screenHeight/78.1;

    return Scaffold(
      body: Center(child: _widgetOptions[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTap,
        elevation: height10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.grey,
        unselectedItemColor: const Color(0xff526480),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: "home"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
              label: "Ticket"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
              label: "home")
        ],
      ),
    );
  }
}


/*
    @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Consumer<MyProvider>(builder: (ctx,myType,_)=>Scaffold(
      backgroundColor: const Color(0xffe2e2e2),
      body: _widgetOptions[myType.pageIndex],
      bottomNavigationBar: Consumer<MyProvider>(builder: (ctx,myType,_)=>Container(
            padding: EdgeInsets.only(top: Dimensions.height15,bottom: Dimensions.height15 ),
            decoration: BoxDecoration(
                color: Colors.grey,
               ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: BottomNavWidget(icon:myType.pageIndex==0? Icons.home_filled:Icons.home_outlined
                    ,onTap: (){myType.pageIndex=0;}
                    ,),
                ),
                Expanded(
                  child: BottomNavWidget(icon:myType.pageIndex==1? Icons.search:Icons.search_rounded,onTap: (){
                    myType.pageIndex=1;
                  },),
                ),
                Expanded(
                  child: BottomNavWidget(icon:myType.pageIndex==2? Icons.airplane_ticket:Icons.airplane_ticket_outlined,onTap: (){
                    myType.pageIndex=2;
                  },),
                ),
                Expanded(
                  child: BottomNavWidget(icon:myType.pageIndex==3? Icons.person:Icons.person_outlined,onTap: (){
                    myType.pageIndex=3;
                  },),
                ),
              ],
            ),
          ),

      )) ,

    );
  }
*/

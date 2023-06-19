
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ticketbookingapp/dimensions.dart';
import 'package:ticketbookingapp/screens/home_screen.dart';
import 'package:ticketbookingapp/screens/profile_screen.dart';
import 'package:ticketbookingapp/screens/search_Screen.dart';
import 'package:ticketbookingapp/screens/ticket_screen.dart';
import '../provider/my_provider.dart';
import 'botton_nav.dart';

class MyBottomBar extends StatefulWidget {
  const MyBottomBar({Key? key}) : super(key: key);

  @override
  State<MyBottomBar> createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
//  int _selectedIndex=0;
  static final List<Widget> _widgetOptions=<Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen()
  ];
/*  void _onItemTap(int index){
   setState(() {
     _selectedIndex=index;
   });
  }*/
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Consumer<MyProvider>(builder: (ctx,mytype,_)=>Scaffold(
      backgroundColor: const Color(0xffe2e2e2),
      body: _widgetOptions[mytype.pageIndex],
      bottomNavigationBar: Consumer<MyProvider>(builder: (ctxx,myType,_)=>Container(
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
                  child: BottomNavWidget(icon:myType.pageIndex==2? FluentSystemIcons.ic_fluent_ticket_filled:FluentSystemIcons.ic_fluent_ticket_regular,onTap: (){
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

/*  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTap,
        elevation: Dimensions.height10,
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
  }*/
}

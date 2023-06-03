import 'package:codstore/components/purchasedproduct/previsoulybuy.dart';
import 'package:flutter/material.dart';

import '../components/bottom_navigationbar_homePpage.dart';
import '../components/home_screen_components.dart';
import '../components/singletextValue.dart';
import '../components/userreport.dart';




class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int selectedIndex = 1;

  static TextStyle optionStyle =
      const TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  final List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];


 void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;

    });
  
  }

  @override
  Widget build(BuildContext context) {
     var width = MediaQuery.of(context).size.width;
     var height = MediaQuery.of(context).size.height;
    return SafeArea(


      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow.shade900,
          title: Column(
            children: [

              Row(
                   children: [
                      Padding(
                        padding: const EdgeInsets.only(top:43.0),
                        child: CircularAvtarUser(AssetImage("assets/user.jpg")),
                      ),
                     Padding(
                       padding: const EdgeInsets.symmetric(vertical:4.0, horizontal: 10),
                       child: UserDetails(),
                     ),
                   ],
                 ),


                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 20, vertical:10),
                   child: SearchProductTextField(height*0.07, width)
                 )
            ],
          ),
          
        ),

         body:  Container(
              height: height,
              width: width,
              color: Colors.white,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [

                    Text("My Wallet Balance"),
                    Text("Rs.2,500"),

                    Row(
                      children: [
                        Expanded(
                          child: UserWallet(height*0.1)
                        ),

                        Expanded(
                          child:UserWalletStatement(height*0.1)
                        )
                      ],
                    ),



                    Container(
                      width: double.infinity,
                      color: Colors.grey.shade100.withOpacity(0.9),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("My Previous Order", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold,color: Colors.yellow.shade900),),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: PrevisoulyProduct(AssetImage("assets/headphone.jpg")),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: PrevisoulyProduct(AssetImage("assets/headphone.jpg")),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: PrevisoulyProduct(AssetImage("assets/shoe.jpg")),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: PrevisoulyProduct(AssetImage("assets/watch.jpg")),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: PrevisoulyProduct(AssetImage("assets/watterbottle.jpg")),
                                ),
                           
                             
                                                      
                                                      
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )








                  ],
              
                  
                ),
              )
          ),

        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(78.0),
              child: SizedBox(
                height: height*0.13,
                child: BottomNavigationBar(
                  selectedFontSize: 14,
                  unselectedFontSize: 12,
                  selectedLabelStyle: TextStyle(color: Colors.black),
                  unselectedLabelStyle: TextStyle(color: Colors.grey),

                backgroundColor: Colors.grey.shade200.withOpacity(0.9),
              
                items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings, color:Colors.amber),
                  activeIcon: Icon(Icons.settings, size: 46,),
                        
                  label: 'Settings',
                ),
                        
                 BottomNavigationBarItem(
                  icon: CircleAvatar(
                    radius: 40.0,
                    child: Icon(Icons.qr_code, size: 46,),
                  ),
                  activeIcon: CircleAvatar(
                    radius: 40.0,
                    child: Icon(Icons.qr_code, size: 56,),
                  ),
                  label: '',
                ),
                        
                        
                          
                BottomNavigationBarItem(
                  icon: Icon(Icons.sell, color:Colors.amber),
                  activeIcon: Icon(Icons.sell, size: 46,),
                        
                  label: 'Cart',
                ),
            ],
            currentIndex: selectedIndex,
            selectedItemColor: Colors.amber[800],
            onTap: onItemTapped,
                      
                    ),
              ),
            )
          ),
        )



    
        
      
    );
  }
}
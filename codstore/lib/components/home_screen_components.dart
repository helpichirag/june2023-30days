

import 'package:flutter/material.dart';



Widget CircularAvtarUser(AssetImage imgPath){

  
  return  CircleAvatar(
                  radius: 50.0, // Adjust the radius as needed
                  backgroundImage:imgPath, // Replace with your image path
                  backgroundColor: Colors.transparent,
                  foregroundColor: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 2.0,
                      ),
                    ),
                  ),
  );

}

//  user detailss

Widget UserDetails(){

  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start ,
            children: [
              Text("Chirag Kumar Yadav", style: TextStyle(fontSize: 19)),
              Text("chiragroy3030@gmail.com", style: TextStyle(fontSize: 14),),
              Text("91+ 62079XXXX" ,style: TextStyle(fontSize: 14)),
  
            ],
        
                          
          
    ),
  );
}


/// search product textfield
/// \
/// 
/// 


Widget SearchProductTextField(double height, double width){
  return Container(
                    width:width,
                    height: height,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(48.0),
                      color: Colors.white
                    ),
                    child: Padding(
                        padding: const EdgeInsets.only(top:20, left: 30),
                        child: TextField(
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(Icons.search, size:40),
                            hintText: "Search Your Product"
                                         
                            
                          ),
                         ),
                      ),
                    
                   );
}
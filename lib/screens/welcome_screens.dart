import 'package:flutter/material.dart';
//import 'package:resi_gestion_app/screens/home_page.dart';
import 'package:resi_gestion_app/welcome_login.dart';
class WelcomScreen extends StatefulWidget {
  @override
  _WelcomScreenState createState() => _WelcomScreenState();
}

class _WelcomScreenState extends State<WelcomScreen >{
  
  @override
  Widget build(BuildContext context){
    return Material(
      child: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(children: [ Stack(children: [
               Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
               ) , 
               Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(165, 74, 239, 0.774),
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(70)),
                 
),
               child: Center (child: Transform.translate(
      offset: Offset(0.0, -99.0),
       // Déplacer l'image vers le haut
      child: Transform.scale(
        scale: 1.55,
                child: Image.asset("assets/MM.jpg",
                ),
      ),
                                                  ),
                                    ) ,
),
      ],
      ),
      
                      Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.666 ,
             // decoration: BoxDecoration(color: Color.fromRGBO(165, 74, 239, 0.774),),
            ),
            ),
            Align(alignment: Alignment.bottomCenter,
                   child: Container(
                           width: MediaQuery.of(context).size.width,
                           height: MediaQuery.of(context).size.height / 2.666,
                           decoration: BoxDecoration(color: Colors.white,
                           borderRadius: BorderRadius.only(topLeft: Radius.circular(70),)),
                           child: Column(children: [Text("",
                           style: TextStyle(fontSize: 25,
                                         fontWeight: FontWeight.w600,
                                         letterSpacing: 1,
                                         wordSpacing: 2,),),
                                         SizedBox(height: 15),
                                         Padding(padding: EdgeInsets.symmetric(horizontal: 40),
                                         child: Text("Chez nous, chaque détails est pensé pour rendre votre quotidien exceptionnel",
                                         style: TextStyle(fontSize: 17,color: Colors.black.withOpacity(0.6),
                                         ),
                                         ),
                                         ),
                                         SizedBox(height: 60),
                                         Material(
                                          borderRadius: BorderRadius.circular(10),
  child: InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const WelcomeLogin()),
      );
    },
    child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            
            Color.fromRGBO(21, 139, 134, 0.773),
            Color.fromARGB(255, 26, 192, 204),
          ],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 80),
      child: Text(
        "c\'est parti !",
        style: TextStyle(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.bold,
          letterSpacing: 1,
        ),
      ),
    ),
  ),
)
                                         ],),
                   ),)
    ],),
    ),      
      );


    
    



    
  }

}
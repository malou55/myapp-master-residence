// ignore_for_file: override_on_non_overriding_member, annotate_overrides, prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
/*import 'package:resi_gestion_app/screens/demande.dart';
import 'package:resi_gestion_app/screens/evenements.dart';
import 'package:resi_gestion_app/screens/listes_demandes.dart';
import 'package:resi_gestion_app/screens/listes_membres.dart';*/

/*class HomePage extends StatefulWidget {
 

  @override
  /*Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        ),
    ),
  }*/
   
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

 /*  static const List<Widget> _pages = <Widget>[
    ListeMembres(),
    Evenements(),
    FaireDemande(),
    ListeDemandes(),
  ];*/

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comité de Résidence'),
      ),
      body: Center(
       // child:pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Membres',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Événements',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Faire une demande',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Listes des demandes',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}*/
// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  @override
  List catnames = [
     "Anounces",
     "Evénement",
     "Actualités",

  ];
  List <Color> catColors = [
// ignore: prefer_const_constructors
Color(0xFFFFCF2F),
// ignore: prefer_const_constructors
Color(0xFFFC7F7F),
// ignore: prefer_const_constructors
Color(0xFFC884F8),
  ];
  List <Icon> catIcons = [Icon(Icons.announcement, color: Colors.white,size: 30),
   Icon(Icons.event, color: Colors.white,size: 30),
    Icon(Icons.article, color: Colors.white,size: 30),

  ];

  HomePage({super.key});
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [Container(
        padding: EdgeInsets.only(top: 15, left: 15,right: 15,bottom: 10),
        // ignore: prefer_const_constructors
        decoration: BoxDecoration(color: Color.fromRGBO(21, 139, 134, 0.773),
        // ignore: prefer_const_constructors
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        ),
        child: Column(children: [Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Icon(Icons.home,
          size:30,
          color: Colors.white,),
          Icon(Icons.notifications,
          size:30,
          color: Colors.white,),
          ],
        ),
        SizedBox(height: 20),
        Padding(padding: EdgeInsets.only(left: 3, bottom: 15),
        child: Text("Bienvenue au Comité de  Votre Résidence",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600,
        letterSpacing: 1,
        wordSpacing: 2,
        color: Colors.white,),),),
        Container(margin: EdgeInsets.only(top: 5, bottom: 20),
        height: 55,
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Colors.white,
        borderRadius: BorderRadius.circular(10),),
        child: TextFormField(decoration: InputDecoration(border: InputBorder.none,
        hintText: "recherche",
        hintStyle: TextStyle(color: Colors.black.withOpacity(0.5),


        ),
        prefixIcon: Icon (Icons.search , size: 25,
        ),

        ),
        ),
        ),
        ],),
              ),
              Padding(padding:EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Column(children: [
                GridView.builder(
                  itemCount: catnames.length, 
                  shrinkWrap: true, physics: NeverScrollableScrollPhysics(), 
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
              childAspectRatio: 1.1,),
              itemBuilder :(context, index) {
                return Column(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(color: catColors[index],
                      shape: BoxShape.circle, 
                      ),
                      child: Center(child: catIcons[index],),
                    ),
                    SizedBox(height: 10),
                    Text(catnames[index],
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.7), ),)
                  ],
                );
              }, 
                
              
              
              
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("",
                style: TextStyle(fontSize: 20,
                fontWeight: FontWeight.w500,),)],
              ),
              SizedBox(height: 30),
              Padding(padding:EdgeInsets.only(left: 15) ,
              
              ),
              
              ],
              
              ), 

              )
              ],
              
              ),
              bottomNavigationBar: BottomNavigationBar(
                showSelectedLabels: true,
                iconSize: 32,
                selectedItemColor :Color.fromRGBO(21, 139, 134, 0.773) ,
                selectedFontSize: 18,
                unselectedItemColor: Colors.grey,
                items: [BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Acceuil'),
              BottomNavigationBarItem(icon: Icon(Icons.message ), label: 'Messagerie'),
              BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'favorite'),
               BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profil'),
              ],),

    );
    }}
      


import 'package:flutter/material.dart';
import 'package:resi_gestion_app/screens/welcome_screens.dart';

void main() {
  runApp(  MyApp());
}

class MyApp extends StatelessWidget {
  /*const MyApp({Key? key}) : super(key: key);*/
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home:WelcomScreen(),
    );
  }
}

/*class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Accueil'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Options',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Liste des membres'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MembersListPage()));
              },
            ),
            ListTile(
              title: Text('Événements'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EventsListPage()));
              },
            ),
            ListTile(
              title: Text('Faire une demande'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RequestPage()));
              },
            ),
            ListTile(
              title: Text('Liste des demandes'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RequestsListPage()));
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Contenu de la page d\'accueil'),
      ),
    );
  }
}

class MembersListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liste des membres'),
      ),
      body: Center(
        child: Text('Contenu de la liste des membres'),
      ),
    );
  }
}

class EventsListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Événements'),
      ),
      body: Center(
        child: Text('Contenu de la liste des événements'),
      ),
    );
  }
}

class RequestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Faire une demande'),
      ),
      body: Center(
        child: Text('Contenu de la page de demande'),
      ),
    );
  }
}

class RequestsListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liste des demandes'),
      ),
      body: Center(
        child: Text('Contenu de la liste des demandes'),
      ),
    );
  }
}*/
import 'package:componentes_app/pages/alert_page.dart';
import 'package:componentes_app/pages/avatar_page.dart';
import 'package:componentes_app/pages/home_page.dart';
import 'package:componentes_app/pages/home_temp.dart';
import 'package:componentes_app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('es',''),
      ],
      debugShowCheckedModeBanner: false,
      title: 'Componentes App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (settings){
        print('ruta llamada  ${settings.name}');
        return MaterialPageRoute(
          builder: (BuildContext context)=> AlertPage()
        );
      },
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//   final String title;
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: HomePage(),
//     );
//   }
// }

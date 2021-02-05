import 'package:componentes_app/pages/alert_page.dart';
import 'package:componentes_app/pages/animated_container_page.dart';
import 'package:componentes_app/pages/avatar_page.dart';
import 'package:componentes_app/pages/card_page.dart';
import 'package:componentes_app/pages/home_page.dart';
import 'package:componentes_app/pages/input_page.dart';
import 'package:componentes_app/pages/listview_page.dart';
import 'package:componentes_app/pages/slider_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationRoutes(){
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context)=> CardPage(),
    'animatedContainer': (BuildContext context)=> AnimatedContainerPage(),
    'inputs': (BuildContext context) => InputPages(),
    'sliders': (BuildContext context) => SliderPage(),
    'lisview': (BuildContext context) => ListViewBuilderPage(),
  };
}
import 'package:flutter/material.dart';
import 'models/models.dart';
import 'state/app_state.dart';
import 'screens/auth.dart';
import 'screens/passenger.dart';
import 'screens/driver.dart';
import 'widgets/common.dart';

void main(){runApp(const NgamiaApp());}
class NgamiaApp extends StatefulWidget{const NgamiaApp({super.key});@override State<NgamiaApp>createState()=>_NgamiaAppState();}
class _NgamiaAppState extends State<NgamiaApp>{final state=AppState();@override Widget build(BuildContext c){return MaterialApp(title:'Ngamia',debugShowCheckedModeBanner:false,theme:ThemeData(useMaterial3:true,colorScheme:ColorScheme.fromSeed(seedColor:kNgamia),scaffoldBackgroundColor:kBg,inputDecorationTheme:const InputDecorationTheme(filled:true)),home:state.user==null?AuthPage(state:state):state.user!.role==UserRole.passenger?PassengerHome(state:state):DriverHome(state:state));}}

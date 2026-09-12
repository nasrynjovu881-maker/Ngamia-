import 'package:flutter/material.dart';
import '../models/models.dart';
import '../state/app_state.dart';
import '../widgets/common.dart';

class AuthPage extends StatefulWidget { final AppState state; const AuthPage({super.key, required this.state}); @override State<AuthPage> createState()=>_AuthPageState(); }
class _AuthPageState extends State<AuthPage> {
  final phone = TextEditingController(); UserRole role = UserRole.passenger;
  @override Widget build(BuildContext c)=>Scaffold(body:SafeArea(child:Center(child:SingleChildScrollView(padding:const EdgeInsets.all(24),child:Column(children:[
    const CircleAvatar(radius:48,backgroundColor:kNgamia,child:Text('🐪',style:TextStyle(fontSize:45))), const SizedBox(height:16),
    const Text('NGAMIA',style:TextStyle(fontSize:34,fontWeight:FontWeight.w900)), const Text('Safari salama. Haraka. Rahisi.'), const SizedBox(height:32),
    SegmentedButton<UserRole>(segments:const [ButtonSegment(value:UserRole.passenger,label:Text('Abiria'),icon:Icon(Icons.person)),ButtonSegment(value:UserRole.driver,label:Text('Dereva'),icon:Icon(Icons.local_taxi))],selected:{role},onSelectionChanged:(s)=>setState(()=>role=s.first)),
    const SizedBox(height:18), TextField(controller:phone,keyboardType:TextInputType.phone,decoration:const InputDecoration(labelText:'Namba ya simu',prefixText:'+255 ',border:OutlineInputBorder(),prefixIcon:Icon(Icons.phone))),
    const SizedBox(height:18), SizedBox(width:double.infinity,child:FilledButton(onPressed:widget.state.loading?null:() async { if(phone.text.trim().isEmpty){ScaffoldMessenger.of(c).showSnackBar(const SnackBar(content:Text('Weka namba ya simu.')));return;} await widget.state.login(phone.text.trim(),role); },child:widget.state.loading?const CircularProgressIndicator():const Text('Endelea'))),
    const SizedBox(height:10), const Text('Kwa sasa login ni demo; OTP/backend itaunganishwa kwenye production.',textAlign:TextAlign.center,style:TextStyle(color:Colors.black54)),
  ]))));
}

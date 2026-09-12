import 'package:flutter/material.dart';

const kNgamia = Color(0xFFF59E0B);
const kBg = Color(0xFFF7F7F7);

class MapCard extends StatelessWidget {
  final String label;
  const MapCard({super.key, this.label = 'Ramani / GPS'});
  @override Widget build(BuildContext context) => Container(
    height: 230,
    decoration: BoxDecoration(color: const Color(0xFFE9EEF2), borderRadius: BorderRadius.circular(22), border: Border.all(color: Colors.black12)),
    child: Stack(children: [
      const Center(child: Icon(Icons.map_outlined, size: 82, color: Colors.black38)),
      Positioned(left: 18, top: 18, child: Chip(avatar: const Icon(Icons.gps_fixed, size: 17), label: Text(label))),
      const Positioned(right: 18, bottom: 18, child: FloatingActionButton.small(onPressed: null, child: Icon(Icons.my_location))),
    ]),
  );
}

class SectionTitle extends StatelessWidget { final String text; const SectionTitle(this.text,{super.key}); @override Widget build(BuildContext c)=>Padding(padding:const EdgeInsets.only(bottom:8),child:Text(text,style:const TextStyle(fontSize:18,fontWeight:FontWeight.w800))); }

String money(int v) => 'TZS ${v.toString().replaceAllMapped(RegExp(r'(\d)(?=(\d{3})+(?!\d))'), (m) => '${m[1]},')}';

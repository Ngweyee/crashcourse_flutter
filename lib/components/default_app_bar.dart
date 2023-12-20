import 'package:flutter/material.dart';
import '../styles.dart';

class DefaultAppBar extends AppBar{

  DefaultAppBar({super.key});

  @override
  final Widget title = Text("Tourism & Co.".toUpperCase(), style: Styles.navBarTitle);

  @override
  final Color backgroundColor = Colors.white;

  @override
  final bool centerTile = true;

  @override
  final double elevation = 0.5;


}
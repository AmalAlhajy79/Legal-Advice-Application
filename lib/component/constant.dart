import 'package:flutter/material.dart';

const Color firstBackColor=Color(0xff051365);
const Color secondBackColor=Color(0xff081C8E);
const Color thirdBackColor=Color(0xff556AEF);
const Color white=Color(0xffffffff);
const Color black=Color(0xff000000);
const Color yellow=Color(0xffFDEA00);
const BoxDecoration gradientBackground=BoxDecoration(
  gradient: LinearGradient(
    // begin: Alignment.topLeft,
    // end: Alignment.bottomRight,
    begin: Alignment(-1,-1),//topLeft          //Alignment(0,0) center
    end: Alignment(1,1),//bottomRight
    colors: [
      firstBackColor,
      secondBackColor,
      thirdBackColor,
    ],
  ),
);
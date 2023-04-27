import 'package:flutter/material.dart';

BoxShadow initalContainerShadow = const BoxShadow(
  color: Color.fromRGBO(0, 0, 0, 0.25),
  spreadRadius: 0,
  blurRadius: 10,
  offset: Offset(0, 5),
);

//Common boxshadwo used for all cards.
BoxShadow cardShadow = BoxShadow(
  color: Colors.grey.withOpacity(0.5),
  spreadRadius: 0,
  blurRadius: 10,
  offset: const Offset(2, 2),
);

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:high_paw/core/const/media_const.dart';

enum PetType {
  cat(
    displayName: "Kedi",
    iconData: FontAwesomeIcons.cat,
    imageUrl: ImageConst.transparentCat,
  ),
  dog(
    displayName: "Köpek",
    iconData: FontAwesomeIcons.dog,
    imageUrl: ImageConst.transparentDog,
  ),
  parrot(
    displayName: "Kuş",
    iconData: FontAwesomeIcons.crow,
    imageUrl: ImageConst.transparentParrot,
  ),
  fish(
    displayName: "Balık",
    iconData: FontAwesomeIcons.fish,
    imageUrl: ImageConst.transparentFish,
  );

  const PetType({
    required this.displayName,
    required this.iconData,
    required this.imageUrl,
  });

  final String displayName;
  final IconData iconData;
  final String imageUrl;
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:high_paw/domain/entities/pet.dart';
import 'package:high_paw/presentation/pages/pet_detail_page.dart';

class PetListItem extends StatelessWidget {
  const PetListItem({
    super.key,
    required this.animal,
  });

  final Pet animal;

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return PetDetailScreen(pet: animal);
          },
        ));
      },
      child: Padding(
        padding: const EdgeInsets.only(
          bottom: 10.0,
          right: 20.0,
          left: 20.0,
        ),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: <Widget>[
            Material(
              borderRadius: BorderRadius.circular(20.0),
              elevation: 4.0,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 20.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      width: deviceWidth * 0.4,
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Text(
                                animal.name ?? " - ",
                                style: TextStyle(
                                  fontSize: 24.0,
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(
                                animal.isFemale ?? false
                                    ? FontAwesomeIcons.venus
                                    : FontAwesomeIcons.mars,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            animal.scientificName ?? " - ",
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            '${animal.age} Yaşında',
                            style: const TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Icon(
                                FontAwesomeIcons.sackDollar,
                                color: Theme.of(context).primaryColor,
                                size: 25.0,
                              ),
                              Flexible(
                                child: Text(
                                  '${animal.collectedMoney}%',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              CircularProgressIndicator(
                                value:
                                    double.parse(animal.collectedMoney ?? '0') /
                                        100,
                                backgroundColor: Colors.grey,
                                semanticsLabel: 'Circular progress indicator',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: animal.backgroundColor,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  height: 190.0,
                  width: deviceWidth * 0.4,
                ),
                Hero(
                  tag: animal.name ?? " - ",
                  child: Image(
                    image: AssetImage(animal.imageUrl ?? " - "),
                    height: 220.0,
                    fit: BoxFit.fitHeight,
                    width: deviceWidth * 0.4,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

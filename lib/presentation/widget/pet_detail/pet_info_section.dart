import 'package:flutter/material.dart';
import 'package:high_paw/core/const/color_const.dart';
import 'package:high_paw/core/const/media_const.dart';
import 'package:high_paw/domain/entities/pet.dart';
import 'package:high_paw/presentation/pages/pet_detail_page.dart';

class PetInfoSection extends StatelessWidget {
  const PetInfoSection({
    super.key,
    required this.pet,
  });

  final Pet pet;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: pet.backgroundColor ?? Colors.white,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 22.0,
          vertical: 30.0,
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            PetProfileInfo(animal: pet),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DetailItem(
                  color: ColorConst.green,
                  valueText: (pet.isFemale ?? false) ? "Female" : "Male",
                  keyText: 'Cinsiyet',
                ),
                DetailItem(
                  color: ColorConst.orange,
                  valueText: '${pet.age} Years',
                  keyText: 'Yaş',
                ),
                DetailItem(
                  color: ColorConst.blue,
                  valueText: "${pet.weight} Kg",
                  keyText: 'Ağırlık',
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                const CircleAvatar(
                  radius: 22.0,
                  backgroundImage: AssetImage(ImageConst.transparentCat),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Maya Berkovskaya',
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            'May 25, 2019',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      const Text(
                        'Sahibi',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              'My job requires moving to another country. I don\'t have the opportunity to take the cat with me. I am looking for good people who will shelter Sola.  I don\'t have the opportunity to take the cat with me. I am looking for good people who will shelter Sola.  I don\'t have the opportunity to take the cat with me. I am looking for good people who will shelter Sola.  I don\'t have the opportunity to take the cat with me. I am looking for good people who will shelter Sola.  I don\'t have the opportunity to take the cat with me. I am looking for good people who will shelter Sola.  I don\'t have the opportunity to take the cat with me. I am looking for good people who will shelter Sola.  I don\'t have the opportunity to take the cat with me. I am looking for good people who will shelter Sola.  I don\'t have the opportunity to take the cat with me. I am looking for good people who will shelter Sola.',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w600,
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

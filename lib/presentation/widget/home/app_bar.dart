import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:open_peeps/open_peeps.dart';

import '../../pages/history_page.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        const Column(
          children: <Widget>[
            Text(
              'Hoşgeldiniz',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22.0,
              ),
            ),
          ],
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const HistoryPage(),
              ),
            );
          },
          child: CircleAvatar(
            radius: 20.0,
            // backgroundImage: AssetImage(ImageConst.transparentCat),
            child: PeepAvatar.fromPeep(
              size: 30,
              peep: PeepGenerator().generate(),
            ),
          ),
        )
      ],
    );
  }
}

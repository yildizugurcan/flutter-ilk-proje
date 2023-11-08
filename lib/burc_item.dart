import 'package:flutter/material.dart';
import 'package:flutter_proje/burc_detay.dart';
import 'package:flutter_proje/model/burc.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({required this.listelenenBurc, super.key});

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListTile(
            onTap: () {
              Navigator.pushNamed(context, "/burcDetay",
                  arguments: listelenenBurc);
            },
            leading: ClipOval(
              child: Image.asset(
                "images/" + listelenenBurc.burcKucukResim,
              ),
            ),
            title: Text(
              listelenenBurc.burcAdi,
              style: myTextStyle.headlineSmall,
            ),
            subtitle: Text(
              listelenenBurc.burcTarihi,
              style: myTextStyle.titleMedium,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.pink,
            ),
          ),
        ),
      ),
    );
  }
}

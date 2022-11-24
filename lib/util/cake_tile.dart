import 'package:flutter/material.dart';

class CakeTile extends StatelessWidget {
  final String cakeImagePath;
  final String cakeName;
  final String cakeText;
  final String cakePrice;

  CakeTile({
    required this.cakeImagePath,
    required this.cakeName,
    required this.cakeText,
    required this.cakePrice,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0, bottom: 200),
      child: Container(
        padding: EdgeInsets.all(20),
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //gambar makanan
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(cakeImagePath),
            ),

            //nama makanan
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cakeName,
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    cakeText,
                    style: TextStyle(color: Colors.grey[700]),
                  )
                ],
              ),
            ),

            //harga
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Rp. ' + cakePrice),
                  Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Icon(Icons.add)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';


class HeaderTile extends StatelessWidget {
  const HeaderTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30, left: 12, right: 12, bottom: 30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Welcome, ',
                        style: TextStyle(
                            fontSize: 25,
                            color: Color(0xFF4A4A4A)),
                      ),
                      const Text(
                        'Mina ',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),

                ],
              ),
              CircleAvatar(
                backgroundColor: Theme.of(context).primaryColor,
                radius: 30,
                backgroundImage: const AssetImage('assets/images/Ellipse 1641.png'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

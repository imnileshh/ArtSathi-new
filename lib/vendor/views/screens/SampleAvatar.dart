import 'package:flutter/material.dart';

class SampleAvatar extends StatelessWidget {
  const SampleAvatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.0,
      height: 120.0,
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black,
      ),
      child: CircleAvatar(
        backgroundImage: AssetImage("assets/images/logo/user.png"),
      ),
    );
  }
}

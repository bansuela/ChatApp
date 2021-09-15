import 'package:flutter/material.dart';

class User {
  num id;
  String firstName;
  String lastName;
  String iconUrl;
  Color bgColor;
  User(this.id, this.firstName, this.lastName, this.iconUrl, this.bgColor);

  static List<User> generateUsers() {
    return [
      User(1, 'Irish', 'Maglasang', 'assets/images/user1.png',
          Color(0xFFFDBECB)),
      User(2, 'Melchor', 'Bansuela', 'assets/images/user2.png',
          Color(0xFFFED6C4)),
      User(3, 'Cherry', 'Bansuela', 'assets/images/user3.png',
          Color(0xFFA8E4F2)),
      User(
          4, 'James', 'Bansuela', 'assets/images/user4.png', Color(0xFFFFE5A7)),
      User(
          5, 'Arthur', 'Salceda', 'assets/images/user5.png', Color(0xFFC3C1E6)),
      User(6, 'Garry', 'Sepe', 'assets/images/user6.png', Color(0xFFFD95A2)),
    ];
  }
}

import 'package:chat/models/user.dart';
import 'package:flutter/cupertino.dart';

class Message {
  User user;
  String lastMessage;
  String lastTime;
  bool isContinue;
  Message(this.user, this.lastMessage, this.lastTime,
      {this.isContinue = false});

  static List<Message> generateHomePageMessages() {
    return [
      Message(users[0], 'Hello, have you recieved my messages? ', '18:32'),
      Message(users[1], 'Whats up bud wanna hangout sometimes? ', '12:02'),
      Message(
          users[2],
          'Can i call you? I just have to tell you something important',
          '07:14'),
      Message(
          users[3],
          'You need to work your flutter project you havent started yet',
          '09:01'),
      Message(
          users[4],
          'Deadlines almost over so get you ass up and do the damn thing',
          '13:02'),
      Message(users[5], 'Well Goodluck you\'re gonna need the help', '22:20'),
    ];
  }

  static List<Message> generateMessagesFromUser() {
    return [
      Message(users[0], 'Hey no I did not recieve any message', '18:35'),
      Message(me, 'Can I send it back to you?', '18:36'),
      Message(users[0], 'Just send it back to me', '18:37'),
      Message(me, 'Okay wait I\'ll send it back', '18:38'),
      Message(users[0], 'Okay', '18:39')
    ];
  }
}

var users = User.generateUsers();
var me = User(0, 'Jim', 'Bansuela', 'assets/images/user0.png', Color(0xFFFFFF));

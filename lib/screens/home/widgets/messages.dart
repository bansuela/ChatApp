import 'package:chat/constants/colors.dart';
import 'package:chat/models/message.dart';
import 'package:chat/screens/detail/detail.dart';
import 'package:flutter/material.dart';

class Messages extends StatelessWidget {
  final messagesList = Message.generateHomePageMessages();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: _buildMessages(),
      ),
    );
  }

  Widget _buildMessages() {
    return ListView.separated(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) => _buildMessage(context, index),
        separatorBuilder: (_, index) => SizedBox(
              height: 30,
            ),
        itemCount: messagesList.length);
  }

  Widget _buildMessage(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailPage(messagesList[index])));
      },
      child: Row(
        children: [
          Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: messagesList[index].user.bgColor,
                  shape: BoxShape.circle),
              child: Image.asset(
                messagesList[index].user.iconUrl,
                width: 60,
              )),
          SizedBox(width: 10),
          Flexible(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${messagesList[index].user.firstName} ${messagesList[index].user.lastName}',
                      style: TextStyle(
                          fontSize: 16,
                          color: kPrimarydark,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      messagesList[index].lastTime,
                      style: TextStyle(color: kPGreyLight),
                    )
                  ],
                ),
                SizedBox(height: 5),
                Text(
                  messagesList[index].lastMessage,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: kPrimarydark),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

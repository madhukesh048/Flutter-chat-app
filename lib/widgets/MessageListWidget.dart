import 'package:flutter/material.dart';
import 'package:chatapp/widgets/MessageItemWidget.dart';

class MessageListWidget extends StatelessWidget {
  final ScrollController listScrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(10),
      itemBuilder: (context, index) => MessageItemWidget(index),
      itemCount: 20,
      reverse: true,
      controller: listScrollController,
    );
  }
}

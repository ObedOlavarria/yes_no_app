// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widget/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widget/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widget/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          // ignore: unnecessary_const
          padding: EdgeInsets.all(6.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://i.pinimg.com/736x/fd/05/66/fd0566792b78c1d6931b698bfdd7cce1.jpg'),
          ),
        ),
        title: const Text('Mi Amor <3'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  // ignore: avoid_types_as_parameter_names
  Widget build(BuildContext) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          children: [
            Expanded(child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
              return (index % 2 == 0)
              ? const MyMessageBubble()
              : const HerMessageBubble();
            })),
            
            //menssage box
            const MessageFieldBox()
          ],
        ),
      ),
    );
  }
}

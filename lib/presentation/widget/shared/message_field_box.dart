import "package:flutter/material.dart";

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNode = FocusNode();

    final OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40),
    );

    final InputDecoration inputDecoration = InputDecoration(
      hintText: 'End your menssage as "??"',
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      suffixIcon: IconButton(
        icon: const Icon(Icons.send_outlined),
        onPressed: () {
          final textValue = textController.value.text;
          print('button: $textValue');
          textController.clear();
        },
      ),
    );
    return TextField(
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onSubmitted: (value) {
        print('Submit value $value');
        textController.clear();
        focusNode.requestFocus();
      },
    );
  }
}


    //final colors = Theme.of(context).colorScheme;
    //return TextFormField(
    //decoration: InputDecoration(
    //enabledBorder: OutlineInputBorder (
    //borderSide: BorderSide(color: colors.primary),
    //borderRadius: BorderRadius.circular(20)
    //),
    //filled: true,
    //suffixIcon: IconButton(
    //icon: const Icon(Icons.send_outlined), onPressed: () {

    //}
    //)
    //),
    //);

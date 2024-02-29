enum FromWho {mine, hers}

class Message {
  final String text;
  final String? imageUlr;
  final FromWho fromWho;

  Message ({
    required this.text,
    this.imageUlr,
    required this.fromWho
  });
}
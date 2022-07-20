import 'package:flutter/material.dart';

class CustomCronometroButton extends StatelessWidget {
  final String texto;
  final IconData icone;
  final void Function()? tempo;

  const CustomCronometroButton({
    Key? key,
    required this.texto,
    required this.icone,
    this.tempo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.black,
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 5,
        ),
        textStyle: TextStyle(
          fontSize: 10,
        ),
      ),
      onPressed: tempo,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              icone,
              size: 15,
            ),
          ),
          Text(texto),
        ],
      ),
    );
  }
}

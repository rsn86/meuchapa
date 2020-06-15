import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PerguntaWidget extends StatelessWidget {
  final Widget pergunta;
  const PerguntaWidget({Key key, @required this.pergunta}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final dateFormater = DateFormat('EEEE, HH:mm');
    return ListTile(
      isThreeLine: true,
      leading: Container(
        decoration: BoxDecoration(
          //shape: BoxShape.circle,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: Colors.yellow,
            width: 2,
          ),
        ),
        child: CircleAvatar(
          radius: 30,
          backgroundColor: Colors.white,
          child: Image.asset('assets/images/chapa.png'),
        ),
      ),
      title: Text(
        dateFormater.format(DateTime.now()),
        style: TextStyle(fontSize: 9, color: Colors.black87),
        textAlign: TextAlign.justify,
      ),
      subtitle: pergunta,
    );
  }
}

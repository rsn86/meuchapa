import 'package:flutter/material.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';

class AlternativasWidget extends StatelessWidget {
  final Map<String, String> alternativas;
  const AlternativasWidget({Key key, @required this.alternativas}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      isThreeLine: true,
      // leading: Container(
      //   decoration: BoxDecoration(
      //     //shape: BoxShape.circle,
      //     borderRadius: BorderRadius.circular(30),
      //     border: Border.all(
      //       color: Colors.yellow,
      //       width: 2,
      //     ),
      //   ),
      //   child: CircleAvatar(
      //     radius: 30,
      //     backgroundColor: Colors.white,
      //     child: Container(),
      //   ),
      // ),
      leading: CircleAvatar(
        radius: 30,
        backgroundColor: Theme.of(context).canvasColor,
        child: Container(),
      ),
      title: CustomRadioButton(
        buttonColor: Colors.yellow,
        buttonLables: alternativas.keys.toList(),
        buttonValues: alternativas.values.toList(),
        radioButtonValue: (values) => print(values),
        horizontal: false,
        width: 260 / alternativas.length,
        selectedColor: Colors.deepOrange,
        enableShape: true,
        elevation: 3,
      ),
      subtitle: Divider(
        color: Colors.yellow,
        thickness: 5,
      ),
    );
  }
}

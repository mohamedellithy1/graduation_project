import 'package:flutter/material.dart';

class RememberMe extends StatefulWidget {
  final bool select;
  const RememberMe({super.key , this.select = false});

  @override
  State<RememberMe> createState() => _RememberMeState();
}

class _RememberMeState extends State<RememberMe> {
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Checkbox(
            value: widget.select ,
            onChanged: (select){
              print('fsssssssssss');
            }
        )
      ],
    );
  }
}

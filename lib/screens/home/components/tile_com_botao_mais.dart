import 'package:flutter/material.dart';

import '../../../constants.dart';

class TileComBotaoMais extends StatelessWidget {
  const TileComBotaoMais({
    this.titulo,
    this.press,
    Key key,
  }) : super(key: key);
  final String titulo;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TilePersonalizada(
            texto: titulo,
          ),
          Spacer(),
          FlatButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: kPrimaryColor,
            onPressed: press,
            child: Text(
              "Mais",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

class TilePersonalizada extends StatelessWidget {
  const TilePersonalizada({
    Key key,
    this.texto,
  }) : super(key: key);
  final String texto;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              texto,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: kDefaultPadding / 4),
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}

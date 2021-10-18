import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/header_com_campo_de_texto.dart';
import 'package:plant_app/screens/home/components/plantas_disponiveis.dart';
import 'package:plant_app/screens/home/components/plantas_recomendadas.dart';
import 'package:plant_app/screens/home/components/tile_com_botao_mais.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderComCampoDeBusca(size: size),
          TileComBotaoMais(
            titulo: "Recomendado",
            press: () {},
          ),
          PlantasRecomendadas(),
          TileComBotaoMais(
            titulo: "Disponíveis",
            press: () {},
          ),
          PlantasDisponiveis(),
          SizedBox(
            height: kDefaultPadding,
          ),
        ],
      ),
    );
  }
}

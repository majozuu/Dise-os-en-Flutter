import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubtitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          _crearImagen(),
          _crearTexto(),
          _crearAcciones(),
          _crearTextoLargo(),
          _crearTextoLargo(),
          _crearTextoLargo(),
          _crearTextoLargo(),
          _crearTextoLargo(),
          _crearTextoLargo(),
        ],
      ),
    ));
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      child: Image(
          image: NetworkImage(
              'https://photographycourse.net/wp-content/uploads/2014/11/Landscape-Photography-steps.jpg'),
          height: 200.0,
          fit: BoxFit.cover),
    );
  }

  Widget _crearTexto() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Paisaje',
                    style: estiloTitulo,
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text('Paisaje del internet', style: estiloSubtitulo),
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text(
              '41',
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _crearAccion(Icons.call, 'CALL'),
        _crearAccion(Icons.near_me, 'ROUTE'),
        _crearAccion(Icons.share, 'SHARE'),
      ],
    );
  }

  Widget _crearAccion(IconData icon, String texto) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue, size: 40.0),
        SizedBox(
          height: 5.0,
        ),
        Text(texto, style: TextStyle(fontSize: 15.0, color: Colors.blue))
      ],
    );
  }

  Widget _crearTextoLargo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Text(
          'Occaecat qui deserunt cillum tempor ad. Consectetur sunt mollit mollit dolor duis minim ad qui pariatur id irure ex. Magna non esse cupidatat nisi commodo in. Ut duis nulla duis irure sunt incididunt sunt duis. Consectetur amet anim consectetur duis adipisicing ex ullamco eiusmod laboris ea ullamco irure.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}

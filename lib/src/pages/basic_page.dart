import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final titleStyle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final subtitleStyle =
      TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal);
  final descriptionStyle =
      TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _createImage(context),
            _createTitleComponent(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _createAccions(Icons.call, 'Contactar'),
                _createAccions(Icons.shopping_cart, 'Comprar'),
                _createAccions(Icons.share, 'Compartir')
              ],
            ),
            _createDescription(),
            _createDescription(),
            _createDescription(),
            _createDescription(),
          ],
        ),
      ),
    );
  }

  Widget _createImage(BuildContext context) {
    return Stack(
      children: [
        Image(
          width: double.infinity,
          image: NetworkImage(
            'https://champyblog.com/wp-content/uploads/2019/06/schnauzer-miniatura-15.jpg',
          ),
          fit: BoxFit.cover,
          height: 250,
        ),
        SafeArea(
          child: GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'scroll'),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.arrow_back,
                size: 32,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _createTitleComponent() {
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
                    'Schnauzer miniatura',
                    style: titleStyle,
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'Color negro/plata',
                    style: subtitleStyle,
                  )
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.amberAccent,
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

  Widget _createAccions(IconData icon, String text) {
    return Row(
      children: [
        Column(
          children: [
            InkWell(
              onTap: () {},
              child: Icon(
                icon,
                color: Colors.cyan,
                size: 30.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(text,
                style: TextStyle(
                  color: Colors.cyan,
                ))
          ],
        ),
      ],
    );
  }

  Widget _createDescription() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
        child: Text(
          'El schnauzer miniatura es un perro pequeño, elegante, compacto, robusto y de perfil cuadrado, que como sus hermanos se destaca por las densas cejas sobre sus ojos y la poblada barba que presenta.\nSu espalda y su lomo del schnauzer miniatura son fuertes y cortos, la grupa es ligeramente redondeada, el pecho es moderadamente ancho, pero profundo, y el vientre es sutilmente recogido.\nLas orejas en forma de “V” se doblan y caen hacia al frente, descansando sus bordes internos sobre las mejillas. Antiguamente se cortaban para mantenerlas erectas, pero hoy en día esa costumbre se ha prohibido en muchos países por tratarse de un acto cruel que perjudica considerablemente la salud del animal.',
          style: descriptionStyle,
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}

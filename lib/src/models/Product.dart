import 'package:flutter/material.dart';

class Product {
  final String image, title, type, subtype, description;
  final int price, id;
  final Color color;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.type,
    this.subtype,
    this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Shot Europeo",
      price: 30,
      type: 'Brandi',
      subtype: '',
      description: 'Shot hecho con brandi y de fácil preparación y sabor suave',
      image: "assets/images/shotEuropeo.png",
      color: Color(0xFF320900)),
  Product(
      id: 2,
      title: "Cuba Libre",
      price: 30,
      type: 'Tequila',
      subtype: '',
      description: 'Cuba que toda persona conoce con tequila y jugo de toronja',
      image: "assets/images/cubaLibre.png",
      color: Color(0xFF8E5008)),
  Product(
      id: 3,
      title: "Mojito Cubano ",
      price: 30,
      type: 'Ron',
      subtype: 'blanco',
      description: 'Mojito con limón agua mineral y menta fresca',
      image: "assets/images/mojitoCubano.png",
      color: Color(0xFF2ECD05)),
  Product(
      id: 4,
      title: "Pasión de Verano",
      price: 60,
      type: 'Ron',
      subtype: 'dorado',
      description: 'Bebida rosa con un color que hace honor como afrodisiaco con jugo de fruta de la pasión',
      image: "assets/images/pasionDeVerano.png",
      color: Color(0xFFE5A481)),
  Product(
      id: 5,
      title: "Absolute Blue",
      price: 70,
      type: 'Vodka',
      subtype: 'rosa',
      description: 'Bebida fuerte con tono y sabor a canela rosa con naranja y pomelo ',
      image: "assets/images/absolutBlue.png",
      color: Color(0xFF0B1986)),
  Product(
      id: 6,
      title: "Cámara de gas",
      price: 50,
      type: 'Vodka',
      subtype: '',
      description: 'Shot de vodka que se prepara con vodka y tequila con un poco de jugo de limón o pomelo ',
      image: "assets/images/camaraDeGas.png",
      color: Color(0xFF179EB5),
  ),
];

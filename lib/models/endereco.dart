import 'package:flutter/material.dart';

class Endereco{
  final String? estado;
  final String? cidade;
  final String? cep;
  final String? rua;
  final String? bairro;
  final String? complemento;

  const Endereco({
    @required this.estado,
    @required this.cidade,
    @required this.cep,
    @required this.rua,
    @required this.bairro,
    @required this.complemento
  });
}
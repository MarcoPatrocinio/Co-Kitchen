import 'package:co_kitchen/models/endereco.dart';
import 'package:flutter/material.dart';

class User {

  final String? email;
  final String? password;
  final String? nome;
  final Endereco? endereco;
  final String? tipo;

  const User({
    @required this.email,
    @required this.password,
    @required this.nome,
    @required this.tipo,
    this.endereco,
  });
}
import 'dart:io';

import 'classes/cliente.dart';
import 'classe_abstrata/pessoa.dart';
import 'classes/fornecedor.dart';
import 'classes/funcionarios.dart';
import 'classes/repositorio_cliente.dart';

var repositorioCliente = new RepositorioCliente();

void main(List<String> args) {
  var opcao;

  do {
    print("MENU: ");
    print("1 - Cadastrar cliente masculino");
    print("2 - Cadastrar cliente feminino");
    print("3 - Listar cliente");
    print("4 - Sair");
    
    opcao = int.parse(stdin.readLineSync()!);

    switch(opcao) {
      case 1:
        cadastrarClienteMasculino();
      break;
      case 2:
        cadastrarClienteFeminino();
      break;
      case 3:
        repositorioCliente.listar();
      break;
      default:
    }

  } while (opcao != 4);
}

cadastrarClienteMasculino() { 
  print("Escreva o nome do cliente:");
  final nome = stdin.readLineSync()!;
  print("Escreva o e-mail do cliente:");
  final email = stdin.readLineSync()!;
  print("Escreva a idade do cliente:");
  final idade = int.parse(stdin.readLineSync()!);

  var cliente = new Cliente.masculino(nome: nome, idade: idade, email: email, status: "está na loja");

  var fornecedor = new Fornecedor(nome, idade, 'masculino', email);

  var funcionario = new Funcionario(nome, idade, 'masculino', email);

  fornecedor.abastecer();
  fornecedor.comprar('Coca cola');
  funcionario.abastecer();
  cliente.comprar('chocolate');

  print(cliente.status);
  cliente.desativar();
  print(cliente.status);

  repositorioCliente.cadastrar(cliente);

  print("\nOs dados cadastrados são:");
  print(cliente.toString());
  print("\n");
}

cadastrarClienteFeminino() { 
  print("Escreva o nome da cliente:");
  final nome = stdin.readLineSync()!;
  print("Escreva o e-mail da cliente:");
  final email = stdin.readLineSync()!;
  print("Escreva a idade da cliente:");
  final idade = int.parse(stdin.readLineSync()!);

  var cliente = new Cliente.feminino(nome: nome, idade: idade, email: email, status: "está na loja");

  cliente.adicionarSobrenome("Souza");
  cliente.fazerAniversarioLambida();

  repositorioCliente.cadastrar(cliente);

  print("\nOs dados cadastrados são:");
  print(cliente.toString());
  print("\n");
}
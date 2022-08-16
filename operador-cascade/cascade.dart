import '../classe_abstrata/pessoa.dart';

void main(List<String> args) {

  var cliente = new Cascade(nome: 'Iris', idade: 23, email: 'iris@hotmail.com', status: "está na loja", sexo: 'Feminino');

  print(cliente.nome);
  print(cliente.email);
  print(cliente.idade);
  print(cliente.sexo);

  print(cliente.status);
  cliente.desativar();
  print(cliente.status);
  
}

class Cascade extends Pessoa {

    String status;
    Cascade(
      {required String nome, 
      required int idade,
      required String sexo, 
      required String email,
      required String status}) : this.status = status, super(nome: nome, idade: idade, sexo: sexo, email: email);
    
      @override
      void desativar() {
        this.status = "cascade status off";
      }
}
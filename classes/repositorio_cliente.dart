import '../interface/repositorio.dart';

class RepositorioCliente implements Repositorio {
  @override
  List listaClientes = [];

  @override
  void cadastrar(clientes) {
    listaClientes.add(clientes);
  }

  @override
  void listar() {
    print("A lista de clientes é composta por:");
    print(listaClientes.map((cliente) {
    return cliente.nome;
  }));
  }

}
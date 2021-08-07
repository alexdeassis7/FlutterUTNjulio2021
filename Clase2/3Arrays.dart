void main() {
  var listaNumeros = [1, 2, 3, 4, 5];

  print("cuantos datos tiene mi lista de numeros  : ");
  print(listaNumeros.length);

  var listaPares = [2, 4, 6, 8];
  print(listaPares.length);

  print('Elemento de la posicion 2 del vector : ${listaPares[2]}');

  var listaImpares = [3, 5, 7];
  print('lista impares en en posisicion 1 : ${listaImpares[1]}');

//editamos un elemento del array
  listaImpares[1] = 9;
  print('lista impares en en posisicion 1 : ${listaImpares[1]}');
}

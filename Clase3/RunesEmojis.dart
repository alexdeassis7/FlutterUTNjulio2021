//utilizamos los emojis en nuestro codigo dart para poder mostrarlos en un appa flutter
// ejemplo :

main(List<String> args) {
  var coche = '\u{1F697}';

  print(coche);

  //creamos un listado de Emojis

  Runes iconos = new Runes('\u{270B} \u{2712} \u{1F6A4}');

  print(new String.fromCharCodes(iconos));
}

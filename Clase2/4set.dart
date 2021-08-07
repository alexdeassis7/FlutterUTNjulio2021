void main(List<String> args) {
  Set<String> sistemasOperativos = {'Windows', 'MacOS', 'Ubuntu', 'Centos'};
  Set<String> sistemasOperativosMobiles = {'Android', 'IOS'};

  print(sistemasOperativos);

  //agrego un elemento a la coleccion de datos (set)
  sistemasOperativos.add('RedHat');
  print(sistemasOperativos);

  sistemasOperativos.addAll(sistemasOperativosMobiles);
  print(sistemasOperativos);

  //MAPAS
  //declaro un mapo con 3 elementos
  var idiomas = {
    //Clave : valor
    'es': 'Español',
    'en': 'Ingles',
    'fr': 'frances'
  };

  print(idiomas);
  print(idiomas['es']);
  //si intentamos ver una key que no exite retorna null
  print(idiomas['esasd']);

  var nuevoIdioma = {'ch': 'Chino'};
  idiomas.addAll(nuevoIdioma);

  print(idiomas);

  var alumnos = Map();
  alumnos[1] = 'alex';
  alumnos[2] = 'maxi';
  alumnos[3] = 'Ignacio';
  alumnos[4] = 'Ivo';
  print(alumnos);
}

class Persona {
  //si utilizamos el guion bajo al principio del nombre de nuestro atributo se comvierte en privado  -> principio de POO Encapsulamiento
  String _nombre, _apellido;

  Persona(this._nombre, this._apellido);

  void muestraPersona(Persona p) {
    print(p._nombre);
    print(p._apellido);
  }

  //Getters Funciones que sirven para conocer el estado de un atributo
  String getNombre() => _nombre;
  String getApellido() => _apellido;

  //Setters Procedimientos : sirven para modificar el estado de un atributo de la clase
  void setNombre(String nombre) {
    _nombre = nombre;
  }

  void setApellido(String apellido) {
    _apellido = apellido;
  }

  //get y set con nombres ficticios
  String get nombre => _nombre;
  String get apellido => _apellido;
  set nombre(String nombre) => _nombre = nombre;
  set apellido(String apellido) => _apellido = apellido;

  String nombreCompleto() {
    return '$_nombre $_apellido';
  }

  get nameCompleto => '$_nombre $_apellido';
}

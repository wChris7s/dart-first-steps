void main () async {
  print("Inicio del programa");
  
  try {
  	final value = await httpGet("http://caca.com");
    print(value);
  } catch(err) {
    print("Err: $err");
  }
  
  print("Fin del programa");
}

Future<String> httpGet(String url) async {
  // Transforma los future a código sincrono y secuencial.
  await Future.delayed(const Duration(seconds: 1));
  throw "Error en la petición";
  // return 'Tenemos un valor de la petición';
}
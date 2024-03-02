void main() {
  print("Inicio");

  httpGet("aa").then((value){
    print(value);
  }).catchError((err){
    print("error: $err");
  });

  print("Fin del programa");
}

Future httpGet(String url) {
  return Future.delayed(const Duration(seconds: 1),(){
    throw("Error en la petición Http");
    // return "Respueta de la petición Http";
  });
}
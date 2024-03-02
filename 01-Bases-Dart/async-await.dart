void main() async {
  print("Inicio");

  try {
    final value = await httpGet("url");
    print("Exito: $value");

  }on Exception catch(err) {

    print("Tenemos una excepcion: $err");

  }catch (error) {
    print("Oops! algo terrible pasó: $error");

  }finally {
    print("Final del try y catch");
  }

  print("Fin del programa");
}

Future<String> httpGet(String url) async {

  await Future.delayed(const Duration(seconds: 1));

  throw Exception("No hay parámetros en la url");

  // throw 'Error en la petición';

  return  "Respuesta de la URL: $url";

}
void main () {

  emitNumber()
    .listen((event) {
      print("Steam value: $event");
    });

}

Stream emitNumber() async* {

  final valuesToEmit = [1,2,3,4,5];

  for (int i in valuesToEmit) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }

}
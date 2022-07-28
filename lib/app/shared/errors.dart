class NotFoundException implements Exception {
  final String message;

  NotFoundException({this.message = 'Ops, ocorreu um erro. Tente novamente.'});
}

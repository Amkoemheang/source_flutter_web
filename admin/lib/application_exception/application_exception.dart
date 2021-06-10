class ApplicationException implements Exception{
  final _msg;
  final _prefix;
  ApplicationException([this._msg,this._prefix]);
  String toString(){
    return "$_prefix$_msg";
  }
}
class FetchDataException extends ApplicationException {
  FetchDataException([String message])
      : super(message, "Error During Communication: ");
}

class BadRequestException extends ApplicationException {
  BadRequestException([message]) : super(message, "Invalid Request: ");
}

class UnauthorisedException extends ApplicationException {
  UnauthorisedException([message]) : super(message, "Unauthorised: ");
}

class InvalidInputException extends ApplicationException {
  InvalidInputException([message]) : super(message, "Invalid Input: ");
}

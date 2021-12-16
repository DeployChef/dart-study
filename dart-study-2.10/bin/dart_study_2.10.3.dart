void main(List<String> arguments) {
    var intConverter = ToStringConverter<int>();
    var genericConverter = GenericMethodStringConverter();
    var str = intConverter.convertToString(123);
    //var str2 = intConverter.convertToString("awd"); Не тип для уточненного дженерика
    var str2 = genericConverter.convertToString(123);
    var str3 = genericConverter.convertToString(true); //берет тип в зависимости от параметра
    print(str);
    print(str2);
    print(str3);
}

class ToStringConverter<T> {
  String convertToString(T value) {
    return value.toString();
  }
}

class GenericMethodStringConverter {
  String convertToString<T>(T value) {
    return value.toString();
  }
}
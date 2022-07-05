import '../specifications/name_specification.dart';
import 'i_value_object.dart';

class Name implements IValueObject {
  String value;

  Name([this.value = '']);

  @override
  String errorMessage = 'Error value';

  @override
  // TODO: implement isValid
  bool get isValid => NameSpecification.isSatisfiedBy(value);

  @override
  String? hasError() => isValid ? null : errorMessage;
}

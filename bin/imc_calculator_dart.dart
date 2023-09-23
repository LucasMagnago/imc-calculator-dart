import 'package:imc_calculator_dart/Models/Person.dart';
import 'package:imc_calculator_dart/Utils/Utils.dart';
import 'package:imc_calculator_dart/imc_calculator_dart.dart'
    as imc_calculator_dart;

void main(List<String> arguments) {
  print('---CALCULADORA DE IMC---');

  var option = readFromUserWithText(
      'Escolha uma opção: \n1. Cadastrar pessoa \n2. Sair');
  while (option != "2") {
    String name = readFromUserWithText('Digite o nome: ');
    double? height = double.tryParse(readFromUserWithText('Digite a altura: '));
    double? weight = double.tryParse(readFromUserWithText('Digite o peso: '));

    Person person = Person(name, height ?? 0, weight ?? 0);
    double imc = Person.calcImc(person.getHeight(), person.getWeight());

    print('IMC: $imc');

    print('');
    option = readFromUserWithText(
        'Escolha uma opção: \n1. Cadastrar pessoa \n2. Sair');
  }
}

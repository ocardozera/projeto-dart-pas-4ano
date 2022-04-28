import 'dart:io';

/**
 * 
Exercício III
Nesta atividade, o objetivo é fazer com que você entenda o contexto.
Pensar em um projeto único 
Fazer um exemplo seu
Fazer comentários de tudo que entendeu
 * 
 */

void show() {
  exibeMenu();

  print("Digite a opção desejada: ");
  var opcaoEscolhida = int.parse(stdin.readLineSync()!);

  print("Entre com o valor  para conversão: ");
  var valorConversao = double.parse(stdin.readLineSync()!);

  if (opcaoEscolhida == 1) {
    double valorConvertido = calculaMetroParaCentimetro(valorConversao);

    print(
        'Seu valor convertido de Metros para Centimetros, é: $valorConvertido');
  } else if (opcaoEscolhida == 2) {
    double valorConvertido = calculaCentimetroParaMetro(valorConversao);

    print(
        'Seu valor convertido de Centimetros para Metros, é: $valorConvertido');
  } else if (opcaoEscolhida == 3) {
    double valorConvertido = calculaMetrosParaQuilometros(valorConversao);

    print(
        'Seu valor convertido de Metros para Quilometros, é: $valorConvertido');
  } else if (opcaoEscolhida == 4) {
    double valorConvertido = calculaQuilometroParaMetros(valorConversao);

    print(
        'Seu valor convertido de Quilometros para Metros, é: $valorConvertido');
  } else if (opcaoEscolhida == 5) {
    double valorConvertido = calculaCentimetrosParaQuilometros(valorConversao);

    print(
        'Seu valor convertido de Centimetros para Quilometros, é: $valorConvertido');
  } else if (opcaoEscolhida == 6) {
    double valorConvertido = calculaQuilometrosParaCentimetros(valorConversao);

    print(
        'Seu valor convertido de Quilometros para Centimetros, é: $valorConvertido');
  } else {
    print('Opção inválida!');
  }
}

void exibeMenu() {
  print('''
#############################
  CONVERSOR DE MEDIDAS
#############################

1. Converter Metros em Centimetros
2. Converter Centimetros em Metros
3. Converter Metros para Quilometros
4. Converter Quilometros para Metros
5. Converter Centrimetros para Quilometros
6. Converter Quilometros para Centimetros

#############################

''');
}

double calculaMetroParaCentimetro(double valor) {
  var resultado = valor * 100;

  return resultado;
}

double calculaCentimetroParaMetro(double valor) {
  var resultado = valor / 100;
  return resultado;
}

double calculaMetrosParaQuilometros(double valor) {
  var resultado = valor / 1000;
  return resultado;
}

double calculaQuilometroParaMetros(double valor) {
  var resultado = valor * 1000;
  return resultado;
}

double calculaCentimetrosParaQuilometros(double valor) {
  var resultado = valor / 100000;
  return resultado;
}

double calculaQuilometrosParaCentimetros(double valor) {
  var resultado = valor * 100000;
  return resultado;
}

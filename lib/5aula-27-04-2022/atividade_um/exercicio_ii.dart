import 'dart:io';

/**
 * 
 * Atividade II - Defina 3 funções do mesmo contexto 
 * e uma interface para estas funções
→ função para escolha das fuções do Salário 
→ Receber salario e um valor. Bonificar e retonar o valor do salário.
→ Receber salario e um valor. Descontar e retonar o valor do salário.
→ Receber salario e um valor. Neste caso o valor é o bônus que tem encargos de 10%.
Adicionar o bônus e retornar o valor do salário.
 * 
 */

void show() {
  exibeMenu();

  dynamic valorDescBonif = 0;

  print("Digite a opção desejada: ");
  var opcaoEscolhida = int.parse(stdin.readLineSync()!);

  print("Entre com o valor do salário: ");
  var valorSalario = double.parse(stdin.readLineSync()!);

  if (opcaoEscolhida != 3) {
    print("Entre com o valor de " +
        (opcaoEscolhida == 2 ? 'desconto' : 'bonificação'));
    valorDescBonif = double.parse(stdin.readLineSync()!);
  }

  if (opcaoEscolhida == 1) {
    calculaBonificacao(valorSalario, valorDescBonif);
  } else if (opcaoEscolhida == 2) {
    calculaDesconto(valorSalario, valorDescBonif);
  } else {
    acrescimoDezPorCento(valorSalario);
  }
}

void exibeMenu() {
  print('''
#############################
MENU DE OPERAÇÕES COM SALÁRIO
#############################

1. Bonificação do salário
2. Desconto do salário
3. Acréscimo de 10% no salário.

#############################

''');
}

void calculaBonificacao(double salario, double bonificacao) {
  //→ Receber salario e um valor. Bonificar e retonar o valor do salário.
  var valorTotalSalario = salario + bonificacao;

  print('O valor do salário com a bonificação é de: $valorTotalSalario');
}

void calculaDesconto(double salario, double desconto) {
  //→ Receber salario e um valor. Descontar e retonar o valor do salário.

  var valorTotalSalario = salario - desconto;

  print('O valor do salário com o desconto é de: $valorTotalSalario');
}

void acrescimoDezPorCento(double salario) {
  //→ Receber salario e um valor. Neste caso o valor é o bônus que tem encargos de 10%.
  //Adicionar o bônus e retornar o valor do salário.

  var valorDezPorCento = (salario * 10) / 100;

  var valorTotalSalario = valorDezPorCento + salario;

  print('O valor do salário acrescido de 10% é de: $valorTotalSalario');
}

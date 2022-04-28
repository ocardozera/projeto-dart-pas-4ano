void main() {
  // Atividade II → Realize as atividades abaixo

  double valorSalario = 1200;

  //Exercício 1 - faça a chamada do método adicionarSalario validando se o valor é positivo.
  adicionarSalario(valorSalario, 100, ePositivo);

  //Exercício 2 - refaça o exe anterior, convertendo a named function em anonymous function.
  adicionarSalario(valorSalario, 100, (double numero) {
    if (numero > 0) {
      return true;
    } else {
      return false;
    }
  });

  //Exercício 3  - refaça o exe anterior, utilizando a arrow function.
  adicionarSalario(
      valorSalario, 100, (numero) => ((numero > 0) ? true : false));

  //Exercício 4  - refaça os exe's a, b e c, porém validando se o valor é menor do que o salário.
  adicionarSalario(
      valorSalario, 100, (numero) => ((numero < valorSalario) ? true : false));

  //Exercício 5  - refaça o exe c porém fazendo uma validação sua.

  //Só retorno true se o valor for par, para impar retorno false
  adicionarSalario(
      valorSalario, 100, (numero) => ((numero % 2 == 0) ? true : false));

  //Exercício 6 - faça 2 exemplos do uso de funções anônimas utilizando a biblioteca do dart.

  /*
  Exercício 6 - Conseguiu entender:
    - O contexto em que é útil utilizar funções anônimas?
    - Os requisitos necessários para usar funções anônimas? 
    - diferença entre função nomeada e anônimas?
    - diferença entre anonymous function e arrow function?
    Em que caso devemos utilizar Arrow Function? O que devemos considerar?
  */
}

void adicionarSalario(
    double salario, double valor, Function(double valor) validacao) {
  final eValido = validacao(valor);
  if (eValido) {
    final total = salario + valor;
    print(total);
  }
}

bool ePositivo(double numero) {
  if (numero > 0) {
    return true;
  } else {
    return false;
  }
}

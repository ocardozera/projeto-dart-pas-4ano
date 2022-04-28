import 'package:projeto_dart_pas_4ano/projeto_dart_pas_4ano.dart'
    as projeto_dart_pas_4ano;

void main(List<String> arguments) {
  print(verificarAprovacao(10, 8));

  print(verificarAprovacaoParamNomeado(nota1: 7, nota2: 8, mediaAprovacao: 6));
}

// parametros opcionais e parametros nomeados

String verificarAprovacao(double nota1, double nota2,
    [double mediaAprovacao = 6]) {
  var media = (nota1 + nota2) / 2;
  if (media >= mediaAprovacao) {
    return 'Aprovado';
  } else {
    return 'Reprovado';
  }
}

String verificarAprovacaoParamNomeado(
    {required double nota1, required double nota2, double mediaAprovacao = 6}) {
  var media = (nota1 + nota2) / 2;
  if (media >= mediaAprovacao) {
    return 'Aprovado';
  } else {
    return 'Reprovado';
  }
}

String verificarAprovacaoParamNMisturado(
    {required double nota1, required double nota2, double mediaAprovacao = 6}) {
  var media = (nota1 + nota2) / 2;
  if (media >= mediaAprovacao) {
    return 'Aprovado';
  } else {
    return 'Reprovado';
  }
}

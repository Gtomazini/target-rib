import 'dart:io';

// classe para resultado
class Resultado{
  final int min;
  final int max;
  final int total;

  Resultado(this.min, this.max, this.total);
}
// instancia para obter maximo de vezes da letra a definir
Resultado Contador(String corpo, String letra){
  // separa a string e compara com a letra para lower(minuscula), upper(maiuscula) e o total de vezes sendo a soma dessas duas separações comparadas
    int minusculas = corpo.split('').where((char) => char == letra.toLowerCase()).length;
  int maiusculas = corpo.split('').where((char) => char == letra.toUpperCase()).length;
  int vezes = minusculas + maiusculas;

// retornar os valores
  return Resultado(minusculas, maiusculas, vezes);
}
void main(){

// pegar uma palavra, com tratamento de erros
String palavra;
try {
  print('Qual é a palavra?');
  palavra = stdin.readLineSync() ?? '';
} catch (e) {
  print('Erro ao ler a entrada: $e');
  return;
}

print('Palavra escolhida: $palavra');

// escolher a letra
print('Qual letra deseja contar? [apenas uma]');
String? alvo = stdin.readLineSync() ?? '';

// para evitar erros, foi tratado o limite de uma letra por vez
  if (alvo.length != 1) {
    print('Formato errado');
    return;
  }


print('Letra escolhida $alvo');

// inserir as variaveis na função auxiliar
Resultado resultado = Contador(palavra, alvo);

print('A palavra $palavra tem para a letra $alvo: ${resultado.max} maiúsuclas e ${resultado.min} minusculas');
print('A palavra $palavra repete a letra $alvo: ${resultado.total} vezes');

}
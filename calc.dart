/*-----------------------------------------------
Author: Jefferson de Lima
Desc: Aplicação simples em Dart de uma calculadora com as quatro operaçãos matemáticas.
------------------------------------------------*/

//Class principal.
void main() {
//informe os valores na ordem>> Operador, primeiro valor, segundo valor. 
// Operador semprte string. Os valores sempre números.
 calc('+', 2, 2);
}

calc (String operator, dynamic num01, num02) {
  //Valida se sãos tipo number
  if(isNumber(num01) && isNumber(num02)) {
    //Valida o operador
     switch (operator) {
      case '+':
        print('$num01 + $num02 = ${add(num01, num02)}');
        break;
      case '-':
        print('$num01 - $num02 = ${subtract(num01, num02)}');
        break;
      case '/':
        print('$num01 / $num02 = ${divide(num01, num02)}');
        break;
      case '*':
        print('$num01 X $num02 = ${multiply(num01, num02)}');
        break;
      default:
      // Se não for nenhum operador anterior mostra msg de aviso.
        executeDown();
    }
  //Caso os valores para operação não atenderem os reuisitos, msg informando.
  }else{
    invalid();
  }
  
}
// Adicão
add(dynamic num01, num02) {
 return num01 + num02;
}
//Subtração.
subtract(dynamic num01, num02) {
 return num01 - num02;
}
//Divisão
divide(dynamic num01, num02) {
 return num01 / num02;
}
//Multiplicação.
multiply(dynamic num01, num02) {
 return num01 * num02;
}
//Valida se é um número.
isNumber(val){
  if(val is num){
    return true;
  }else {
    return false;
  }
}
//Caso não for informado ou informar um valor diferente do operador/
executeDown(){
  print('Você precisa informar um operador valido.');
}
//Msg para valores não esperados.
invalid() {
  print('Verifique os valores informados. Necessário que sejam númerais.');
}

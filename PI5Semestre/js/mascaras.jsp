$(document).ready(function(){
  $('.telefone').mask('(00)0000-0000');
  $('.celular').mask('(00)00000-0000');
  $('.cpf').mask('000.000.000-39');
  $('.rg').mask('00.000.000-0');
  $('.valor').mask("#.##0,00", {reverse:true});
});

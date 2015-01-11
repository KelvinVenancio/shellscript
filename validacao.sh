#!/bin/bash
# validacao.sh - Script para validação de telefone, ip, cep, data e e-mail.
# Autor: Kelvin Venâncio Soares - kelvinvenanciosoares@gmail.com
#
###  Validação de núm. telefônico no formato: (00)0000-0000  ###
echo 'Informe o número de Telefone, ex. (00)0000-0000';
read fone
echo $fone | egrep '^[(][0-9]{2}[)][0-9]{4}+-[0-9]{4}$' && echo -e '\033[01;32m Número válido! \033[0m' || echo -e '\033[01;31m Número inválido!\033[0m'


### Validação de IP ###
echo 'Informe o número de IP';
read ip
echo $ip | egrep '^[0-9]{1,3}[.]{1}[0-9]{1,3}[.]{1}[0-9]{1,3}[.]{1}[0-9]{1,3}$' && echo -e '\033[01;32m IP válido! \033[0m' || echo -e '\033[01;31m IP inválido!\033[0m'

### Validação de CEP ###
echo 'Informe o CEP';
read cep
echo $cep | egrep '^[0-9]{5}[-][0-9]{3}$' && echo -e '\033[01;32m Número válido! \033[0m' || echo -e '\033[01;31m CEP inválido!\033[0m'

### Validação de data no formato dd/mm/aaaa ###
echo 'Informe a Data, ex. dd/mm/aaaa';
read data
echo $data | egrep '^[0-3]{1}[0-9]{1}[/][0-1]{1}[0-9]{1}[/][0-9]{4}$' && echo -e '\033[01;32m Data válida! \033[0m' || echo -e '\033[01;31m Data inválida!\033[0m'

### Validação de e-mail ###
echo 'Informe o E-mail';
read email
echo $email | egrep '^([a-zA-Z0-9_-.])+@[0-9a-zA-Z.-]+\.[a-z]{2,3}$' && echo -e '\033[01;32m E-mail válido! \033[0m' || echo -e '\033[01;31m E-mail inválido!\033[0m'

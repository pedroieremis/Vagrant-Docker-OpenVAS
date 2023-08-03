## Provisionamento de Vagrant com Greenbone OpenVAS em Docker

### Dependências

- [Virtuabox](https://www.virtualbox.org/)
- [Vagrant](https://www.vagrantup.com/)

### Detalhes

O arquivo do Vagrant, o Vagrantfile provavelmente precisará de modificação. Talvez sua rede interna possa ser diferente da minha, como também muito possivelmente, o nome da sua placa de rede, isto para que possa ser implementada em modo ```bridge```, com acesso externo.

---

### Mão na Massa - Basta Seguir os Passos Abaixo

Clone o repositório em questão
```shell
git clone https://github.com/pedroieremis/Vagrant-Docker-OpenVAS.git
```

Navegue até o diretório do repositório clonado localmente

```shell
cd Vagrant-Docker-OpenVAS
```

A seguir está a parte que mais demora na primeira vez, mas se estiver tudo certo, basta aguardar. Caso você tenha modificado o ```Vagrantfile``` de acordo com sua rede e com sua placa de rede, vai funcioinar sem problemas, de forma bem automática. Se sua placa de rede for diferente, que provavelmente será, ele irá perguntar sozinho para qual placa de rede você quer destinar a conexão. Você pode observar qual o nome que ele mostra e colocar no ```Vagrantfile```, para que da próxima vez que subir a infraestrutura, seja automático. Mande implementar a infraestrutura o comando abaixo.

```shell
vagrant up
```

Acesse a Vagrant com ssh

```shell
vagrant ssh
```

---

### Alguns Comandos

Para desligar a máquina

```shell
vagrant halt
```

Para ligar e recarregar a máquina

```shell
vagrant reload
```

Para acabar com tudo, "destruir" a máquina

```shell
vagrant destroy -f
```

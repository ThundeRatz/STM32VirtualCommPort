# STM32VirtualCommPort

Esse repositório contém uma biblioteca para utilizar USB como CDC (Communication Device Class).

Essa biblioteca foi feita para ser utilizadas como submódulo no [STM32ProjectTemplate](https://github.com/ThundeRatz/STM32ProjectTemplate).

## Adicionando o submódulo ao projeto

Crie um diretório chamado `lib`, caso não exista:

```bash
mkdir lib
```
E adicione o submódulo fazendo:

* Com HTTPS:
```bash
git submodule add --name STM32VirtualCommPort https://github.com/ThundeRatz/STM32VirtualCommPort.git lib/STM32VirtualCommPort
```

* Com SSH:
```bash
git submodule add --name STM32VirtualCommPort git@github.com:ThundeRatz/STM32VirtualCommPort.git lib/STM32VirtualCommPort
```

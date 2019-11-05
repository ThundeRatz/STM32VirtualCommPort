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

## Configurando o cube

Para utilizar comunicação por USB, é necessário primeiro configurar o cube.

Na aba "Connectivity", selecione "USB" e habilite "Device (FS)" nas configurações default.

Em seguida, abra "System Core" e vá para "NVIC". Habilite a interrupção do USB (Global ou Low Priority) e confira em "Code Generation" se "Generate IRQ Handler" e "Call Hal Handler" estão habilitadas.

OBS: Não configure a parte de Middlewares do USB, a lib já fará isso

# Projeto de Controle de Temperatura de Aquário com ESP32

O projeto consiste em um sistema de controle de temperatura para um aquário, utilizando um ESP32 conectado a um relé e um sensor de temperatura DS18B20 à prova d'água. Os dados de temperatura são enviados para uma máquina na plataforma Google Cloud, que executa em container o broker MQTT Mosquitto e o Node-RED.

![image](https://github.com/allysonthales/noderedimd1093/assets/121051849/f10be588-0ee9-449d-951e-eb6e608235ff)


## Funcionalidades do Projeto

O projeto oferece as seguintes funcionalidades:

- Monitoramento de temperatura: O sensor de temperatura DS18B20 é colocado dentro do aquário e conectado ao ESP32. O ESP32 coleta a leitura da temperatura e a envia para o broker MQTT.

- Dashboard em tempo real: O Node-RED é utilizado para criar um dashboard, onde é possível visualizar as leituras de temperatura em tempo real. O dashboard exibe gráficos e valores atualizados da temperatura do aquário.

- Notificações e alertas: Caso a temperatura do aquário ultrapasse determinados limites, o sistema gera notificações tanto no próprio dashboard quanto por meio de um bot no Telegram. Isso permite que o usuário seja informado imediatamente caso ocorra uma variação indesejada da temperatura.

- Controle do relé: Além do monitoramento da temperatura, o dashboard também oferece a opção de controle do relé conectado ao ESP32. Por meio do dashboard, é possível acionar o relé para ligar ou desligar dispositivos externos, como um sistema de aquecimento ou resfriamento do aquário.

- Interação via bot no Telegram: O sistema também oferece a possibilidade de interação através de um bot no Telegram. O usuário pode solicitar informações sobre o estado atual da temperatura do aquário e receber as atualizações diretamente no chat do Telegram.

## Arquitetura do Projeto

A arquitetura do projeto é composta pelos seguintes componentes:

- ESP32: Responsável por coletar os dados de temperatura do sensor DS18B20 e enviar para o broker MQTT.

- Broker MQTT Mosquitto: Executado na plataforma Google Cloud, é responsável por receber as leituras de temperatura do ESP32 e encaminhá-las para o Node-RED.

- Node-RED: Utilizado para processar os dados recebidos do broker MQTT e exibir o dashboard interativo. Também é responsável por enviar notificações e controlar o relé.

- Dashboard e Notificações: O dashboard criado no Node-RED exibe as leituras de temperatura em tempo real e envia notificações quando ocorrem variações indesejadas. O bot no Telegram permite interagir com o sistema e receber as informações de temperatura.

## Tecnologias Utilizadas

O projeto utiliza as seguintes tecnologias:

- ESP32: Plataforma de desenvolvimento baseada no microcontrolador ESP32.
- FreeRTOS: Sistema operacional em tempo real usado para fornecer um ambiente de execução multitarefa para o ESP32.
- Docker: Plataforma de contêineres que facilita a criação, implantação e execução de aplicativos em ambientes isolados.
- Mosquitto MQTT: Um broker MQTT de código aberto amplamente utilizado para comunicação de mensagens entre dispositivos e aplicativos.
- Node-RED: Ferramenta de automação de fluxo baseada em código aberto que permite conectar dispositivos, APIs e serviços de forma visual.

## Bibliotecas Utilizadas no Node-RED

O projeto utiliza as seguintes bibliotecas no Node-RED:

- Node-RED Dashboard: Biblioteca que fornece um conjunto de nós e interfaces gráficas para criar painéis e dashboards interativos.
- node-red-node-random: Biblioteca que adiciona um nó para gerar números aleatórios no Node-RED.
- node-red-contrib-schedex: Biblioteca que adiciona um nó de agendamento para executar tarefas em horários específicos no Node-RED.
- node-red-contrib-telegrambot: Biblioteca que adiciona um nó para integração com o Telegram no Node-RED.
- node-red-node-openweathermap: Biblioteca que adiciona um nó para obter dados de previsão do tempo do OpenWeatherMap no Node-RED.

## Recursos Adicionais

Caso tenha alguma dúvida ou sugestão, sinta-se à vontade para entrar em contato.

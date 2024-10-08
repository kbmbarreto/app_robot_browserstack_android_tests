# Company App - Automação Android

<p>Automação dos testes end-to-end, utilizando browser stack, para plataforma Android.</p>

## Informações técnicas:
Abaixo, informações técnicas para ajudá-lo(a) a configurar e utilizar o projeto.

## Ferramentas utilizadas

- Python 3
- Robot Framework 7
- Appium 2

## Preparação do ambiente
Para rodar o projeto, utlize a IDE que você mais se identifique **Visual Studio Code, PyCharm, etc**. Em seguida, será 
preciso configurar seu computador com o Appium e Android Studio, pode encontrar tutoriais e informações detalhadas 
sobre como fazer isso nos links abaixo:


- [Manual de instalação e configuração do Appium 2](https://medium.com/@kleberbarreto/appium-n%C3%A3o-est%C3%A1-mais-funcionando-ap%C3%B3s-atualizar-os-simuladores-para-o-ios-16-resolvido-13a363db0032)
- [Videos de instalação do Appium 2](https://epharmapbm-my.sharepoint.com/personal/kleber_macedo_epharma_com_br/_layouts/15/guestaccess.aspx?guestaccesstoken=Wua1D7ZuI1w3S5IY4aia97VOI7%2BrHPlYLFyAZDtIdKo%3D&folderid=2_07558948218a845c5a55534a84655c1eb&rev=1&e=gGcFvl)


Após instalar tudo que é necessário e chegar a hora de configurar suas capacilities e seu emulador Android, siga conforme 
as configurações do arquivo **Comum.robot** para que todos que utilizem o projeto tenham as mesmas configurações de 
**capabilities**:

**Exemplo do arquivo Comum.robot**:

````robot
    Open Application    http://127.0.0.1:4723
    ...     platformName=Android
    ...     deviceName=Android13
    ...     appPackage=br.com.mobilesaude.company.guia
    ...     appActivity=br.com.mobilesaude.company.guia.MainActivity
    ...     automationName=UiAutomator2

````

Em seguida, basta instalar todas as dependências necessárias do projeto rodando o comando

```bash 
pip install -r requirements.txt
``` 

dentro da raíz do projeto.

Após instalar todas as configurações, ficam aqui algumas dicas de plugins que podem te ajudar a ter mais visibilidade e produtividade trabalhando com o Robot 
em sua IDE:


- [Robot Runner](https://plugins.jetbrains.com/plugin/16424-robot-runner)
- [Robot Framework Language Server](https://plugins.jetbrains.com/plugin/16086-robot-framework-language-server)
- [Hyper Robot Framework Support](https://plugins.jetbrains.com/plugin/16382-hyper-robotframework-support)


## Execução dos testes - Local

Para rodar os testes enviando os arquivos de relatórios para o local correto, utilize o seguinte comando dentro da suite de testes:
```bash 
robot -d ./Results/ ./TestSuite/*.robot
```

## Execução dos testes - DeviceFarm

Para rodar os testes utilizando o BrowserStack:
```bash 
browserstack-sdk robot -d ./Results/ ./TestSuite/*.robot
```

## Links úteis.

- [Documentação das Keywords do AppiumLibrary](http://serhatbolsu.github.io/robotframework-appiumlibrary/AppiumLibrary.html)
- [Guia de migração do Appium 1 para o Appium 2](https://github.com/appium/appium/blob/master/packages/appium/docs/en/guides/migrating-1-to-2.md)
- [Guia de ajuda para instalação do Appium 2](https://github.com/appium/appium#server)

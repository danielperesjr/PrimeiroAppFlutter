import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(title: 'Frases Marcantes - Steve Jobs'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _numeroAleatorio = 0;
  List _frases = [
    'Inovação distingue um líder de um seguidor.',
    'A única maneira de fazer algo excelente é amar o que você faz. Se você ainda não a encontrou, continue procurando. Não se acomode.',
    'Criatividade é só conectar coisas. Quando você pergunta a pessoas criativas como elas fizeram algo, elas geralmente se sentem um pouco culpadas porque elas não fizeram aquilo realmente, elas apenas viram alguma coisa.',
    'Eu estou convencido de que metade do que separa os empreendedores bem-sucedidos dos não sucedidos é pura perseverança.',
    'Seu tempo é limitado. Não gaste seu tempo vivendo a vida de outra pessoa.',
    'Ser o homem mais rico do cemitério não me interessa. Ir para a cama à noite dizendo que fiz alguma coisa maravilhosa é o que importa para mim.',
    'Ser demitido da Apple foi a melhor coisa que poderia ter acontecido comigo. O peso de ser bem-sucedido foi substituído pela leveza de ser um iniciante novamente. Isso me libertou para entrar em um dos períodos mais criativos da minha vida.',
    'Você precisa confiar em algo — no seu instinto, destino, vida, karma, qualquer coisa. Essa ideia nunca me deixou na mão, e fez toda a diferença na minha vida.',
    'Estes têm sido meus mantras — foco e simplicidade. O simples pode ser mais difícil que complexo. Você precisa trabalhar duro para deixar o seu pensamento limpo e manter a simplicidade.',
    '[A inovação] surge quando você diz ‘não’ para mil coisas (…). Estamos sempre pensando em novos mercados em que podemos ingressar, mas é só ao dizer ‘não’ que você pode se concentrar nas coisas que são realmente importantes.'
  ];

  void _incrementCounter() {
    setState(() {
      _numeroAleatorio = new Random().nextInt(10);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Pressione o botão para gerar uma frase:',
            ),
            Text(
              _frases[_numeroAleatorio],
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

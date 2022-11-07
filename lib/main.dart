import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  // ignore: prefer_const_constructors
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frasesSteve = [
    "Às vezes, quando você inova, você comete erros. É melhor admiti-los rapidamente, e seguir em frente para melhorar suas outras inovações.",
    "Inovação distingue o líder de um seguidor.",
    "Esse tem sido um dos meus mantras – foco e simplicidade. Simples pode ser mais difícil de fazer do que complexo; você tem que trabalhar duro para clarear seu pensamento a fim de torná-lo simples.",
    "Seja um parâmetro de qualidade. Algumas pessoas não estão acostumadas a um ambiente onde a excelência é esperada.",
    "Eu estou convencido de que metade do que separa os empreendedores bem-sucedidos dos não sucedidos é pura perseverança.",
    "As pessoas acham que foco significa dizer sim para a coisa na qual você está concentrado. Significa dizer não para centenas de outras boas ideias que existem. Você precisa escolher com cuidado.",
    "Não deixe o ruído das opiniões dos outros abafar a sua própria voz interior.",
    "Às vezes, a vida vai te acertar um tijolo na cabeça. Não perca a fé. Eu estou convencido de que a única coisa que me fez seguir em frente era que eu amava o que fazia.",
    "Ser demitido da Apple foi a melhor coisa que poderia ter acontecido comigo. O peso de ser bem sucedido foi substituído pela leveza de ser um iniciante novamente. [Isso] me libertou para entrar em um dos mais criativos períodos da minha vida.",
    "O trabalho vai preencher uma grande parte da sua vida, e a única maneira de ficar completamente satisfeito é fazer o que você acredita ser um bom trabalho. E a única forma de fazer um bom trabalho é amar aquilo que você faz. Se você ainda não descobriu o que é, continue procurando. Não se acomode. Da mesma forma que acontece com as coisas do coração, você vai saber quando encontrar.",
    "Você não pode simplesmente perguntar aos consumidores o que eles querem e daí tentar dar isso a eles. Assim que você conseguir construir isso, eles já vão querer algo novo.",
    "Meu modelo de negócio são os Beatles. Eles eram quatro caras que conseguiam controlar as tendências negativas um do outro. Eles equilibravam um ao outro, e o total era maior do que a soma das partes. É como eu vejo os negócios: grandes coisas em termos de negócios nunca são feitas por uma pessoa. São feitas por uma equipe de pessoas.",
    "Qualidade é mais importante do que quantidade. Um home run é muito melhor do que dois doubles.",
    "Você não pode juntar dois pontos olhando para frente; você só consegue conectá-los olhando para trás. Então você precisa confiar que os pontos, de alguma maneira, serão ligados. Você tem que confiar em algo – seu instinto, destino, vida, karma, o que for. Esta abordagem nunca me decepcionou, e fez toda a diferença na minha vida.",
    "Vamos inventar o amanhã em vez de ficar nos preocupando com o que aconteceu ontem",
    "Eu sou a única pessoa que conheço que perdeu um quarto de US 1 bilhão em um ano... isso ajuda a construir seu caráter.",
    "Quando você é um carpinteiro fazendo uma cômoda linda, você não vai colocar um sarrafo no fundo do móvel, mesmo que ele fique voltado para a parede e ninguém possa ver. Você sabe que está lá, então você vai usar um pedaço de madeira bonito no fundo. Você faz isso para dormir bem à noite. A estética e a qualidade têm de ser levadas até o último detalhe.",
    "Se você ficar de olho apenas no lucro, você vai economizar no produto. Mas se você se concentrar em fazer produtos realmente bons, então o lucro virá a seguir.",
    "Decidir o que não fazer é tão importante quanto decidir o que fazer. Isso é verdadeiro para companhias e também para produtos.",
    "Continue faminto. Continue tolo.” [a frase não é de Jobs, é uma citação de um almanaque que ele costumava ler na juventude, mas é uma das mais lembradas por seus admiradores]"
  ];

  var _fraseSelecionada = "Clique abaixo para visualizar uma frase!";

  void _gerarFrase() {
    var numeroAleatorio = Random().nextInt(_frasesSteve.length);
    setState(() {
      _fraseSelecionada = _frasesSteve[numeroAleatorio];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("Frases Marcantes - Steve Jobs"),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          // width: double.infinity,
          // decoration: BoxDecoration(
          //     border: Border.all(width: 3, color: Colors.amber)
          // ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/steves-background.jpeg"),
              fit: BoxFit.cover,
              ),
            ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                _fraseSelecionada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                ),
              ),
              MaterialButton(
                onPressed: _gerarFrase,
                color: Colors.grey,
                child: Text(
                  "One more thing...",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

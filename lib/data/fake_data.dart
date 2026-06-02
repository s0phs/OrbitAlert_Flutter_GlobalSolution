import 'package:orbitalert/model/evento_climatico.dart';
import 'package:orbitalert/model/regiao.dart';
import 'package:orbitalert/model/regiao_category.dart';
import 'package:orbitalert/model/estado.dart';
import 'package:orbitalert/model/intro.dart';

final List<Regiao> OrbitAlertRegioes = [
  Regiao(
    id: 1,
    title: 'Monitoramento climático e ambiental da Região Norte',
    time: DateTime.now().subtract(const Duration(minutes: 5)),
    description:
        'A Região Norte abriga a maior floresta tropical do planeta e possui enorme importância para o equilíbrio climático global.',
    category: RegiaoCategory.norte,
  ),

  Regiao(
    id: 2,
    title: 'Monitoramento climático e ambiental da Região Sul',
    time: DateTime.now(),
    description:
        'A Região Sul possui clima subtropical, forte atividade agrícola e grande influência de frentes frias e variações climáticas ao longo do ano.',
    category: RegiaoCategory.sul,
  ),

  Regiao(
    id: 3,
    title: 'Monitoramento climático e ambiental da Região Sudeste',
    time: DateTime.now().subtract(const Duration(minutes: 3)),
    description:
        'A Região Sudeste concentra grandes centros urbanos e desafios ambientais relacionados à urbanização e eventos climáticos extremos.',
    category: RegiaoCategory.sudeste,
  ),

  Regiao(
    id: 4,
    title: 'Monitoramento climático e ambiental da Região Centro-Oeste',
    time: DateTime.now(),
    description:
        'A Região Centro-Oeste se destaca pela presença do Cerrado e do Pantanal, além de possuir forte relevância para o agronegócio brasileiro.',
    category: RegiaoCategory.centroOeste,
  ),

  Regiao(
    id: 5,
    title: 'Monitoramento climático e ambiental da Região Nordeste',
    time: DateTime.now().subtract(const Duration(minutes: 7)),
    description:
        'A Região Nordeste apresenta grande diversidade climática, incluindo áreas litorâneas úmidas e regiões semiáridas sujeitas a longos períodos de seca.',
    category: RegiaoCategory.nordeste,
  ),
];

final List<Estado> orbitAlertEstados = [

  Estado(
    id: 1,
    title: 'Amazonas',
    description:
        'Monitoramento de chuvas intensas e aumento no nível dos rios em áreas próximas a Manaus. Há risco moderado de alagamentos em regiões ribeirinhas e possibilidade de interrupções em estradas locais.',
    category: RegiaoCategory.norte,
    evento: EventoClimatico.chuva,
  ),

  Estado(
    id: 2,
    title: 'Pará',
    description:
        'Satélites identificaram focos ativos de queimadas em áreas de vegetação próximas ao sul do estado. O alerta recomenda atenção à qualidade do ar e monitoramento ambiental constante.',
    category: RegiaoCategory.norte,
    evento: EventoClimatico.queimadas,
  ),

  Estado(
    id: 3,
    title: 'Bahia',
    description:
        'Temperaturas acima da média histórica foram registradas nos últimos dias, com baixa umidade relativa do ar em municípios do interior. Há alerta para ondas de calor prolongadas.',
    category: RegiaoCategory.nordeste,
    evento: EventoClimatico.calor,
  ),

  Estado(
    id: 4,
    title: 'Ceará',
    description:
        'Regiões do sertão cearense apresentam longos períodos sem precipitação. Sensores climáticos apontam risco crescente de seca agrícola e redução em reservatórios.',
    category: RegiaoCategory.nordeste,
    evento: EventoClimatico.seca,
  ),

  Estado(
    id: 5,
    title: 'São Paulo',
    description:
        'Frente fria avança sobre o estado trazendo possibilidade de tempestades severas, ventos fortes e descargas elétricas em áreas urbanas e metropolitanas.',
    category: RegiaoCategory.sudeste,
    evento: EventoClimatico.tempestade,
  ),

  Estado(
    id: 6,
    title: 'Rio de Janeiro',
    description:
        'Chuvas persistentes elevam o risco de deslizamentos em áreas de encosta e pontos de alagamento em municípios da região serrana.',
    category: RegiaoCategory.sudeste,
    evento: EventoClimatico.enchente,
  ),

  Estado(
    id: 7,
    title: 'Rio Grande do Sul',
    description:
        'Volume elevado de chuvas acumuladas nas últimas 48 horas aumenta o risco de enchentes em cidades próximas a rios e áreas de baixa altitude.',
    category: RegiaoCategory.sul,
    evento: EventoClimatico.enchente,
  ),

  Estado(
    id: 8,
    title: 'Paraná',
    description:
        'Instabilidades atmosféricas podem provocar temporais isolados acompanhados de rajadas de vento e queda de granizo em algumas regiões do estado.',
    category: RegiaoCategory.sul,
    evento: EventoClimatico.tempestade,
  ),

  Estado(
    id: 9,
    title: 'Mato Grosso',
    description:
        'Monitoramento orbital detectou crescimento de focos de calor em áreas de vegetação próximas ao Pantanal, aumentando o risco de propagação de incêndios florestais.',
    category: RegiaoCategory.centroOeste,
    evento: EventoClimatico.queimadas,
  ),

  Estado(
    id: 10,
    title: 'Goiás',
    description:
        'Altas temperaturas associadas à baixa umidade do ar mantêm alerta climático ativo em diversas cidades do estado, com impacto potencial na saúde da população.',
    category: RegiaoCategory.centroOeste,
    evento: EventoClimatico.calor,
  ),
];



final IntroPaginas = [

  Intro(
    title: 'Monitoramento Climático',
    description:'Acompanhe eventos ambientais e riscos climáticos em tempo real utilizando dados orbitais.',
    image: 'assets/animations/intro_first.json',
  ),

  Intro(
    title: 'Alertas Inteligentes',
    description:'Receba notificações sobre enchentes, queimadas, tempestades e ondas de calor.',
    image:  'assets/animations/intro_second.json',
  ),

  Intro(
    title: 'Proteção Regional',
    description:'Visualize informações específicas por região e estados monitorados.',
    image: 'assets/animations/intro_third.json',
  ),
];


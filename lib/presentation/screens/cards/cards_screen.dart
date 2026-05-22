import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

const cards = <Map<String, dynamic>>[
  { 'elevation': 0.0, 'label': 'Elevation 0' },
  { 'elevation': 1.0, 'label': 'Elevation 1' },
  { 'elevation': 2.0, 'label': 'Elevation 2' },
  { 'elevation': 3.0, 'label': 'Elevation 3' },
  { 'elevation': 4.0, 'label': 'Elevation 4' },
  { 'elevation': 5.0, 'label': 'Elevation 5' },
];

class CardsScreen extends StatelessWidget {
  static const String name = "cards-screen";

  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cards')),
      floatingActionButton: FloatingActionButton.extended(
        label: Text('Regresar'),
        icon: Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () => context.pop(),
      ),
      body: _CardsView(),
    );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...cards.map(
          (e)=> _CardType1(label: e['label'], elevation: e['elevation'])
        ),
        ...cards.map(
          (e)=> _CardType2(label: e['label'], elevation: e['elevation'])
        ),
        ...cards.map(
          (e)=> _CardType3(label: e['label'], elevation: e['elevation'])
        ),
        ...cards.map(
          (e)=> _CardType4(label: e['label'], elevation: e['elevation'])
        )
      ]
    );
  }
}

class _CardType1 extends StatelessWidget {
  final String label;
  final double elevation;
  
  const _CardType1({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children:[
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: (){},
                icon: Icon(Icons.more_vert_outlined)
              )
            ),
            Align(
              alignment: Alignment.center,
              child: Text('$label - incline'),
            )
          ]
        ),
      )
    );
  }
}

class _CardType2 extends StatelessWidget {
  final String label;
  final double elevation;
  
  const _CardType2({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Card(
      elevation: elevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        side: BorderSide(
          color: colors.outline
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children:[
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: (){},
                icon: Icon(Icons.more_vert_outlined)
              )
            ),
            Align(
              alignment: Alignment.center,
              child: Text('$label - outline'),
            )
          ]
        ),
      )
    );
  }
}

class _CardType3 extends StatelessWidget {
  final String label;
  final double elevation;
  
  const _CardType3({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Card(
      elevation: elevation,
      color: colors.surfaceContainerHighest,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children:[
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: (){},
                icon: Icon(Icons.more_vert_outlined)
              )
            ),
            Align(
              alignment: Alignment.center,
              child: Text('$label - filled'),
            )
          ]
        ),
      )
    );
  }
}

class _CardType4 extends StatelessWidget {
  final String label;
  final double elevation;
  
  const _CardType4({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Card(
      elevation: elevation,
      clipBehavior: Clip.hardEdge,
      color: colors.surfaceContainerHighest,
      child: Stack(
        children:[
          Image.network(
            'https://picsum.photos/id/${ elevation.toInt()}/600/200',
            height: 200,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              decoration: BoxDecoration(
                color: colors.surfaceContainerHigh,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20))
              ),
              child: IconButton(
                onPressed: (){},
                icon: Icon(Icons.more_vert_outlined)
              ),
            )
          ),
        ]
      )
    );
  }
}
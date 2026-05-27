import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo{
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo({required this.title, required this.caption, required this.imageUrl});
}

final slides = <SlideInfo>[
  SlideInfo(title: 'Busca la comida', caption: 'asdffffffffffffagasgagagagafagagargaragr', imageUrl: 'assets/images/1.png'),
  SlideInfo(title: 'Entrega rápida', caption: 'asdffffffffffffagasgagagagafagagargaragr', imageUrl: 'assets/images/2.png'),
  SlideInfo(title: 'Disfruta', caption: 'asdffffffffffffagasgagagagafagagargaragr', imageUrl: 'assets/images/3.png'),
];

class IntroductionScreen extends StatefulWidget {
  static const name = "tutorial";
  const IntroductionScreen({super.key});

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {

  final pageController = PageController();
  bool endReached = false;

  @override
  void initState() {
    super.initState();

    pageController.addListener(() {
      final page = pageController.page ?? 0;
      if (!endReached && page >= (slides.length - 1.5)) {
        setState(() {
          endReached = true;
        });
      }
    } 
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            physics: BouncingScrollPhysics(),
            children: slides.map(
              (slideData) =>_Slide()
            ).toList(),
          ),
          Positioned(
            right: 20,
            top: 50,
            child: TextButton(
            onPressed: () => context.pop(),
            child: Text('Salir')
            )
          ),

          endReached ?
          Positioned(
            bottom: 30,
            right: 30,
            child: FadeInRight(
              from: 15,
              child: FilledButton(
                onPressed: () => context.pop(), 
                child: Text('Comenzar')),
            ))
              : SizedBox()
        ],
      ),
  //separado en un stateless widget que esta debajo
    );
  }
}

class _Slide extends StatelessWidget {
  final SlideInfo slide;
  const _Slide({
    required this.slide
  });

  @override
  Widget build(BuildContext context) {

    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FlutterLogo(
              size: 150,
            ),
            Text(slide.title, style: titleStyle),
            SizedBox(height: 20,),
            Text(slide.caption, style: captionStyle),
          ],
        )
      ),
    );
  }
}
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;
  final Color background;

  SlideInfo({
    required this.title,
    required this.caption,
    required this.imageUrl,
    required this.background,
  });
}

final slides = <SlideInfo>[
  SlideInfo(
    title: 'Busca la comida',
    caption:
        'Est incididunt id eiusmod sunt enim ad veniam laboris eiusmod velit. Lorem ipsum laboris eu culpa. Velit nisi ipsum irure veniam nostrud sit incididunt. Duis ut labore et magna labore id elit id veniam.',
    imageUrl: 'assets/images/1.png',
    background: const Color.fromARGB(153, 250, 148, 252),
  ),

  SlideInfo(
    title: 'Entrega rápida',
    caption:
        'Anim cupidatat esse est veniam minim. Et Lorem ad labore do aliquip sunt elit. Proident nulla fugiat pariatur aute veniam laboris tempor occaecat ut elit anim et est aliquip. Nulla voluptate nisi adipisicing officia esse proident do nulla sunt enim nisi est ex qui. Non enim sunt aliqua consectetur ullamco nisi ut velit elit Lorem ea reprehenderit occaecat mollit.',
    imageUrl: 'assets/images/2.png',
    background: const Color.fromARGB(153, 235, 194, 250),
  ),

  SlideInfo(
    title: 'Disfruta!',
    caption:
        'Ad culpa et ea ea ex ullamco laboris sit exercitation. In aute eiusmod laborum proident consequat amet. Laboris pariatur amet enim laboris aute eu labore sit minim consectetur ad irure voluptate.',
    imageUrl: 'assets/images/3.png',
    background: Colors.white54,
  ),
];

class IntroductionScreen extends StatefulWidget {
  static final String name = "tutorial_screen";
  const IntroductionScreen({super.key});

  @override
  State<IntroductionScreen> createState() => _TutorialScreenState();
}

class _TutorialScreenState extends State<IntroductionScreen> {
  final pageController = PageController();
  bool endReached = false;

  @override
  void initState() {
    super.initState();

    pageController.addListener(() {
      final page = pageController.page ?? 0;

      if (!endReached && page >= (slides.length - 1.5)) {
        setState(() => endReached = true);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            physics: BouncingScrollPhysics(),
            children: slides.map((slide) => _Slides(slide: slide)).toList(),
          ),

          Positioned(
            right: 20,
            top: 50,
            child: TextButton(
              onPressed: () => context.pop(),
              child: Text('Salir'),
            ),
          ),

          endReached
              ? Positioned(
                  bottom: 30,
                  right: 20,
                  child: FadeInRight(
                    from: 15,
                    child: FilledButton(
                      onPressed: () => context.pop(),
                      child: Text('Comenzar'),
                    ),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}

class _Slides extends StatelessWidget {
  final SlideInfo slide;
  const _Slides({required this.slide});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Container(
      color: slide.background,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FlutterLogo(size: 150),
              SizedBox(height: 20),
              Text(slide.title, style: titleStyle),
              SizedBox(height: 10),
              Text(slide.caption, style: captionStyle),
            ],
          ),
        ),
      ),
    );
  }
}
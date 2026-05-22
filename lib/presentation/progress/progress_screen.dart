import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const name = "progress-indicator";
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Progress Indicator'),
      ),
      body: _ProgressView() //separado en un stateless widget que esta debajo
    );
  }
}

//progress view extraido en un widget para que no este todo junto
class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 30,),
          Text('Circular progress indicator'),
          SizedBox(height: 10,),
          CircularProgressIndicator(strokeWidth: 2, backgroundColor: Colors.black45,),
          SizedBox(height: 30,),
          Text('Cicular y Linear controlado'),

          StreamBuilder(
            stream: Stream.periodic(Duration(milliseconds: 300), (value){
              return (value * 2) / 100;
            }).takeWhile( (value) => value < 100),
            builder: (context, snapshot){
              final progressValue = snapshot.data ?? 0;

              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Row(
                  children: [
                    CircularProgressIndicator(
                      value: progressValue,
                      strokeWidth: 2,
                      backgroundColor: Colors.black45,
                    ),

                    SizedBox(width: 20,),

                    Expanded(child: LinearProgressIndicator( value:progressValue,))
                  ],
                ),
              );
            },
            )
        ],
      ),
    );
  }
}
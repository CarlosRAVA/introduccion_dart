import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = "progress-indicator";
  const SnackbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Progress Indicator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
              FilledButton.tonal(onPressed: () {
                showAboutDialog(context: context,
                applicationIcon: FlutterLogo(),
                applicationVersion: '1.0',
                applicationName: 'Flutter App',
                children: [
                  Text('hsafggqwegrqwegr')
                ]
                );
              }
              , child: Text('Licencias usadas')
              ),

              SizedBox(height: 10,),

              FilledButton.tonal(
                onPressed: (){}, 
                child: Text('Mostrar Dialogo'))
          ],
        ),
      ),//separado en un stateless widget que esta debajo
      floatingActionButton: FloatingActionButton.extended(onPressed: () => showCustomSnackbar(context), label: Text('Mostrar Snackbar'),icon: Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }

  void openDialog( BuildContext context) { 
    showDialog(
      context: context, 
      builder: (context) => AlertDialog(
        title: Text('data'),
        content: Text('lorem ipsum insano gu insano utng rata de campo'),
        actions: [
          TextButton(onPressed: () => context.pop(), child: Text('Cancelar')),
          FilledButton(onPressed: () => context.pop(), child: Text('Aceptar'))
        ],
      ),
    );
  }

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackbar = SnackBar(
      content: Text('Hola Mundo!'),
      action: SnackBarAction(label: 'Ok', onPressed: () {}),
      duration: Duration(seconds:2),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackbar);
   }
}
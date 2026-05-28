void main() {

  final String movie = "ABC";
  final int rate = 5;
  final bool now = true;
  final List<String> genres = ['Action','ScFi',''];
  final paths = <String>['front.png','back.png'];

  dynamic errorMessagee = 'Hola';
  errorMessage = true;
  errorMessage = [1,2,3,4];
  errorMessage = {1,2,3,4};
  errorMessage = () => true;
  errorMessage = null;

  print("""
  $movie,
  $rate,
  $now,
  $genres,
  $paths,
  $errorMessage
   :: Información
  """);
}
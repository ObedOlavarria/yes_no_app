
///1. ¿que hace un constructor?
///R1= Inicializa un widget  
///2.¿Porque ese me him?
///Son las respuestas que llegan de ella y
///mis respuestas 
/// ¿que es final?
/// para que nose pueda cambiar el valor de la 
/// variablr
///build context identificador 
/////
///En que archivo gestiono mis carpetas
///ChangeNotifier 
///GetX es como manejar un coche automatico
enum FromWho{me,him} //como si fuera una lista de valores predeterminados 
class Message
{
  final
   String text;
  //? puede ser nulo o puede tener algo 
  final String? imageUrl;
  final FromWho fromWho;
///
  Message({required this.text, this.imageUrl, required this.fromWho}); //Constructor
}
import 'package:flutter/material.dart';

class PerfilHomeScreen extends StatefulWidget{
  final email;
  const PerfilHomeScreen(this.email);

  @override
  _PerfilHomeScreenState createState() => _PerfilHomeScreenState(email);
}

class _PerfilHomeScreenState extends State<PerfilHomeScreen>{

  final String email;
  _PerfilHomeScreenState(this.email);

  @override
  void initState() {
    super.initState();
  }

  MaterialStateProperty<Color> btnBgColor = MaterialStateProperty.all<Color>(Colors.black87);
  MaterialStateProperty<EdgeInsetsGeometry> btnPadding = MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.all(25));

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text("Pagina Inicial",textAlign: TextAlign.center),),automaticallyImplyLeading: false,),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Center(
          child: ListView(
            shrinkWrap: true,
            children: [
              Container(
                height: 300,
                margin: const EdgeInsets.all(25),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Image(image: AssetImage('assets/images/UserEx.png'))
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Text('Locatario', style: TextStyle(color: Color.fromRGBO(35, 166, 240, 1), fontWeight: FontWeight.w600)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Text('Nome Usuario', style: TextStyle(fontWeight: FontWeight.w600),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Text('Algueis em Cidade Continental', style: TextStyle(fontWeight: FontWeight.w300),),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: btnBgColor,
                      padding: btnPadding,
                    ),
                    onPressed: () => {},
                    child: const Text("Configura????es Gerais", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600))
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: btnBgColor,
                      padding: btnPadding,
                    ),
                    onPressed: () => {Navigator.pop((context))},
                    child: const Text("Voltar", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600))
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
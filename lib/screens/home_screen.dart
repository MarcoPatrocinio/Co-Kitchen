import 'package:flutter/material.dart';
import './perfil_home_screen.dart';



void navigatePerfil(context, pEmail){
  Navigator.push(context, MaterialPageRoute(
      builder: (context) => PerfilHomeScreen(pEmail)
    ),
  );
}

class HomeScreen extends StatefulWidget{
  final email;
  const HomeScreen(this.email);

  @override
  _HomeScreenState createState() => _HomeScreenState(email);
}

class _HomeScreenState extends State<HomeScreen>{

  final String email;
  _HomeScreenState(this.email);
  //futureNotaCabecalho = getNotas(this.company);
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
                height: 150,
                margin: const EdgeInsets.all(25),
                child: const Image(image: AssetImage('assets/images/Logo.png')),
              ),
              Padding(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: btnBgColor,
                        padding: btnPadding,
                      ),
                      onPressed: () => navigatePerfil(context, email),
                      child: const Text("Acessar Perfil", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600))
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
                    child: const Text("Seus Pontos de Alugueis", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600))
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
                    child: const Text("Sair", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600))
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
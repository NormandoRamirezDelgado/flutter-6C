import 'package:flutter/material.dart';
import 'package:listview/themes/app_theme.dart';

class ListViewBuilderScreen extends StatefulWidget {
   
  const ListViewBuilderScreen({super.key});

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {

  final List<int> imagesIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      //print( '${scrollController.position.pixels}, ${scrollController.position.maxScrollExtent}');
      if (scrollController.position.pixels + 500 >= scrollController.position.maxScrollExtent){
        fetchData();
      }
    });
  }

  Future fetchData() async {
    //Si esta en true no hara nada
    if ( isLoading ) return;

    isLoading = true;
    setState(() {});

    await Future.delayed(Duration( seconds: 3));

    add5();

    isLoading = false;
    setState(() {});
  }

  void add5(){
    final lastId = imagesIds.last;
    imagesIds.addAll(
      [1, 2, 3, 4, 5].map((e) => lastId + e)
    );
    setState(() {});

    //Para evitar l salto que den las imagenes si no estoy al final
    //if (scrollController.position.pixels + 100 <= scrollController.position.maxScrollExtent) return;

    scrollController.animateTo(
      scrollController.position.pixels + 120, 
      duration: Duration( milliseconds: 300), 
      curve: Curves.fastOutSlowIn
    );
  }

  Future<void> onRefresh() async {
    //Establecer el tiempo de espera
    await Future.delayed(Duration(seconds: 2));
    //Purgar el listado
    final lastId = imagesIds.last;
    imagesIds.clear();
    imagesIds.add(lastId + 1);
    add5();
  }

  @override
  Widget build(BuildContext context) {

    //Obtenemos el tamaño de la pantalla
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Stack(
          children: [
            RefreshIndicator(
              onRefresh: onRefresh,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                controller: scrollController,
                itemCount: imagesIds.length,
                itemBuilder: (BuildContext context, int index) {
                  return FadeInImage(
                    width: double.infinity,
                    height: 300,
                    placeholder: AssetImage('assets/loading.gif'), 
                    image: NetworkImage('https://picsum.photos/500/300?image=${ imagesIds[ index ]}'),
                    fit: BoxFit.cover,
                    //Quitar el brinco de las imagenes 
                  );
                }
              ),
            ),

            if ( isLoading )
              Positioned(
                bottom: 40,
                //Porque es la mitad del container
                //Y así se ajusta a la mitad menos los 30 del widget
                left: size.width * 0.5 - 30,
                child: _LoadingIcon()
              )
          ],
        ),
      )
    );
  }
}

class _LoadingIcon extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 0.6),
        shape: BoxShape.circle
      ),
      child: CircularProgressIndicator( color: AppTheme.primary,),
    );
  }
}
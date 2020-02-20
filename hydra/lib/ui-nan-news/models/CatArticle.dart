class CatArticle{
  int id;
  String articleName;
  String photo;
  String content;
  
  CatArticle({
    this.id,
    this.articleName,
    this.photo,
    this.content
  });
}

List<CatArticle> ourArticle = [
   CatArticle(
            id: 1,
            articleName: "Tendance Afro style",
            content: "Tendance Afro style, Tendance Afro style, Tendance Afro style",
            photo: "assets/1.jpg"
          ),



          CatArticle(
            id: 2,
            articleName: "Coronavirus",
            content: "Coronavirus en chine fait bcp de degats",
            photo: "assets/2.jpg"
          ),

           CatArticle(
            id: 3,
            articleName: "The voice afrique francophone",
            content: "Coronavirus en chine fait bcp de degats",
            photo: "assets/3.jpg"
          ),

           CatArticle(
            id: 4,
            articleName: "Le Nouchi fait son entrée dans le dictionnaire",
            content: "Certains mots du Nouchi font leur entrée dans le dictionnaire",
            photo: "assets/4.jpg"
          ),

          CatArticle(
            id: 5,
            articleName: "Football ",
            content: "Ballon d'or Messi 10",
            photo: "assets/5.jpg"
          ),

];
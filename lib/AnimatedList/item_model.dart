class ItemModel{
  final String image,name,subdetail;

  ItemModel({
    required this.image,
    required this.name,
    required this.subdetail
  });
  static List<ItemModel> listItems=[
    ItemModel(
      image: 'assets/images/x1.jpg', 
      name: 'NIKE1', 
      subdetail: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book"
    ),
    ItemModel(
      image: 'assets/images/x2.jpg', 
      name: 'NIKE2', 
      subdetail: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book"
    ),
    ItemModel(
      image: 'assets/images/x3.jpg', 
      name: 'NIKE3', 
      subdetail: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book"
    ),
    ItemModel(
      image: 'assets/images/x4.jpg', 
      name: 'NIKE4', 
      subdetail: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book"
    ),
    ItemModel(
      image: 'assets/images/x5.jpg', 
      name: 'NIKE5', 
      subdetail: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book"
    ),
    ItemModel(
      image: 'assets/images/x6.jpg', 
      name: 'NIKE6', 
      subdetail: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book"
    ),
  ];
}
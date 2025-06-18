class catalogmodel{
  static final items=[
    Item(id: 01,
        name: "iPhone 15 Pro Max",
        desc: "Apple iPhone 15th generation",
        price: 1299,
        color: "#33505a",
        image:"https://images.macrumors.com/t/OGS-wMpuHXbX6VkpJd6urJH1rEg=/1600x0/article-new/2023/09/iphone-15-pro-gray.jpg"
    )

  ];

}




class Item{

  final num id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.image});

}


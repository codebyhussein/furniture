class Product {
  final double? price;
  final String? title, description, image, discount;
  int? reviewCount;
  double? starNumber;
  Product(
      {this.price,
      this.title,
      this.starNumber,
      this.description,
      this.image,
      this.discount,
      this.reviewCount});
}

// list of newProducts

List<Product> newProducts = [
  Product(
    price: 56.15,
    reviewCount: 255,
    starNumber: 4.5,
    discount:
        'Get additional 15% instant discount upto \$10 maximum on selected products',
    title: "Leatherette Sofa",
    image: "assets/images/sofa.png",
    description:
        "A leatherette sofa is a type of sofa designed to mimic the appearance and texture of genuine leather, but it is typically made from synthetic materials such as polyurethane or vinyl. ",
  ),
  Product(
      price: 39.88,
      reviewCount: 400,
      starNumber: 2.5,
      discount:
          'Get additional 60% instant discount upto \$28 maximum on selected products',
      title: "Dinning sofa",
      image: "assets/images/recentlyItem4.png",
      description:
          "Unlike traditional dining chairs, a dining sofa typically features a long, cushioned seat with a backrest, akin to a small sofa or bench. Here is a description of a dining sofa:"),
  Product(
    price: 68.14,
    reviewCount: 200,
    starNumber: 3.5,
    discount:
        'Get additional 20% instant discount upto \$15 maximum on selected products',
    title: "Wood  Table",
    image: "assets/images/table.png",
    description:
        "A wood table is a functional and aesthetically pleasing piece of furniture that serves as a versatile surface for various activities and purposes",
  ),
  Product(
    price: 39.88,
    reviewCount: 100,
    starNumber: 5,
    discount:
        'Get additional 50% instant discount upto \$20 maximum on selected products',
    title: "Leather Chair",
    image: "assets/images/newItem1.png",
    description:
        "A leather chair is a classic and timeless piece of furniture that is typically upholstered with genuine leather. It is known for its durability, comfort.",
  ),
  Product(
      price: 39.88,
      reviewCount: 400,
      starNumber: 2.5,
      discount:
          'Get additional 60% instant discount upto \$28 maximum on selected products',
      title: "Dinning Chair",
      image: "assets/images/newItem2.png",
      description:
          "A dining chair is a functional and essential piece of furniture designed for seating during meals. These chairs come in a wide range of styles."),
];
// list of recentlyProducts

List<Product> recentlyProducts = [
  Product(
    price: 56.15,
    reviewCount: 200,
    starNumber: 4.5,
    discount:
        'Get additional 15% instant discount upto \$10 maximum on selected products',
    title: "Leatherette Sofa",
    image: "assets/images/recentlyItem0.png",
    description:
        "A leatherette sofa is a type of sofa designed to mimic the appearance and texture of genuine leather, but it is typically made from synthetic materials such as polyurethane or vinyl. ",
  ),
  Product(
    price: 90.15,
    reviewCount: 500,
    starNumber: 5,
    title: "Stool Table",
    discount:
        'Get additional 15% instant discount upto \$10 maximum on selected products',
    image: "assets/images/recentlyItem1.png",
    description:
        "A stool table is a versatile piece of furniture that combines the functions of both a stool and a table. It typically features a compact design with a flat top surface that can serve as a small table",
  ),
  Product(
    price: 70.14,
    reviewCount: 350,
    starNumber: 3.5,
    title: "Royal Palm Sofa",
    discount:
        'Get additional 15% instant discount upto \$10 maximum on selected products',
    image: "assets/images/recentlyItem2.png",
    description:
        "The Royal Palm Sofa is an opulent and regal furniture piece characterized by its elegant design, intricate detailing, and luxurious upholstery.",
  ),
  Product(
    price: 100.88,
    reviewCount: 150,
    starNumber: 1.5,
    title: "Leather Chair",
    discount:
        'Get additional 15% instant discount upto \$10 maximum on selected products',
    image: "assets/images/recentlyItem3.png",
    description:
        "A leather chair is a classic and timeless piece of furniture that is typically upholstered with genuine leather. It is known for its durability, comfort.",
  ),
];

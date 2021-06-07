class Mobile {
  final String mobilename;
  final double rate;
  final int review;
  final int piece;
  final int price;
  final int quantity;
  final String image;

  Mobile(
      {this.mobilename,
      this.rate,
      this.review,
      this.piece,
      this.price,
      this.quantity,
      this.image});

  static List<Mobile> allMobiles() {
    var listOfmobiles = <Mobile>[];
    listOfmobiles.add(new Mobile(
        mobilename: "Iphone 12",
        rate: 5.0,
        review: 23,
        piece: 20,
        price: 90,
        quantity: 1,
        image: "one.jpg"));

    listOfmobiles.add(new Mobile(
        mobilename: "Note 20 Ultra",
        rate: 5.0,
        review: 23,
        piece: 20,
        price: 90,
        quantity: 1,
        image: "two.jpg"));

    listOfmobiles.add(new Mobile(
        mobilename: "Macbook Air",
        rate: 5.0,
        review: 23,
        piece: 20,
        price: 90,
        quantity: 1,
        image: "three.jpg"));

    listOfmobiles.add(new Mobile(
        mobilename: "Macbook Pro",
        rate: 5.0,
        review: 23,
        piece: 20,
        price: 90,
        quantity: 1,
        image: "four.jpg"));

    listOfmobiles.add(new Mobile(
        mobilename: "Gaming PC",
        rate: 5.0,
        review: 23,
        piece: 20,
        price: 90,
        quantity: 1,
        image: "five.jpg"));

    listOfmobiles.add(new Mobile(
        mobilename: "Backlit Keyboard",
        rate: 5.0,
        review: 23,
        piece: 20,
        price: 90,
        quantity: 1,
        image: "six.jpg"));

    listOfmobiles.add(new Mobile(
        mobilename: "Mercedes",
        rate: 5.0,
        review: 23,
        piece: 20,
        price: 90,
        quantity: 1,
        image: "seven.jpg"));

    listOfmobiles.add(new Mobile(
        mobilename: "Ipad",
        rate: 5.0,
        review: 23,
        piece: 20,
        price: 90,
        quantity: 1,
        image: "eight.jpg"));

    listOfmobiles.add(new Mobile(
        mobilename: "Roadster",
        rate: 5.0,
        review: 23,
        piece: 20,
        price: 90,
        quantity: 1,
        image: "nine.jpg"));

    listOfmobiles.add(new Mobile(
        mobilename: "Royal Field",
        rate: 5.0,
        review: 23,
        piece: 20,
        price: 90,
        quantity: 1,
        image: "ten.jpg"));

    return listOfmobiles;
  }
}

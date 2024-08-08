void main() {
  final brands = Brands.msi;
  print(brands.index);
  print(brands.name);

  if (brands == Brands.msi) {} //better

  if (brands.name == 'msi') {} //good

  switch (brands) {
    case Brands.dell:
    case Brands.acer:
    case Brands.asus:
    case Brands.msi:
    case Brands.casper:
  }

  if (brands.isChechName('acer')) {
    print(true);
  }
}

enum Brands {
  dell,
  acer,
  asus,
  msi,
  casper,
}

extension BrandsSelectedExtension on Brands {
  bool isChechName(String name) {
    return this.name == name;
  }
}

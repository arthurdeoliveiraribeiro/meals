class Settings{
  bool isGlutenFree;//sem glutem 
  bool isLactoseFree;//sem Lactose 
  bool isVegan;//sem glutem 
  bool isVegetarian;//

  Settings({
    this.isGlutenFree = false,
    this.isLactoseFree = false,
    this.isVegan = false,
    this.isVegetarian = false,
  });
}
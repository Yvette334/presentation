# Reorderablelist view

A list whose items the user can interactively reorder by dragging.

## How to run
1. Install Flutter
   
2. Clone the repostitory
```
bash
git clone https://github.com/Yvette334/presentation.git

```
```
bash

cd widget
flutter run
```    

## Demostrated Attributes

1. onReorder: This is a required callback that handles the moving of the items. It uses the newIndex and OldIndex inorder to update the data from the list.
   
2. children: The list of widgets that make up the scrollable content of the app.

3. key: It is mandatory property for each child, it allows the flutter to identify each item and how it moves during the drag

![Image Alt](https://github.com/Yvette334/presentation/blob/af3c1675406fa759223efa4761f802eb4d782ec8/image.png).

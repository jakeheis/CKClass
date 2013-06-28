CKClasses
=====
CKClasses perform the same basic function as CSS classes: they allow a certain set of appearance-related rules to be shared among elements across an entire application.

Usage
=====
Add your class:
```
[CKClassManager addViewClass:^(UIView *view) {
    [view setBackgroundColor:[UIColor redColor]];
    [view setAlpha:0.4f];
} forName:@"mysterious-red"];
```
then apply it to any view across your entire app:
```
[CKClassManager applyClass:@"mysterious-red" toView:myView];
```
About
=====
Besides being an awesome little project than can reduce a lot of code duplication, this project was created in order to [put Objective-C back on the map](https://objectivechackathon.appspot.com/). 

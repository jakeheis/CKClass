CKClasses
=====
CKClasses perform the same basic function as CSS classes: allowing a certain set of appearance rules to be applied to elements across the application.

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
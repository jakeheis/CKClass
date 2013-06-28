CKClass
=====
A CKClass performs the same basic function as a CSS class, but for iOS. It allows a certain set of appearance-related rules to be shared among certain elements across an entire application.

Usage
=====
Add your class - you can add as many as you want, and add that at any point within your app:
```
[CKClassManager addViewClass:^(UIView *view) {
    [view setBackgroundColor:[UIColor redColor]];
    [view setAlpha:0.4f];
} forName:@"mysterious-red"];
```
then apply it to any view(s) across your entire app:
```
[CKClassManager applyClass:@"mysterious-red" toView:myView];
[CKClassManager applyClass:@"mysterious-red" toView:mySecondView];
```
About
=====
Besides being an awesome little project than can reduce a lot of code duplication, this project was created in order to [put Objective-C back on the map](https://objectivechackathon.appspot.com/). 

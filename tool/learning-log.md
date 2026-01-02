# Tool Learning Log

## Tool: **Flutter**

## Project: **CheerCharm ☺️**
### Idea: an app

What it can do:
* It can give the user motivation quotes/advice.
* The user can make a “to do list” for organization.
* If bored, the user can play some games in the “games” section.

Purpose:
* The purpose is to make a project to make people less depressed!
---

### 10/5/2025: What is Flutter?

Link: [Flutter Crash Course #1 - What is Flutter?](https://youtu.be/j_rCDc_X-k8?si=7SZVABDTw0zlmIqr)

Notes:

What is Flutter?
* a framework for creating cross-platform applications

It's for Android, iOS, Desktop, and Web.

It's written using the Dart programming language & takes advantage of Material Design features.

It has similar layout principles to CSS.

This is a website, which is the official package repository for darts & flutter: [A website for packages](pub.dev)

Flutter website: [Flutter codes & examples](https://docs.flutter.dev/)

Link: [Flutter Crash Course #2 - Installing on Windows](https://youtu.be/DvZuJeTHWaw?si=OveUKH7cdz3vChn_)

![alt text](image.png)

My Install Flutter Progress:
![alt text](image-1.png)
![alt text](image-2.png)
![alt text](image-3.png)
![alt text](image-4.png)

My link to code tinker: [Click the link](https://github.com/nancyc0337/apcsa-freedom-project/tree/main/flutter/one)

### 10/27/2025 & 11/2/2025: Making a New Flutter Project

Link: [Flutter Crash Course #4 - Making a New Flutter Project](https://youtu.be/adNHZVBd284?si=CT8Yu91mnqcQ_Z4Q)

Notes:

To make up a brand new flutter project:
* navigate to the directory that you want to create the project in

! try not to have any directory with any spaces or special characters.

use _ if need to use space

`flutter create name` = creates the project

`flutter run` = runs the project

Click mobile emulator, Start the name of the emulator, it'll show an iphone, will demonstrate how our code will show on our phone.

Since I didn't have the emulator, I have to download android studio: https://developer.android.com/studio.

Pictures of downloading the android studio:

![alt text](image-5.png)

![alt text](image-6.png)

![alt text](image-7.png)

![alt text](image-8.png)

![alt text](image-9.png)

![alt text](image-10.png)

![alt text](image-11.png)

![alt text](image-12.png)

This is where & what my code will show:

![alt text](image-13.png)

Link: [Flutter Crash Course #5 - Quick Project Overview](https://youtu.be/qdyt8UO-MqM?si=4hUVkXfj3QYbpOh3)

Notes:

* inside the `lib` folder, there should be a `main.dart` file
  * mostly where all my application is going to be
  * where I'm going to do most of my coding

Code #1:

``` flutter
void main() {
  runApp(const MyApp());
}
```
Explanation:
* my Kickstart of my application
* runs automatically
* `runApp` actually runs the application

In `runApp`, there we can have a variable that we can use as a class and use it as an argument (root widget).

Code #2:

``` flutter
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
```
Explanation:
* `Widget build(BuildContext context) {}` = root of my application
* `home: const MyHomePage(title: 'Flutter Demo Home Page'),` = title on my application

* `title: Text(widget.title),` = title

* `body: Center()` = Center is a layout widget. It takes a single child and positions it in the middle of the parent.

* `child: Column()` = Column is also a layout widget. It takes a list of children and arranges them vertically. By default, it sizes itself to fit its children horizontally, and tries to be as tall as its parent.

Link: [Flutter Crash Course #6 - Widgets](https://youtu.be/L0izVqsaxLI?si=4Gnkv4zZsbDYvzpF)

Notes:

What is a widget?
* Widget is actually just a class

* `class MyApp extends StatelessWidget {}`

Explanation:
* stateless means this widget won't contain any state / data which changes over time / in response to something like user clicking on a button...

* if we want to output an image = use an image widget
* if we need a container for a layout = use a container widget
* if we need a column for a layout = use a column widget
* we can also make our own custom widget

...

Widget Tree:

![alt text](image-14.png)

![alt text](image-15.png)

* most widgets will be pre-made or customable

My link to code tinker: [Click the link](https://github.com/nancyc0337/apcsa-freedom-project/tree/main/flutter/one)

### 11/16/2025: MaterialApp & Scaffold

Link: [Flutter Crash Course #7 - MaterialApp & Scaffold](https://youtu.be/U0vS27vqKSo?si=KNA8m3Xi48GprdTU)

Notes:

`runApp(MaterialApp());`
* prebuilt widget
* acts like a wrapper
* applies Google's material design styles / makes them available to all of the built-in core widgets like buttons, app bars, text...

`import 'package:flutter/material.dart';`
* core package provided by flutter
  * no need to install anything extra

! on top of the **main.dart** file, starter code

* material app widget accepts a bunch of different optional named arguments when we use it

![alt text](image-16.png)

For any widget I hover over: The arguments are white & respective types are in green.

If we hover the argument name, we can see some information about it.

![alt text](image-17.png)

``` flutter
void main() {
  runApp(const MaterialApp(
    home: Text('hello, ninjas'),
  ));
}
```

* `constant` = it knows that the value won't change after compile time
  * therefore if the widget tree ever gets rebuilt anything with a constant in front of it can be reused again rather than rebuilt from scratch
  * flutter knows it's a constant and its value is always going to be the same

* we can optimize performance by making something a constant
* you might also see red error lines when something that was previously a const cannot be one anymore where we might have changed something within that widget in which case we just remove the const keyword

![alt text](image-19.png)

It shows really horrible looking text at the top with a double yellow line underneath it.

My link to code tinker: [Click the link](https://github.com/nancyc0337/apcsa-freedom-project/tree/main/flutter/two)

### 11/23/2025: MaterialApp & Scaffold

Link: [Flutter Crash Course #7 - MaterialApp & Scaffold](https://youtu.be/U0vS27vqKSo?si=KNA8m3Xi48GprdTU)

Notes:

Link: https://api.flutter.dev/flutter/material/MaterialApp-class.html

Problem: Text widgets that lack a Material ancestor will be rendered with an ugly red/yellow text style.

Solution: The typical fix is to give the widget a Scaffold ancestor. The Scaffold creates a Material widget that defines its default text style.

``` flutter
appBar: AppBar(
  title: const Text('My Coffee Id'),
  backgroundColor: Colors.brown[200],
  centerTitle: true,
),
body: const Text('Hello, ninjas!'),
```
Explanation:
* `title: const Text('My Coffee Id'),` = prints out the text "My Coffee Id"
* `backgroundColor: Colors.brown[200],` = gives out the background color & the value inside [] shows the darkness/lightness of the color
* `centerTitle: true,` = title is in the center of the screen
* `body: const Text('Hello, ninjas!'),` = the text will print in the body

My output of my code:

![alt text](image-20.png)

My link to code tinker: [Click the link](https://github.com/nancyc0337/apcsa-freedom-project/tree/main/flutter/two)

### 12/7/2025: Stateless Widgets

Link: [Flutter Crash Course #8 - Stateless Widgets](https://youtu.be/tDKgJEvhaP8?si=dBIKE5gKsaySj9_q)

Notes:

To get a new stateless widget:
* type stl & then hitting tab

(stl means stateless)

Then this should pop up:

```flutter
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
```

* I should start my class names with a captial letter

`extends StatelessWidget` = it inherits all the functionality that a stateless widget should have in flutter
* stateless means the widget won't contain any state that changes over time or in reaction to maybe an user event

`const MyWidget({super.key});` = constructor for the class
* takes in a single argument called key (defined within the widget class it inherits from)
  * `{super.key}` passes that key to its parent class
  * all widgets in flutter have this optional key argument

``` flutter
@override
Widget build(BuildContext context) {
  return const Placeholder();
}
```
* build function, should return a widget/widget tree

`@override` = override declaration, overriding the inherited version of the function
* the function also exists on the parent class that we extend inside the function
  * inside the override declaration, we automatically get access to a build context object as a parameter

* inside the build method, we'll return a widget/widget tree

To see the change automatically for the stateless widgets, click the "save and hot reload button" (yellow lightning bolt).

![alt text](image-21.png)

The point of using stateless widget:

1) we've now enabled hot reload during development for any changes we make within a build function

2) the home widget can return much more content than just a text widget
* it can return a whole widget tree, with a bunch of widgets within it

Process:

1) Before adding stateless widget

Code:

![alt text](image-22.png)

Output:

![alt text](image-23.png)

2) stateless widget with the placeholder

Code:

![alt text](image-24.png)

Output:

![alt text](image-25.png)

3) stateless widget with text

Code:

![alt text](image-26.png)

Output:

![alt text](image-27.png)

I can use click "save and hot reload button" (yellow lightning bolt), no need to click "restart" (green reload arrow).

Code:

![alt text](image-28.png)

Output:

![alt text](image-29.png)

My link to code tinker: [Click the link](https://github.com/nancyc0337/apcsa-freedom-project/tree/main/flutter/three)

### 12/14/2025: Containers

Link: [Flutter Crash Course #9 - Containers](https://youtu.be/KgINruWilhc?si=N5KLUR9NqUTMkWkZ)

Notes:

Container widgets
* act as wrappers to other content/other widgets
* flexible

* when the container doesn't have a child, it takes up all of the available space around it by default

Code:

![alt text](image-31.png)

Output:

![alt text](image-30.png)

Code:

![alt text](image-33.png)

Output:

![alt text](image-32.png)

Explanation:

* the width & height affects how high & long the container/child is

Code:

![alt text](image-35.png)

Output:

![alt text](image-34.png)

Explanation:

* `EdgeInsets` is how we will provide padding & margins
* `all` = apply padding/margin to all sides

Code:

![alt text](image-37.png)

Output:

![alt text](image-36.png)

Explanation:

* `EdgeInsets` is how we will provide padding & margins
* `only` = only one side

Code:

![alt text](image-39.png)

Output:

![alt text](image-38.png)

Explanation:

* `EdgeInsets.fromLTRB`
  * `LTRB` stands for **L**eft **T**op **R**ight **B**ottom

Code:

![alt text](image-41.png)

Output:

![alt text](image-40.png)

Explanation:

To decorate the text: `style: TextStyle(),`

Font-size: `fontSize #,`

spacing of the letters: `letterSpacing: #,`

how to decorate the style of the text: `decoration: TextDecoration.style,`

how to apply font: `fontStyle: FontStyle.style,`

My link to code tinker: [Click the link](https://github.com/nancyc0337/apcsa-freedom-project/tree/main/flutter/four)

## Break Time 

### 12/30/2025:

Link: [Flutter Crash Course #9 - Containers](https://youtu.be/KgINruWilhc?si=N5KLUR9NqUTMkWkZ)

Notes:

* containers act as wrappers to other content or to other widgets 

Code: 

![alt text](image-42.png)

Output: 

![alt text](image-43.png)

Code: 

![alt text](image-44.png)

Output: 

![alt text](image-45.png)

Code:

![alt text](image-47.png)

Output:

![alt text](image-46.png)

Code:

![alt text](image-48.png)

Output:

![alt text](image-49.png)

Reminder: If you're ever unsure of a value should be, hover over the argument name & look at what the property value should be

My link to code tinker: [Click the link](https://github.com/nancyc0337/apcsa-freedom-project/tree/main/flutter/five)

Link: [Flutter Crash Course #10 - Imports & Quick Refactor](https://youtu.be/FuTbF7DfECM?si=yIdKh4AWrMo8UGd4)

Notes: 

#### Rewrite

Code: 

![alt text](image-50.png)

Output:

![alt text](image-51.png)

#### Imports

Code (main.dart):

![alt text](image-53.png)

Code (home.dart): 

![alt text](image-54.png)

Output: 

![alt text](image-52.png)

* to get the import from another `.dart` file, click the yellow light bulb to see the content, click the first one & the import will pop up for you

My link to code tinker: [Click the link](https://github.com/nancyc0337/apcsa-freedom-project/tree/main/flutter/six)

### 1/1/2026

Link: [Flutter Crash Course #11 - Columns](https://youtu.be/dLnwHbbhABE?si=gcMQCUIGkKIy9XHs)

Notes:

How the columns works:

![alt text](image-59.png)

* If we want the columns going from top to bottom, we would use the main axis.
* If we want the columns going from left to right, we would use the cross axis.

* don't forget the `child` widget

Code:

![alt text](image-56.png)

Output:

![alt text](image-55.png)

Code: 

![alt text](image-58.png)

default behavior: stack one on top of the other in the center

Output:

![alt text](image-57.png)

Code:

![alt text](image-61.png)

`crossAxisAlignment: CrossAxisAlignment.start,` shows the columns start at the left of the screen's column 

Output:

![alt text](image-60.png)

Code:

![alt text](image-63.png)

`crossAxisAlignment: CrossAxisAlignment.end,` shows the columns start at the right of the screen's column

Output:

![alt text](image-62.png)

Code:

![alt text](image-64.png)

`crossAxisAlignment: CrossAxisAlignment.stretch,` stretches the columns 

Output:

![alt text](image-65.png)

Code:

![alt text](image-66.png)

`mainAxisAlignment: MainAxisAlignment.center,` sets the column in the center in the available room

Output: 

![alt text](image-67.png)

Code:

![alt text](image-68.png)

`mainAxisAlignment: MainAxisAlignment.end,` sets the column at the bottom of the available room

Output: 

![alt text](image-69.png)

Code:

![alt text](image-70.png)

`mainAxisAlignment: MainAxisAlignment.spaceBetween,` sets the equal amount of space between each column in the available room

Output:

![alt text](image-71.png)

Code:

![alt text](image-72.png)

`mainAxisAlignment: MainAxisAlignment.spaceAround,` has space around the column

Output:

![alt text](image-73.png)

Code (home.dart): 

![alt text](image-74.png)

Output:

![alt text](image-75.png)

Code (home.dart): 

![alt text](image-77.png)

Output:

![alt text](image-76.png)

My link to code tinker: [Click the link](https://github.com/nancyc0337/apcsa-freedom-project/tree/main/flutter/seven)

Link: [Flutter Crash Course #12 - Rows](https://youtu.be/wVrEWw_Q-Wg?si=3ti2gtkuZddiyNTm)

Notes:

How the rows works:

![alt text](image-80.png)

* If we want the rows going from top to bottom, we would use the cross axis.
* If we want the rows going from left to right, we would use the main axis.

* don't forget the `child` widget

Code:

![alt text](image-78.png)

default: sets the rows in the center and to the left

Output:

![alt text](image-79.png)

Code:

![alt text](image-82.png)

`mainAxisAlignment: MainAxisAlignment.end,` sets the rows to the end of the screen

Output:

![alt text](image-81.png)

Code:

![alt text](image-83.png)

`mainAxisAlignment: MainAxisAlignment.center,` sets the rows to the center of the screen 

Output:

![alt text](image-84.png)

Code:

![alt text](image-85.png)

`crossAxisAlignment: CrossAxisAlignment.end,` sets the rows to the bottom of the screen

Output:

![alt text](image-86.png)

Code:

![alt text](image-87.png)

`crossAxisAlignment: CrossAxisAlignment.center` shows the rows in the center of the screen

Output: 

![alt text](image-88.png)

Code:

![alt text](image-89.png)

`crossAxisAlignment: CrossAxisAlignment.start,` shows the rows start at the top of the screen

Output:

![alt text](image-90.png)

Code:

![alt text](image-92.png)

`crossAxisAlignment: CrossAxisAlignment.stretch,` stretches the whole row

Output:

![alt text](image-91.png)

Code: 

(coffee_prefs.dart)

![alt text](image-94.png)

(main.dart)

![alt text](image-95.png)

(home.dart)

![alt text](image-96.png)

Output:

![alt text](image-93.png)

Code (coffee_prefs.dart):

![alt text](image-98.png)

We get 50 pixels of space between the texts.

Output:

![alt text](image-97.png)

My link to code tinker: [Click the link](https://github.com/nancyc0337/apcsa-freedom-project/tree/main/flutter/eight)

Link: [Flutter Crash Course #13 - Images](https://youtu.be/u36eTxuGTsc?si=zVFy1bSciMR8g_0w)

Notes:

Link: [Flutter Crash Course #14 - Expanded Widget](https://youtu.be/awQEMKzXBlo?si=-vX4ky3-oSiXO2Pn)

Notes:

Link: [Flutter Crash Course #15 - Buttons & Press Events](https://youtu.be/Xqs_yHtxUiE?si=FjCpXNgD5IX5T-wM)

Notes:

Link: [Flutter Crash Course #16 - Stateful Widgets](https://youtu.be/Ab6TWjayrR0?si=wnna-ZhkUFiWzVHZ)

Notes:

Link: [Flutter Crash Course #17 - Control Flow in Lists](https://youtu.be/SzMf_RjXSG4?si=RczAatuvdOgGtRZm)

Notes:

Link: [Flutter Crash Course #18 - Making Re-usable Widgets](https://youtu.be/i6ZiiYJpuEk?si=ZvpUF6p_qs_HYHNt)

Notes:

<!--
* Links you used today (websites, videos, etc)
* Things you tried, progress you made, etc
* Challenges, a-ha moments, etc
* Questions you still have
* What you're going to try next
-->

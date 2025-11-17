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

### 10/5/2025:

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

### 10/27/2025 & 11/2/2025:

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

### 11/16/2025:

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

```
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

![alt text](image-18.png)

It shows really horrible looking text at the top with a double yellow line underneath it.

My link to code tinker: [Click the link](https://github.com/nancyc0337/apcsa-freedom-project/tree/main/flutter/two)

<!--
* Links you used today (websites, videos, etc)
* Things you tried, progress you made, etc
* Challenges, a-ha moments, etc
* Questions you still have
* What you're going to try next
-->

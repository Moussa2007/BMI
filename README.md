# bmi

A new Flutter project. It is a simple app. contains two screens as follows:
Screen 1 - BMI calculating screen 

![Screen1](https://github.com/user-attachments/assets/89034542-7e06-417b-92dd-d1d530f200a0)
![Screen2](https://github.com/user-attachments/assets/555c0a0d-bb12-45b5-8588-f0cb71b0a199)

TOPIC SEARCH: 
Lifecycle of statefull widget:
A stateful widget in Flutter is a component that can maintain state and update its appearance in response to changes. The lifecycle of a stateful widget consists of a series of methods that are invoked at different stages of its existence:
1. createState(): Upon creation of the stateful widget, its constructor is called, which initializes the widget.
   The createState() method is then invoked, which creates the state object for the widget.
   When Flutter is instructed to build a StatefulWidget, it immediately calls createState()
   <img width="628" height="287" alt="stf-1" src="https://github.com/user-attachments/assets/d63e3d92-c6fd-47f4-8386-f3b62b550b51" />

2. initState: This method is called after the widget is inserted into the widget tree, when the object is created for the first time.
   When inserting the render tree when invoked, this function is called only once in the life cycle. Here you can do some initialization, such as
   initialization State variables.
     <img width="539" height="243" alt="stf-2" src="https://github.com/user-attachments/assets/d55b9fb2-f098-4f39-a59a-b231fe42fd54" />

3. build: Builds the widget’s user interface based on its current state. This method is called initially when the widget is first
   inserted into the widget tree, and may be called repeatedly during the lifecycle whenever the widget needs to be rebuilt.
   <img width="487" height="115" alt="stf-3" src="https://github.com/user-attachments/assets/7f9b5c8a-6b9b-4535-b246-f622f7cd6e00" />

4. setState: Triggers a rebuild of the widget when the state changes and the associated methods are called again.
   <img width="596" height="260" alt="stf-4" src="https://github.com/user-attachments/assets/e7a5d748-fc70-4f50-b8ca-a984ada45cc5" />

6. dispose: Called when the widget is removed from the widget tree permanently, allowing you to release resources held by the widget.
   <img width="456" height="198" alt="stf-5" src="https://github.com/user-attachments/assets/0cd36790-bfd8-47de-8e88-0a9ed8c80365" />

6. reassemble: Called when the application is reassembled during hot reload.

   Best regards,
   Mohamed Moussa

** Finite State Machine **
A Finite State Machine (FSM) is a mathematical model that is used to explain and understand the behavior of a digital system.
More specifically, it is a structured and systematic model that helps to understand the behavior of a sequential circuit 
that exists in a finite number of states at a given point of time.In more simple words, a synchronous sequential circuit
is also called as Finite State Machine FSM, if it has a finite number of states.The transition of these finite states 
takes place based on the internal or external inputs that results in the predictable and systematic changes in the behavior of the system.

Components of a Finite State Machine:

Finite States-
The finite states are nothing but the distinct modes or conditions in the given system. 
Each of these finite states represents a specific behavior. In digital system representation,
these finite states are generally represented through symbols or labels.

State Transitions-
In terms of finite state machines, the state transition can be defined as the change from one state to another.
This change in state or state transition takes placed based on some specific inputs or conditions. 
These state transitions are generally triggered by events which are associated with some rules or conditions and determine the next state of the system.

State Diagram-
The state transition and the behavior of a finite state machine can be represented in a graphical form
that is known as state diagram of the finite state machine.

Inputs-
The inputs to the finite state machines are the external signals that trigger the state transitions in the system.
These inputs are to be entered into the finite state machine by using sensors, user input devices like mic, keyboard, etc.

Outputs-
The results produced by the system as per the inputs and current states are known as outputs. 
These outputs of the system can be used to trigger events, control actuators, or to provide feedback to the external environment.

### Types of Finite State Machine: There are two types of finite state machines namely,

-Mealy State Machine
-Moore State Machine

Mealy State Machine:
A Finite State Machine is said to be a Mealy state machine, if its outputs depend on both present inputs & present states.
There are two main parts presents in the Mealy state machine. Those are combinational logic circuit and memory element. 
The memory element is useful to provide some part of previous outputs and present states as inputs to the combinational logic circuit.
Based on the present inputs and present states, the Mealy state machine produces outputs. Therefore, the outputs will be valid only 
at positive or negative transition of the clock signal.

Moore State Machine
A Finite State Machine is said to be a Moore state machine, if its outputs depend only on the present states.
There are two parts presents in a Moore state machine. Those are combinational logic and memory.
In this case, the present inputs and present states determine the next states. So, based on next states, Moore state machine produces the outputs. 
Therefore, the outputs will be valid only after transition of the state.

Advantages of Finite State Machine :
-Finite state machines provide a simple and systematic way to model and understand the behavior of digital systems with discrete finite states and transitions between them.
-Finite state machines support modular designs that help to breakdown the complex digital systems into smaller components. 
  Each component of the finite state machine can represent a specific task of the entire system. This allows for easier design, testing, and maintenance.
-Finite state machines provide ease in terms of scalability that allows for addition of new states and transitions,
  and logics to the existing system without altering its fundamental structure or operation. This becomes essential when the system requirement evolve or expand.
-Finite state machines are considered highly efficient in terms of both hardware and software implementations, as they require minimal hardware and software resources 
  such as logic gates, memory, and other processing resources.
-Finite state machines support parallelism. This technology allows the occurrence of multiple states and state transitions simultaneously within the system.
  It also optimizes the performance and improves the responsiveness of the system.
-Finite state machines are versatile tools in the field of digital electronics and computer science,as they find their applications in various fields
  such as digital system design, control system design, software development, development of artificial intelligence, etc.

Applications of Finite State Machine:
-Finite state machines are commonly used in designing and implementation of different types of sequential logic circuits, such as digital counters,
   timers, control units, etc.
-Finite state machines are used in digital control systems to control and regulate the behavior of complex automated systems, like robots, 
   industrial control and automation systems, etc.
-Finite state machines are used in the implementation of communication protocols like network protocols and state-based digital systems like
  data transmission and protocol converters.
-Finite state machines are also used in the field of software development to model and define the behavior of state-based systems in applications,
   to create user interfaces, to implement game mechanics, and to develop workflow management systems.

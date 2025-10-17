This lab uses the following software:

- Xcelium 23.09

# Verification Using Simulation
Cadence® Single-Core xmsim Simulator is the tool used for verification. Navigate to the simulation directory, where you have kept your RTL and testbench (simulation directory).
We will discuss both the graphical as well as the batch mode of invoking the Xcelium tool for simulation.
Go to the “simulation” directory:
`````````````````````
cd simulation
`````````````````````
You will see two files here: `counter.v`, which is the design itself, and `counter_test.v`, which is the testbench, both written in Verilog.

The process of simulation is, in fact, a three-step process:

1. `Compilation`, which is “checking the syntax and semantics of the code.”
2. `Elaboration`, which is “creating the design hierarchy and connecting all the signals within the design.”
3. `Simulation`, which is “simulating the code using the snapshot created during the Elaboration phase.”

The Xcelium tool gives the `xrun` command, which performs all three steps seamlessly, and gives out the simulation results.

# Using xrun in Graphical Mode with the -gui Option

1. Execute the following command:
````````````````````````````````````````
xrun counter.v counter_test.v -access +rwc -gui &
````````````````````````````````````````
`-access` `+rwc` provides probing access to all the signals in the design hierarchy.

`-gui` invokes the graphical mode of the xmsim tool in the following way:
<p align="center">
<img width="460" height="300" src="https://github.com/arcadie-cracan/RTL-to-GDSII-Flow/blob/main/docs/Pics/Xcelium.png">
</p>
2. It opens the SimVision™ tool with the windows, as shown below.
<p align="center">
<img width="460" height="300" src="https://github.com/arcadie-cracan/RTL-to-GDSII-Flow/blob/main/docs/Pics/SimVision.png">
</p>
3. Click on the waveform icon on the Design Browser window after selecting the signals from the design hierarchy, and you can see the waveform as below with the simulation running, with selected signals in the window.
<p align="center">
<img width="460" height="300" src="https://github.com/arcadie-cracan/RTL-to-GDSII-Flow/blob/main/docs/Pics/wavefrom.png">
</p>

# Using xrun in Batch Mode

1. Go to the simulation directory:

```````````
 cd simulation
```````````
<p align="center">
<img width="460" height="300" src="https://github.com/arcadie-cracan/RTL-to-GDSII-Flow/blob/main/docs/Pics/Shell.png">
</p>
2. Execute the following command:

```````````````````
xrun counter.v counter_test.v –access +rwc
````````````````````

<p align="center">
<img width="460" height="300" src="https://github.com/arcadie-cracan/RTL-to-GDSII-Flow/blob/main/docs/Pics/results.png">
</p>

The command creates the file incisive.d as well as the log files in the directory of invocation.

<p align="center">
<img width="460" height="300" src="https://github.com/arcadie-cracan/RTL-to-GDSII-Flow/blob/main/docs/Pics/log.png">
</p>

# <div align="center"> End of Lab.</div> 

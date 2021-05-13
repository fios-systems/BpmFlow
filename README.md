[![Build Status](https://travis-ci.org/brunobuzzi/OrbeonPersistenceLayer.svg?branch=master)](https://github.com/brunobuzzi/BpmFlow)
BPM Flow
=======================
**Note:** the **master** is the current development line and maybe not stable.<br> 
For stable versions check:<br> 
https://github.com/JupiterSmalltalk/BpmFlow/releases

An **Open Source** implementation of **BPM** standart using **GemStone/S**, **Orbeon**, **Bizagi** and **Highcharts**.<br>

**Backoffice Application**
![BpmFlow](https://github.com/brunobuzzi/BpmFlow/blob/master/wiki/bpmflow-backoffice.png)<br>

**Frontoffice Application**
![BpmFlow](https://github.com/brunobuzzi/BpmFlow/blob/master/wiki/bpmflow-frontoffice.png)<br>

**Business Intelligence Application**
![BpmFlow](https://github.com/brunobuzzi/BpmFlow/blob/master/wiki/bpmflow-bi.png)<br>

The manuals of the Backoffice and Frontoffice Applications can be found here:<br>
https://bpmflow.gitbook.io/project/introduction

BPM packages for [GemStone/S](http://www.gemtalksystems.com/) ® implements the BPM standart. Each BPM model is created in [Bizagi Modeler](http://www.bizagi.com/es/productos/bpm-suite/modeler) ® and then exported as **XPDL** file.<br>The **XPDL** file is imported in the **BPM Meta Model Execution Engine** and it can be instantiated and executed inside **GemStone/S**.<br>
The **BPM application** can interact with other systems like [Orbeon](http://www.orbeon.com) ® or use Seaside components. <br>
Inside **Bizagi Modeler** if a task has the extended attribute -*seasideComponent*- then is a **Seaside** task if not then is an **Orbeon** form.<br> 
The execution engine will show a **Seaside** component or an **Orbeon** form depending on the task's definition in the **Bizagi Modeler**.

**Orbeon** is an optional application that interact with the BPM application (can be used or not).<br><br>

To install GemStone/S:<br>
https://github.com/GsDevKit/GsDevKit_home

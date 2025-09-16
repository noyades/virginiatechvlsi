# virginiatechvlsi
Repository to hold tools for VLSI design at Virginia Tech

This is a set of files to run various elements of digital synthesis and APR using industry standard tools. Right now, it is targeted to use Cadence tools, but Synopsys and Open Source tools will be added.

1. To start, you can add your RTL to the rtl folder and then move to the work folder. Edit scripts/syn-generic-vlsiF25_v2.tcl to make sure your paths to std cells are up-to-date.

2. Make sure that Cadence Design Systems GENUS is on your path and launch it (>genus)

3. From the Genus Command Interpretor, type source ../scripts/syn-generic-vlsiF25_v2.tcl

4. Your initial design should be created as a verilog netlist.

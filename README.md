                          ╔╦╗╦╔═╗╔═╗  ┬┌┐┌  ╦  ╦╔═╗╦═╗╦╦  ╔═╗╔═╗
                          ║║║║╠═╝╚═╗  ││││  ╚╗╔╝║╣ ╠╦╝║║  ║ ║║ ╦
                          ╩ ╩╩╩  ╚═╝  ┴┘└┘   ╚╝ ╚═╝╩╚═╩╩═╝╚═╝╚═╝
                                                                                                         

This is a simple Verilog implementation of a MIPS processor datapath utilizing a 5-stage scheme:

                            i.   Instruction Fetch
                            ii.  Instruction Decode
                            iii. Execution
                            iv.  Memory Access
                            v.   Write-back
                            
Currently there is one bug in the MEM/WB register, and there is no WB stage.  Everything else is operational.  Branching not implemented, doesn't seem like it will be (for the class, I'll get to it later), and forwarding will most likely be implemented after the WB stage.

                          ╔╦╗╦╔═╗╔═╗  ┬┌┐┌  ╦  ╦╔═╗╦═╗╦╦  ╔═╗╔═╗
                          ║║║║╠═╝╚═╗  ││││  ╚╗╔╝║╣ ╠╦╝║║  ║ ║║ ╦
                          ╩ ╩╩╩  ╚═╝  ┴┘└┘   ╚╝ ╚═╝╩╚═╩╩═╝╚═╝╚═╝
                                                                                                         

This is a simple Verilog implementation of a MIPS processor datapath utilizing a 5-stage scheme:

                            i.   Instruction Fetch
                            ii.  Instruction Decode
                            iii. Execution
                            iv.  Memory Access
                            v.   Write-back
                            
This project currently works in the simulation stage, but logic is dropped upon synthesis.  I suspect that this is due to incorrect initialization or incorrect blocking/non-blocking write usage.  If anyone cares to fix it, be my guest.

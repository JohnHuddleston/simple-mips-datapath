███╗   ███╗██╗██████╗ ███████╗    ██╗███╗   ██╗    ██╗   ██╗███████╗██████╗ ██╗██╗      ██████╗  ██████╗ 
████╗ ████║██║██╔══██╗██╔════╝    ██║████╗  ██║    ██║   ██║██╔════╝██╔══██╗██║██║     ██╔═══██╗██╔════╝ 
██╔████╔██║██║██████╔╝███████╗    ██║██╔██╗ ██║    ██║   ██║█████╗  ██████╔╝██║██║     ██║   ██║██║  ███╗
██║╚██╔╝██║██║██╔═══╝ ╚════██║    ██║██║╚██╗██║    ╚██╗ ██╔╝██╔══╝  ██╔══██╗██║██║     ██║   ██║██║   ██║
██║ ╚═╝ ██║██║██║     ███████║    ██║██║ ╚████║     ╚████╔╝ ███████╗██║  ██║██║███████╗╚██████╔╝╚██████╔╝
╚═╝     ╚═╝╚═╝╚═╝     ╚══════╝    ╚═╝╚═╝  ╚═══╝      ╚═══╝  ╚══════╝╚═╝  ╚═╝╚═╝╚══════╝ ╚═════╝  ╚═════╝ 
                                                                                                         

This is a simple Verilog implementation of a MIPS processor datapath utilizing a 5-stage scheme:

                            i.   Instruction Fetch
                            ii.  Instruction Decode
                            iii. Execution
                            iv.  Memory Access
                            v.   Write-back
                            
Currently the first two stages are operational up to what can be tested at the EXE/MEM register.  
The plan is to finish up the last 3 stages (current work being done on stages iii and iv) and add
a forwarding unit.

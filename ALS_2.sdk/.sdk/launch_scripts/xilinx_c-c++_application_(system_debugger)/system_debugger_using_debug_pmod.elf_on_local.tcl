connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Basys3 210183738945A"} -index 0
loadhw E:/Downloads/Basys3-master/Basys3-master/Projects/GPIO/proj/ALS_2/ALS_2.sdk/design_1_wrapper_hw_platform_0/system.hdf
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Basys3 210183738945A"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Basys3 210183738945A"} -index 0
dow E:/Downloads/Basys3-master/Basys3-master/Projects/GPIO/proj/ALS_2/ALS_2.sdk/Pmod/Debug/Pmod.elf
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Basys3 210183738945A"} -index 0
con

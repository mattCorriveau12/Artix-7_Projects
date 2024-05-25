## LED

set_property -dict { PACKAGE_PIN R23 IOSTANDARD LVCMOS33} [get_ports {led5}];       #D5
set_property -dict { PACKAGE_PIN T23 IOSTANDARD LVCMOS33} [get_ports {led6}];       #D6

## SWITCH

#set_property -dict { PACKAGE_PIN AE16 IOSTANDARD LVCMOS33} [get_ports {switch1}];   #SW1 
set_property -dict { PACKAGE_PIN P4 IOSTANDARD LVCMOS33} [get_ports {switch2}];     #SW2 
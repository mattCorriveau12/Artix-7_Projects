#------------------------------------------------------------#
# Constraint file for Artix-7 FPGA
#------------------------------------------------------------#


#------------------------------------------------------------#
#Core Board
#------------------------------------------------------------#

# Clock signal

    set_property -dict { PACKAGE_PIN U22 IOSTANDARD LVCMOS33 } [get_ports {clk}];             
    create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {clk}];

# LEDs

    #set_property -dict { PACKAGE_PIN R23 IOSTANDARD LVCMOS33} [get_ports {led5}];       #D5
    #set_property -dict { PACKAGE_PIN T23 IOSTANDARD LVCMOS33} [get_ports {led6}];       #D6

    #set_property -dict { PACKAGE_PIN R23 IOSTANDARD LVCMOS33} [get_ports {clk_1Hz}];       #D5
    #set_property -dict { PACKAGE_PIN T23 IOSTANDARD LVCMOS33} [get_ports {not_clk_1Hz}];       #D6

# Switches

    #set_property -dict { PACKAGE_PIN AE16 IOSTANDARD LVCMOS33} [get_ports {switch1}];   #SW1 
    #set_property -dict { PACKAGE_PIN P4 IOSTANDARD LVCMOS33} [get_ports {switch}];     #SW2 

# Configuration properties
    #set_property CFGBVS VCCO [current_design]
    #set_property CONFIG_VOLTAGE 3.3 [current_design]

#------------------------------------------------------------#
#Expansion
#------------------------------------------------------------#


# Switches

    #SW1
        set_property -dict { PACKAGE_PIN AC24 IOSTANDARD LVCMOS33 } [get_ports { switches[0]  }];
        set_property -dict { PACKAGE_PIN Y21 IOSTANDARD LVCMOS33  } [get_ports { switches[1]  }];
        set_property -dict { PACKAGE_PIN Y26 IOSTANDARD LVCMOS33  } [get_ports { switches[2]  }];
        set_property -dict { PACKAGE_PIN AC26 IOSTANDARD LVCMOS33 } [get_ports { switches[3]  }];
        set_property -dict { PACKAGE_PIN AB24 IOSTANDARD LVCMOS33 } [get_ports { switches[4]  }];
        set_property -dict { PACKAGE_PIN W21 IOSTANDARD LVCMOS33  } [get_ports { switches[5]  }];
        set_property -dict { PACKAGE_PIN W25 IOSTANDARD LVCMOS33  } [get_ports { switches[6]  }];
        set_property -dict { PACKAGE_PIN AB26 IOSTANDARD LVCMOS33 } [get_ports { switches[7]  }];

    #SW2
        set_property -dict { PACKAGE_PIN V21 IOSTANDARD LVCMOS33  } [get_ports { switches[8]  }];
        set_property -dict { PACKAGE_PIN W23 IOSTANDARD LVCMOS33  } [get_ports { switches[9]  }];
        set_property -dict { PACKAGE_PIN Y23 IOSTANDARD LVCMOS33  } [get_ports { switches[10] }];
        set_property -dict { PACKAGE_PIN AA25 IOSTANDARD LVCMOS33 } [get_ports { switches[11] }];
        set_property -dict { PACKAGE_PIN U21 IOSTANDARD LVCMOS33  } [get_ports { switches[12] }];
        set_property -dict { PACKAGE_PIN V23 IOSTANDARD LVCMOS33  } [get_ports { switches[13] }];
        set_property -dict { PACKAGE_PIN Y22 IOSTANDARD LVCMOS33  } [get_ports { switches[14] }];
        set_property -dict { PACKAGE_PIN Y25 IOSTANDARD LVCMOS33  } [get_ports { switches[15] }];
    
    #SW3       
        set_property -dict { PACKAGE_PIN N22 IOSTANDARD LVCMOS33  } [get_ports { switches[16] }];     
        set_property -dict { PACKAGE_PIN P24 IOSTANDARD LVCMOS33  } [get_ports { switches[17] }];
        set_property -dict { PACKAGE_PIN P25 IOSTANDARD LVCMOS33  } [get_ports { switches[18] }];
        set_property -dict { PACKAGE_PIN T25 IOSTANDARD LVCMOS33  } [get_ports { switches[19] }];
        set_property -dict { PACKAGE_PIN N21 IOSTANDARD LVCMOS33  } [get_ports { switches[20] }];
        set_property -dict { PACKAGE_PIN P23 IOSTANDARD LVCMOS33  } [get_ports { switches[21] }];
        set_property -dict { PACKAGE_PIN R25 IOSTANDARD LVCMOS33  } [get_ports { switches[22] }];
        set_property -dict { PACKAGE_PIN T24 IOSTANDARD LVCMOS33  } [get_ports { switches[23] }];
         
#------------------------------------------------------------#

# LEDs

    #LED1
        set_property -dict { PACKAGE_PIN M26 IOSTANDARD LVCMOS33 } [get_ports { leds[0]  }];
        set_property -dict { PACKAGE_PIN L23 IOSTANDARD LVCMOS33 } [get_ports { leds[1]  }];
        set_property -dict { PACKAGE_PIN P26 IOSTANDARD LVCMOS33 } [get_ports { leds[2]  }];
        set_property -dict { PACKAGE_PIN M25 IOSTANDARD LVCMOS33 } [get_ports { leds[3]  }];
        set_property -dict { PACKAGE_PIN N26 IOSTANDARD LVCMOS33 } [get_ports { leds[4]  }];
        set_property -dict { PACKAGE_PIN L22 IOSTANDARD LVCMOS33 } [get_ports { leds[5]  }];
        set_property -dict { PACKAGE_PIN R26 IOSTANDARD LVCMOS33 } [get_ports { leds[6]  }];
        set_property -dict { PACKAGE_PIN M24 IOSTANDARD LVCMOS33 } [get_ports { leds[7]  }];
    
    #LED2
        set_property -dict { PACKAGE_PIN H22 IOSTANDARD LVCMOS33 } [get_ports { leds[8]}  ];
        set_property -dict { PACKAGE_PIN J21 IOSTANDARD LVCMOS33 } [get_ports { leds[9]}  ];
        set_property -dict { PACKAGE_PIN K26 IOSTANDARD LVCMOS33 } [get_ports { leds[10]} ];
        set_property -dict { PACKAGE_PIN K23 IOSTANDARD LVCMOS33 } [get_ports { leds[11]} ];
        set_property -dict { PACKAGE_PIN H21 IOSTANDARD LVCMOS33 } [get_ports { leds[12]} ];
        set_property -dict { PACKAGE_PIN K21 IOSTANDARD LVCMOS33 } [get_ports { leds[13]} ];
        set_property -dict { PACKAGE_PIN K25 IOSTANDARD LVCMOS33 } [get_ports { leds[14]} ];
        set_property -dict { PACKAGE_PIN K22 IOSTANDARD LVCMOS33 } [get_ports { leds[15]} ];
    
    #LED3 
        set_property -dict { PACKAGE_PIN E23 IOSTANDARD LVCMOS33 } [get_ports { leds[16] }];      
        set_property -dict { PACKAGE_PIN F22 IOSTANDARD LVCMOS33 } [get_ports { leds[17] }];
        set_property -dict { PACKAGE_PIN J26 IOSTANDARD LVCMOS33 } [get_ports { leds[18] }];
        set_property -dict { PACKAGE_PIN G21 IOSTANDARD LVCMOS33 } [get_ports { leds[19] }];
        set_property -dict { PACKAGE_PIN F23 IOSTANDARD LVCMOS33 } [get_ports { leds[20] }];
        set_property -dict { PACKAGE_PIN G22 IOSTANDARD LVCMOS33 } [get_ports { leds[21] }];
        set_property -dict { PACKAGE_PIN J25 IOSTANDARD LVCMOS33 } [get_ports { leds[22] }];
        set_property -dict { PACKAGE_PIN G20 IOSTANDARD LVCMOS33 } [get_ports { leds[23] }];

   
#------------------------------------------------------------#

# 7-Segment Displays

    #Anodes
        set_property -dict { PACKAGE_PIN U1 IOSTANDARD LVCMOS33 } [get_ports { sseg_anode[0] }];       #Dig1
        set_property -dict { PACKAGE_PIN M1 IOSTANDARD LVCMOS33 } [get_ports { sseg_anode[1] }];       #Dig2
        set_property -dict { PACKAGE_PIN P5 IOSTANDARD LVCMOS33 } [get_ports { sseg_anode[2] }];       #Dig3
        set_property -dict { PACKAGE_PIN U2 IOSTANDARD LVCMOS33 } [get_ports { sseg_anode[3] }];       #Dig4
        
    #Cathodes  

        set_property -dict { PACKAGE_PIN R2 IOSTANDARD LVCMOS33 } [get_ports { sseg_cathode[0] }];     #SegA
        set_property -dict { PACKAGE_PIN T3 IOSTANDARD LVCMOS33 } [get_ports { sseg_cathode[1] }];     #SegB
        set_property -dict { PACKAGE_PIN R1 IOSTANDARD LVCMOS33 } [get_ports { sseg_cathode[2] }];     #SegC
        set_property -dict { PACKAGE_PIN P6 IOSTANDARD LVCMOS33 } [get_ports { sseg_cathode[3] }];     #SegD
        set_property -dict { PACKAGE_PIN T4 IOSTANDARD LVCMOS33 } [get_ports { sseg_cathode[4] }];     #SegE
        set_property -dict { PACKAGE_PIN P1 IOSTANDARD LVCMOS33 } [get_ports { sseg_cathode[5] }];     #SegF
        set_property -dict { PACKAGE_PIN T2 IOSTANDARD LVCMOS33 } [get_ports { sseg_cathode[6] }];     #SegG
        set_property -dict { PACKAGE_PIN N1 IOSTANDARD LVCMOS33 } [get_ports { sseg_cathode[7] }];     #SegDP
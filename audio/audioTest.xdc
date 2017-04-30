## Clock signal
set_property PACKAGE_PIN E3 [get_ports clk]						
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]

set_property PACKAGE_PIN A11 [get_ports {audioAMP}]
set_property IOSTANDARD LVCMOS33 [get_ports {audioAMP}]

set_property PACKAGE_PIN D12 [get_ports {audioEn}]
set_property IOSTANDARD LVCMOS33 [get_ports {audioEn}]


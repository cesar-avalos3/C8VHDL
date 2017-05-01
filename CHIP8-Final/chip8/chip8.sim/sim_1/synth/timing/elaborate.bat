@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto 54fc8cd302594056840467f8f007c0c8 -m64 --debug typical --relax --mt 2 --maxdelay -L xil_defaultlib -L simprims_ver -L secureip --snapshot chip_8_TB_A_time_synth -transport_int_delays -pulse_r 0 -pulse_int_r 0 xil_defaultlib.chip_8_TB_A xil_defaultlib.glbl -log elaborate.log -v 1
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
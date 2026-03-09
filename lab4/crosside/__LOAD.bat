@echo off
::This file was created automatically by CrossIDE to load a hex file using Quartus_stp.
"C:\altera_standard\25.1std\quartus\bin64\quartus_stp.exe" -t "C:\CrossIDE\Load_Script.tcl" "C:\_Dev\cpen312\lab4\crosside\blink.HEX" | find /v "Warning (113007)"

local eeprom = component.eeprom
local eepromprog = [[
require("component").gpu.setBackground(0x0026BF)
dofile("/bin/clear.lua")
print("A prolem has been detected and windows has been shut down to prevent damage to you computer.")
print("")
print("")
print("A process or thread crucial to system operayi has unexpectedly exited or been terminated")
print("")
print("If this is the first time you've seen this stop error screen,restart you computer. If this screen appears again,follow these steps:")
print("Check to make sure any new hardware or software is properly installed.")
print("If this is a new installtaion ask your hardware or software manufacturer for any windows updates you miqht need.")
print("If problems continue, disable or remove any newly installed hardware or software. Disable BIOS memory options such as caching or shadowing.")
print("If you need to use safe mode to remove or disable components, restart you computer press F8 to select Advanced Startup Options, and  then select Safe Mode.")
print("Technical information:")
print("")
print("*** STOP: 0x000000F4 (0x00000003,0x883FD530,0x883FD69CF0)")
print("")
print("")
os.sleep(100)
]]
eeprom.set(eepromprog)
os.shutdown(1)

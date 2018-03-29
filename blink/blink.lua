-- NodeMCU Lua on ESP32
-- Blink LED on GPIO5
-- Solder LED to 3V3 & GPIO5 pins

pin = 5
gpio.config({gpio=pin,dir=gpio.OUT})

lighton = 0
local timer1 = tmr.create()
timer1:register(500, tmr.ALARM_AUTO, function () -- 500 ms
if lighton==0 then
    lighton=1
    gpio.write(pin,1)
else
    lighton=0
    gpio.write(pin,0)
end
end)
print("timer start")
timer1:start()

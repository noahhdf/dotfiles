#!/usr/bin/lua
path_ac = "/sys/class/power_supply/AC"
path_battery_0 = "/sys/class/power_supply/BAT0"
path_battery_1 = "/sys/class/power_supply/BAT1"

ac = 0
battery_level_0 = 0
battery_level_1 = 0
battery_max_0 = 0
battery_max_1 = 0

f = io.open(path_ac .. "/online")
ac = f:read()
f:close()

f = io.open(path_ac .. "/online")
ac = f:read()
f:close()

f = io.open(path_battery_0 .. "/energy_now")
battery_level_0 = f:read()
f:close()

f = io.open(path_battery_0 .. "/energy_full")
battery_max_0 = f:read()
f:close()

f = io.open(path_battery_0 .. "/power_now")
battery_power_0 = f:read()
f:close()

f = io.open(path_battery_1 .. "/energy_now")
battery_level_1 = f:read()
f:close()

f = io.open(path_battery_1 .. "/energy_full")
battery_max_1 = f:read()
f:close()

f = io.open(path_battery_1 .. "/power_now")
battery_power_1 = f:read()
f:close()


battery_level = battery_level_0 + battery_level_1
battery_max = battery_max_0 + battery_max_1

battery_percent = battery_level / battery_max * 100


battery_time_0 = 60.0 * battery_level_0 / battery_power_0
if battery_time_0 == math.huge then
    battery_time_0 = 60.0 * battery_level_0 / battery_power_1
end


battery_time_1 = 60.0 * battery_level_1 / battery_power_1
if battery_time_1 == math.huge then
    battery_time_1 = 60.0 * battery_level_1 / battery_power_0
end

battery_time = battery_time_0 + battery_time_1

ramp = {[0]= "", [1]= "", [2]= "", [3]= "", [4]= ""}

for v, k in pairs(ramp) do
    if battery_percent / 100 <= v / 4 then
        icon = k
        break
    end
end

print(icon .. " " .. math.floor(battery_percent + 0.5) .. "% ".. math.floor(battery_time + 0.5) .. "m")

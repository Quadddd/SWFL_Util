local Players = game:GetService('Players')

local SWFL_Util = {}

function SWFL_Util:GetClientVehicle()
    for _, car in pairs(workspace.Cars:GetChildren()) do
        if car.PlayerLoc.Value == Players.LocalPlayer then
            return car 
        end
    end
end

function SWFL_Util:GetWheels(car, target)
    local wheels = {}
    
    for _, wheel in pairs(car.Wheels:GetChildren()) do
        if target:lower() == 'all' then
            table.insert(wheels, wheel)
            continue
        end
        
        if target:lower() == 'front' and wheel.Name:sub(1,1) == 'F' then
            table.insert(wheels, wheel)
            continue
        end
        
        if target:lower() == 'rear' and wheel.Name:sub(1,1) == 'R' then
            table.insert(wheels, wheel)
            continue
        end
    end
    
    return wheels
end

return SWFL_Util

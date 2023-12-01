Citizen.CreateThread(function() 
    while true do
        local pedVehicle = GetVehiclePedIsIn(GetPlayerPed(-1), false)
        if pedVehicle ~= 0 and GetIsVehicleEngineRunning(pedVehicle) then
            local isMetric = ShouldUseMetricMeasurements();
            local speed = GetEntitySpeed(pedVehicle);
            local rpm = GetVehicleCurrentRpm(pedVehicle);

            SendNUIMessage({
                action = "montrer",
                isMetric = isMetric,
                speed = speed,
                rpm = rpm
            })
        else
            SendNUIMessage({ action = "cacher" })
        end
        
        Citizen.Wait(1)
    end
end)
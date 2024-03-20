function Initialize()
	FindDevices()

	SKIN:Bang('!CommandMeasure','MeasureWin7Audio','SetOutputIndex  ' .. SKIN:GetVariable('SpeakerDeviceIndex'))
end

-- Initial device lookup (on refresh/load)
-- This is a really hacky way of doing this. Rainmeter doesn't make it easy..
function FindDevices()
	speakerName=SKIN:GetVariable('SpeakerDeviceName')
	headphoneName=SKIN:GetVariable('HeadphoneDeviceName')

	idx = 1

	-- Need to set NumOutputs to prevent an infinite loop
	while idx <= tonumber(SKIN:GetVariable('NumOutputs'))
	do
		SKIN:Bang('!CommandMeasure','MeasureWin7Audio','SetOutputIndex  ' .. idx)
		deviceName = GetDeviceName()

		-- Save the device indices in memory
		if deviceName == speakerName then
			SKIN:Bang('!SetVariable', 'SpeakerDeviceIndex', idx)
		elseif deviceName == headphoneName then
			SKIN:Bang('!SetVariable', 'HeadphoneDeviceIndex', idx)
		end

		idx = idx + 1
	end
end

-- Get the name of the current audio device
function GetDeviceName()
	deviceName = SKIN:GetMeasure('MeasureWin7Audio'):GetStringValue()
	return deviceName
end

-- Update the icon
function UpdateDeviceIcon()

end

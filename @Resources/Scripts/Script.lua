function Initialize()
	FindDevices()
	SetOutputDevice()

	SKIN:Bang('!CommandMeasure','MeasureWin7Audio','SetOutputIndex  ' .. SKIN:GetVariable('SpeakerDeviceIndex'))
end

-- Initial device lookup (on refresh/load)
function FindDevices()
	
end

-- Update the icon
function SetOutputDevice()

end
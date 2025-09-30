

-- Add event handlers for Mute Buttons
for i=1,28 do
  Controls.MuteButton[i].EventHandler = function()
    if DebugFunction then print("Mute Button EventHandler called for channel " .. i) end
    if Controls.MuteButton[i].Value == 1 then
      print("Mute Toggle channel " .. i)
      Send("< SET "..string.format("%02d", i).." AUDIO_MUTE TOGGLE >")
    end
  end
end

Controls.Reboot.EventHandler = function()
  if DebugFunction then print("Reboot Button EventHandler called") end
  Send("< SET REBOOT >")
end

Controls.MuteAll.EventHandler = function()
  if DebugFunction then print("MuteAll Button EventHandler called") end
  Send("< SET 00 AUDIO_MUTE TOGGLE >")
  print("Mute All Button")
end

for i=1,28 do
  Controls.Volume[i].EventHandler = function()
    if DebugFunction then print("VolumeAll Button EventHandler called") end
    local volumeValue = math.floor((Controls.Volume[i].Value+110)*10 +0.5)  -- Convert dB to device scale
    Send("< SET "..string.format("%02d", i).." AUDIO_GAIN_HI_RES "..tostring(volumeValue).." >")
  end


  Controls.VolumePlusButton[i].EventHandler = function()
    if DebugFunction then print("VolumePlusButton EventHandler called") end
    Send("< SET "..string.format("%02d", i).." AUDIO_GAIN_HI_RES INC 5 >")
  end

  Controls.VolumeMinusButton[i].EventHandler = function()
    if DebugFunction then print("VolumeMinusButton EventHandler called") end
    Send("< SET "..string.format("%02d", i).." AUDIO_GAIN_HI_RES DEC 5 >")
  end

end

for i=1,10 do
    Controls.PresetRecall[i].EventHandler = function()
      if DebugFunction then print("PresetRecall Button EventHandler called for preset " .. i) end
      if Controls.PresetRecall[i].Value == 1 then
        print("Recall Preset " .. i)
        Send("< SET PRESET "..tostring(i).." >")
      end
    end
end

Controls.ControlIPAddress.String = IPAddress
--Controls.MuteButton.Value = 1 - Controls.MuteButton.Value  -- Toggle the value to trigger the event handler
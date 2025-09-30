
-- Input text control for IP address
table.insert(ctrls, {
  Name = "IPAddress",
  ControlType = "Text",
  Count = 1,
  UserPin = false,
  PinStyle = "none"
})
table.insert(ctrls, {
  Name = "Port",
  ControlType = "Text",
  Count = 1,
  UserPin = false,
  PinStyle = "none"
})
table.insert(ctrls, {
  Name = "MuteAll",
  ControlType = "Button",
  ButtonType = "Toggle",
  Count = 1,
  UserPin = false,
  PinStyle = "none"
})
table.insert(ctrls, {
    Name = "Status",
    ControlType = "Indicator",
    IndicatorType = "Status",
    PinStyle = "Output",
    UserPin = true,
    Count = 1
  })
  table.insert(ctrls, {
    Name = "ControlMacAddress",
    ControlType = "Indicator",
    IndicatorType = "Text",
    Count = 1,
    UserPin = false,
    PinStyle = "none"
  })
  table.insert(ctrls, {
    Name = "ControlIPAddress",
    ControlType = "Indicator",
    IndicatorType = "Text",
    Count = 1,
    UserPin = false,
    PinStyle = "none"
  })
  table.insert(ctrls, {
    Name = "AudioIPAddress",
    ControlType = "Indicator",
    IndicatorType = "Text",
    Count = 1,
    UserPin = false,
    PinStyle = "none"
  })
  table.insert(ctrls, {
    Name = "AudioSubNetMask",
    ControlType = "Indicator",
    IndicatorType = "Text",
    Count = 1,
    UserPin = false,
    PinStyle = "none"
  })
    table.insert(ctrls, {
    Name = "AudioGateway",
    ControlType = "Indicator",
    IndicatorType = "Text",
    Count = 1,
    UserPin = false,
    PinStyle = "none"
  })
      table.insert(ctrls, {
    Name = "DanteName",
    ControlType = "Indicator",
    IndicatorType = "Text",
    Count = 1,
    UserPin = false,
    PinStyle = "none"
  })
  table.insert(ctrls, {
    Name = "DeviceID",
    ControlType = "Indicator",
    IndicatorType = "Text",
    Count = 1,
    UserPin = false,
    PinStyle = "none"
  })
  table.insert(ctrls, {
    Name = "Model",
    ControlType = "Indicator",   
    IndicatorType = "Text",
    Count = 1,
    UserPin = false,
    PinStyle = "none"
  })
  table.insert(ctrls, {
    Name = "SerialNumber",
    ControlType = "Indicator",
    IndicatorType = "Text",
    Count = 1,
    UserPin = false,
    PinStyle = "none"
  })
  table.insert(ctrls, {
    Name = "FirmwareVersion",
    ControlType = "Indicator",    
    IndicatorType = "Text",
    Count = 1,
    UserPin = false,
    PinStyle = "none"
  })
  table.insert(ctrls, {
    Name = "Reboot",
    ControlType = "Button",
    ButtonType = "Momentary",    
    Count = 1,
    UserPin = false,
    PinStyle = "none"
  })
  -----------------------------------Preset Page
  table.insert(ctrls, {
    Name = "PresetRecall",
    ControlType = "Button",
    ButtonType = "Momentary",    
    Count = 10,
    UserPin = true,
    PinStyle = "none"
  })
  
    table.insert(ctrls, {
    Name = "PresetName",
    ControlType = "Indicator",
    ControlUnit = "Text",
    Count = 10,
    UserPin = false,
    PinStyle = "none"
  })


  ----------------------------------Channels Page

  table.insert(ctrls, {
    Name = "Volume",
    ControlType = "Knob",
    ControlUnit = "Integer",
    Min = -110, 
    Max = 30,
    Count = 28,
    UserPin = true,
    PinStyle = "Both",
  })

  table.insert(ctrls, {
    Name = "Sample",
    ControlType = "Indicator",
    ControlUnit = "Meter",
    Min = 0, 
    Max = 60,
    Count = 28,
    UserPin = false
  })

  table.insert(ctrls, {
    Name = "ChannelName",
    ControlType = "Indicator",
    ControlUnit = "Text",
    Count = 28,
    UserPin = false,
    PinStyle = "none"
  })

  table.insert(ctrls, {
    Name = "GainText",
    ControlType = "Indicator",
    ControlUnit = "Text",
    Count = 28,
    UserPin = false,
    PinStyle = "none"
  })

  table.insert(ctrls, {
  Name = "MuteButton",
  ControlType = "Button",
  ButtonType = "Toggle",
  Count = 28,
  UserPin = true,
  PinStyle = "Input"
})
table.insert(ctrls, {
  Name = "VolumePlusButton",
  ControlType = "Button",
  ButtonType = "Momentary",
  Count = 28,
  UserPin = true,
  PinStyle = "Input"
})
table.insert(ctrls, {
  Name = "VolumeMinusButton",
  ControlType = "Button",
  ButtonType = "Momentary",
  Count = 28,
  UserPin = true,
  PinStyle = "Input"
})





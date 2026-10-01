  table.insert(graphics, {
    Type = "Image", Image = '--[[ #encode "Images\\DechenLogoHeader.png" ]]',
    Position = {736, 16}, Size = {144, 36}, ZOrder = 10,
  })
  -- GroupBox visual para área de controles


  

  layout["MuteAll"] = {
  PrettyName = "Mute All",
  Type = "Button",
  ButtonType = "Toggle",
  Legend = "Mute All",
  Position = {300, 16},
  Size = {70,32}, 
  FontSize = 8 ,
  HTextAlign = "Center",
  Padding = 4,
  StrokeWidth = 1,
  Fill = Colors.Red,
  Color = Colors.Black,
  BorderColor = Colors.Black,
  CornerRadius = 16,
  }



local x, y = 0, 0
local CurrentPage = PageNames[props["page_index"].Value]
if CurrentPage == "Setup" then  ----------------------------------------------------Setup Page

    table.insert(graphics, {
    Type = "GroupBox",
    Name = "BackgroundGroup",
    Position = {4, 4},
    Size = {1000, 500},
    StrokeWidth=1,
    Fill = Colors.White, -- Fundo branco
    BorderColor = Colors.Black,
    PrettyName = "Setup"
  })

  -----------------------------------------Header Images
  table.insert(graphics, {
    Type = "GroupBox",
    Name = "DivisionGroup",
    Position = {9, 59},
    Size = {991, 2},
    StrokeWidth=1,
    StrokeColor = Colors.Stroke,
    PrettyName = "Division"
  })

------images
Logo = '--[[ #encode "Images\shure-intellimix-p300.jpg" ]]'
table.insert(graphics,{
  Type="Image",
  Image=Logo,
  Position={19 ,6},
  Size={87 ,52}
})

Logo = '--[[ #encode "Images\shureLogo.jpeg" ]]'
table.insert(graphics,{
  Type="Image",
  Image=Logo,
  Position={900,16},
  Size={87 ,32}
})
----------------------------------------------------end header images

  table.insert(graphics, {
    Type = "GroupBox",
    Name = "DivisionGroup",
    Position = {19, 134},
    Size = {971, 1},
    StrokeWidth=1,
    Fill = Colors.Stroke, 
    BorderColor = Colors.Stroke,
    PrettyName = "Division"
  })

  table.insert(graphics,{
    Type = "Text",
    Text = "Manual-Entry Ip Address:", 
    Position = {196, 72},
    Size = {172, 22},
    FontSize = 13,
    HTextAlign = "Left",
  })
  table.insert(graphics,{
    Type = "Text",
    Text = "Port:", 
    Position = {379, 72},
    Size = {39, 22},
    FontSize = 13,
    HTextAlign = "Left",
  })
    table.insert(graphics,{
    Type = "Text",
    Text = PluginInfo.BuildVersion,
    Position = {584,119},
    Size = {144,10},
    FontSize = 7,
    HTextAlign = "Right"
  })
    table.insert(graphics,{
    Type = "Text",
    Text = "Control Network",
    Position = {14,144},
    Size = {230,22},
    FontSize = 13,
    HTextAlign = "center",
  })
    table.insert(graphics,{
    Type = "Text",
    Text = "Audio Network",
    Position = {264,144},
    Size = {230,22},
    FontSize = 13,
    HTextAlign = "center",
  })
    table.insert(graphics,{
    Type = "Text",
    Text = "General",
    Position = {514,144},
    Size = {230,22},
    FontSize = 13,
    HTextAlign = "center",
  })

    table.insert(graphics,{
    Type = "Text",
    Text = "IP Address",
    Position = {49,174},
    Size = {160,20},
    FontSize = 8,
    HTextAlign = "Left",
  })
    table.insert(graphics,{
    Type = "Text",
    Text = "MAC Address",
    Position = {49,224},
    Size = {160,20},
    FontSize = 8,
    HTextAlign = "Left",
  })

    table.insert(graphics,{
    Type = "Text",
    Text = "IP Address",
    Position = {299,174},
    Size = {160,20},
    FontSize = 8,
    HTextAlign = "Left",
  })
    table.insert(graphics,{
    Type = "Text",
    Text = "SubNet Mask",
    Position = {299,224},
    Size = {160,20},
    FontSize = 8,
    HTextAlign = "Left",
  })
    table.insert(graphics,{
    Type = "Text",
    Text = "Gateway",
    Position = {299,274},
    Size = {160,20},
    FontSize = 8,
    HTextAlign = "Left",
  })
     table.insert(graphics,{
    Type = "Text",
    Text = "Dante Device Name",
    Position = {299,324},
    Size = {160,20},
    FontSize = 8,
    HTextAlign = "Left",
  })
     table.insert(graphics,{
    Type = "Text",
    Text = "Device Name",
    Position = {549,174},
    Size = {160,20},
    FontSize = 8,
    HTextAlign = "Left",
  })
    table.insert(graphics,{
    Type = "Text",
    Text = "Model",
    Position = {549,224},
    Size = {160,20},
    FontSize = 8,
    HTextAlign = "Left",
  })
    table.insert(graphics,{
    Type = "Text",
    Text = "Serial Number",
    Position = {549,274},
    Size = {160,20},
    FontSize = 8,
    HTextAlign = "Left",
  })
     table.insert(graphics,{
    Type = "Text",
    Text = "Firmware Version",
    Position = {549,324},
    Size = {160,20},
    FontSize = 8,
    HTextAlign = "Left",
  })
    

  layout["Status"] = {
    PrettyName = "Connection Status", 
    Position = {428, 72}, 
    Size = {301, 47}
  }
  layout["IPAddress"] = {
  PrettyName = "IP Address",
  Type = "Text",
  Position = {196, 94},
  Size = {172, 25},
  FontSize = 8 ,
  HTextAlign = "Left",
  Padding = 4,
  StrokeWidth = 1,
  Fill = Colors.Black,
  Color = Colors.Grey,
  BorderColor = Colors.Black
  }
  layout["Port"] = {
  PrettyName = "Port",
  Type = "Text",
  Position = {379, 94},
  Size = {32, 25},
  FontSize = 8 ,
  HTextAlign = "Left",
  Padding = 4,
  StrokeWidth = 1,
  Fill = Colors.Black,
  Color = Colors.Grey,
  BorderColor = Colors.Black
  }
  layout["ControlIPAddress"] = {
  PrettyName = "Control IP Address",
  Type = "Text",
  Position = {49, 194},
  Size = {160, 20},
  FontSize = 8 ,
  HTextAlign = "Left",
  Padding = 4,
  StrokeWidth = 1,
  Color = Colors.Grey,
  BorderColor = Colors.Black
  }
  layout["ControlMacAddress"] = {
  PrettyName = "Control MAC Address",
  Type = "Text",
  Position = {49, 244},
  Size = {160, 20},
  FontSize = 8 ,
  HTextAlign = "Left",
  Padding = 4,
  StrokeWidth = 1,
  Color = Colors.Grey,
  BorderColor = Colors.Black
  }
  

    layout["AudioIPAddress"] = {
  PrettyName = "Audio IP Address",
  Type = "Text",
  Position = {299, 194},
  Size = {160, 20},
  FontSize = 8 ,
  HTextAlign = "Left",
  Padding = 4,
  StrokeWidth = 1,
  Color = Colors.Grey,
  BorderColor = Colors.Black
  }
  layout["AudioSubNetMask"] = {
  PrettyName = "Audio SubNet Mask",
  Type = "Text",
  Position = {299, 244},
  Size = {160, 20},
  FontSize = 8 ,
  HTextAlign = "Left",
  Padding = 4,
  StrokeWidth = 1,
  Color = Colors.Grey,
  BorderColor = Colors.Black
  }
  layout["AudioGateway"] = {
  PrettyName = "Audio Gateway",
  Type = "Text",
  Position = {299, 294},
  Size = {160, 20},
  FontSize = 8 ,
  HTextAlign = "Left",
  Padding = 4,
  StrokeWidth = 1,
  Color = Colors.Grey,
  BorderColor = Colors.Black
  }
  layout["DanteName"] = {
  PrettyName = "Dante Device Name",
  Type = "Text",
  Position = {299, 344},
  Size = {160, 20},
  FontSize = 8 ,
  HTextAlign = "Left",
  Padding = 4,
  StrokeWidth = 1,
  Color = Colors.Grey,
  BorderColor = Colors.Black
  }



      layout["DeviceID"] = {
  PrettyName = "Device ID",
  Type = "Text",
  Position = {549, 194},
  Size = {160, 20},
  FontSize = 8 ,
  HTextAlign = "Left",
  Padding = 4,
  StrokeWidth = 1,
  Color = Colors.Grey,
  BorderColor = Colors.Black
  }
  layout["Model"] = {
  PrettyName = "Device Model",
  Type = "Text",
  Position = {549, 244},
  Size = {160, 20},
  FontSize = 8 ,
  HTextAlign = "Left",
  Padding = 4,
  StrokeWidth = 1,
  Color = Colors.Grey,
  BorderColor = Colors.Black
  }
  layout["SerialNumber"] = {
  PrettyName = "Serial Number",
  Type = "Text",
  Position = {549, 294},
  Size = {160, 20},
  FontSize = 8 ,
  HTextAlign = "Left",
  Padding = 4,
  StrokeWidth = 1,
  Color = Colors.Grey,
  BorderColor = Colors.Black
  }
  layout["FirmwareVersion"] = {
  PrettyName = "Firmware Version",
  Type = "Text",
  Position = {549, 344},
  Size = {160, 20},
  FontSize = 8 ,
  HTextAlign = "Left",
  Padding = 4,
  StrokeWidth = 1,
  Color = Colors.Grey,
  BorderColor = Colors.Black
  }
  layout["Reboot"] = {
  PrettyName = "Reboot Device",
  Type = "Button",
  Legend = "Reboot Device",
  Position = {562, 394},
  Size = {133,32}, 
  FontSize = 8 ,
  HTextAlign = "Center",
  Padding = 4,
  StrokeWidth = 1,  
  Fill = Colors.White,
  Color = Colors.LightBlue,
  BorderColor = Colors.Black,
  CornerRadius = 16,
  }

  -- end
elseif CurrentPage == "Preset" then ----------------------------------------------------Preset Page
  
  
  table.insert(graphics, {
    Type = "GroupBox",
    Name = "BackgroundGroup",
    Position = {4, 4},
    Size = {1000, 500},
    StrokeWidth=1,
    Fill = Colors.White, -- Fundo branco
    BorderColor = Colors.Black,
    PrettyName = "Setup"
  })
   -----------------------------------------Header Images
  table.insert(graphics, {
    Type = "GroupBox",
    Name = "DivisionGroup",
    Position = {9, 59},
    Size = {991, 2},
    StrokeWidth=1,
    StrokeColor = Colors.Stroke,
    PrettyName = "Division"
  })

------images
Logo = '--[[ #encode "Images\shure-intellimix-p300.jpg" ]]'
table.insert(graphics,{
  Type="Image",
  Image=Logo,
  Position={19 ,6},
  Size={87 ,52}
})

Logo = '--[[ #encode "Images\shureLogo.jpeg" ]]'
table.insert(graphics,{
  Type="Image",
  Image=Logo,
  Position={900,16},
  Size={87 ,32}
})
----------------------------------------------------end header images
for i=1,10 do

   table.insert(graphics,{
    Type = "Text",
    Text = tostring(i),
    Position = GetIPos(i,2,{x=44,y=114},{x=360,y=50}),
    Size = {24,32},
    FontSize = 13,
    HTextAlign = "center",
  })

  table.insert(graphics,{
    Type = "Preset Name",
    Text = "Preset Name",
    Position = {75,79},
    Size = {89,20},
    FontSize = 13,
    HTextAlign = "center"
  })
  table.insert(graphics,{
    Type = "Preset Name",
    Text = "Preset Name",
    Position = {435,79},
    Size = {89,20},
    FontSize = 13,
    HTextAlign = "center"
  })

  layout["PresetRecall "..i] = {
        PrettyName = "Preset Recall"..i,
        Type = "Button",
        Position = GetIPos(i,2,{x=230,y=114},{x=360,y=50}),
        Size = {70,32},
        Color = Colors.Black,
        CornerRadius = 16,
        Legend = "Recall",
        --Fill = Colors.Red,
        --BorderColor = Colors.Black,
        FontSize = 9,
      }

      layout["PresetName "..i] = {
      PrettyName = "Preset Name "..i,
      Style = "Text",      
      Position = GetIPos(i,2,{x=71,y=114},{x=360,y=50}),
      Size = {149,32},
      --Fill = Colors.White,
      --Color = Colors.White,
      TextColor = Colors.Black,
      FontSize = 13,
      HTextAlign = "Center",
      StrokeWidth = 1,
    }
  end



  -- TBD
elseif CurrentPage == "Channels" then ----------------------------------------------------Channels Page 

    table.insert(graphics, {
    Type = "GroupBox",
    Name = "BackgroundGroup",
    Position = {4, 4},
    Size = {2150, 500},
    StrokeWidth=1,
    Fill = Colors.White, -- Fundo branco
    BorderColor = Colors.Black,
    PrettyName = "Setup"
  })

    table.insert(graphics, {
    Type = "GroupBox",
    Name = "BackgroundGroup",
    Position = {4, 540},
    Size = {2150, 500},
    StrokeWidth=1,
    Fill = Colors.White, -- Fundo branco
    BorderColor = Colors.Black,
    PrettyName = "Setup"
  })

   -----------------------------------------Header Images
  table.insert(graphics, {
    Type = "GroupBox",
    Name = "DivisionGroup",
    Position = {9, 59},
    Size = {991, 2},
    StrokeWidth=1,
    StrokeColor = Colors.Stroke,
    PrettyName = "Division"
  })

------images
Logo = '--[[ #encode "Images\shure-intellimix-p300.jpg" ]]'
table.insert(graphics,{
  Type="Image",
  Image=Logo,
  Position={19 ,6},
  Size={87 ,52}
})

Logo = '--[[ #encode "Images\shureLogo.jpeg" ]]'
table.insert(graphics,{
  Type="Image",
  Image=Logo,
  Position={900,16},
  Size={87 ,32}
})
----------------------------------------------------end header images

  -----------------------------------Meter lines
  local ypos = 0
  for idx=1,11 do
    
      if idx < 9 then 
        ypos=117+ (idx*10)  
      else 
        ypos=ypos+20
      end
      for i=1,28 do
          table.insert(graphics, {
          Type = "GroupBox",
          Name = "dbGroup",
          Position = GetIPos(i,14,{x=55,y=ypos},{x=140,y=540}),
          Size = {26, 1},
          StrokeWidth=1,
          StrokeColor = Colors.Stroke,
        })
      end
  end
---------------------------------------end meter lines

  
  for i=1,28 do

  table.insert(graphics, {
    Type = "GroupBox",
    Name = "DivisionGroup",
    Position = GetIPos(i,14,{x=28,y=107},{x=140,y=540}),
    Size = {112, 1},
    StrokeWidth=1,
    StrokeColor = Colors.Stroke,
  })
  table.insert(graphics, {
    Type = "GroupBox",
    Name = "dbGroup",
    Position = GetIPos(i,14,{x=24,y=384},{x=140,y=540}),
    Size = {79, 1},
    StrokeWidth=1,
    StrokeColor = Colors.Stroke,
  })
  table.insert(graphics, {
    Type = "GroupBox",
    Name = "dbGroup",
    Position = GetIPos(i,14,{x=146,y=84},{x=140,y=540}),
    Size = {1, 396},
    StrokeWidth=1,
    StrokeColor = Colors.Stroke,
  })
  table.insert(graphics, {
    Type = "GroupBox",
    Name = "Volume_UP_Down",
    Position = GetIPos(i,14,{x=104,y=325},{x=140,y=540}),
    Size = {32, 64},
    StrokeWidth=1,
    StrokeColor = Colors.Grey,
    Fill = Colors.Grey,
    CornerRadius = 16,
  })
  table.insert(graphics, {
    Type = "GroupBox",
    Name = "Division_UP_Down",
    Position = GetIPos(i,14,{x=104,y=356},{x=140,y=540}),
    Size = {32, 1},
    StrokeWidth=1,
    StrokeColor = Colors.Srtoke,
    Fill = Colors.Stroke,
    CornerRadius = 16,
  })

      ----------------------------------------------nunbered meter labels
    table.insert(graphics,{
      Type = "Text",
      Name = "30"..i,
      Text = "30",
      Position = GetIPos(i,14,{x=36,y=124},{x=140,y=540}),
      Size = {18 , 8},
      FontSize = 7,
      HTextAlign = "Center",
      Color = Colors.Stroke,
    })
    table.insert(graphics,{
      Type = "Text",
      Name = "20"..i,
      Text = "20",
      Position = GetIPos(i,14,{x=36,y=134},{x=140,y=540}),
      Size = {18 , 8},
      FontSize = 7,
      HTextAlign = "Center",
      Color = Colors.Stroke,
    })
    table.insert(graphics,{
      Type = "Text",
      Name = "10"..i,
      Text = "10",
      Position = GetIPos(i,14,{x=36,y=144},{x=140,y=540}),
      Size = {18 , 8},
      FontSize = 7,
      HTextAlign = "Center",
      Color = Colors.Stroke,
    })
    table.insert(graphics,{
      Type = "Text",
      Name = "0"..i,
      Text = "0",
      Position = GetIPos(i,14,{x=36,y=154},{x=140,y=540}),
      Size = {18 , 8},
      FontSize = 7,
      HTextAlign = "Center",
      Color = Colors.Stroke,
    })
     table.insert(graphics,{
      Type = "Text",
      Name = "-10"..i,
      Text = "-10",
      Position = GetIPos(i,14,{x=36,y=164},{x=140,y=540}),
      Size = {18 , 8},
      FontSize = 7,
      HTextAlign = "Center",
      Color = Colors.Stroke,
    })
      table.insert(graphics,{
      Type = "Text",
      Name = "-20"..i,
      Text = "-20",
      Position = GetIPos(i,14,{x=36,y=174},{x=140,y=540}),
      Size = {18 , 8},
      FontSize = 7,
      HTextAlign = "Center",
      Color = Colors.Stroke,
    })
    table.insert(graphics,{
      Type = "Text",
      Name = "-30"..i,
      Text = "-30",
      Position = GetIPos(i,14,{x=36,y=184},{x=140,y=540}),
      Size = {18 , 8},
      FontSize = 7,
      HTextAlign = "Center",
      Color = Colors.Stroke,
    })
    table.insert(graphics,{
      Type = "Text",
      Name = "-40"..i,
      Text = "-40",
      Position = GetIPos(i,14,{x=36,y=194},{x=140,y=540}),
      Size = {18 , 8},
      FontSize = 7,
      HTextAlign = "Center",
      Color = Colors.Stroke,
    })
     table.insert(graphics,{
      Type = "Text",
      Name = "-60"..i,
      Text = "-60",
      Position = GetIPos(i,14,{x=36,y=214},{x=140,y=540}),
      Size = {18 , 8},
      FontSize = 7,
      HTextAlign = "Center",
      Color = Colors.Stroke,
    })
    table.insert(graphics,{
      Type = "Text",
      Name = "-80"..i,
      Text = "-80",
      Position = GetIPos(i,14,{x=36,y=234},{x=140,y=540}),
      Size = {18 , 8},
      FontSize = 7,
      HTextAlign = "Center",
      Color = Colors.Stroke,
    })
    table.insert(graphics,{
      Type = "Text",
      Name = "INF."..i,
      Text = "INF.",
      Position = GetIPos(i,14,{x=36,y=254},{x=140,y=540}),
      Size = {18 , 8},
      FontSize = 7,
      HTextAlign = "Center",
      Color = Colors.Stroke,
    })

      layout["Volume "..i] = {
      PrettyName = "Gain "..i,
      Style = "Fader",
      Min = -110,      
      Max = 30,        
      Default = 0,
      Position = GetIPos(i,14,{x=57,y=121},{x=140,y=540}),
      Size = {20,145},
      Fill = Colors.FaderBlue,
      BorderColor = Colors.White,
    }
      layout["Sample "..i] = {
      PrettyName = "Meter "..i,
      Style = "Meter",
      Min = 0,      
      Max = 60,        
      Default = 0,
      Position = GetIPos(i,14,{x=98,y=125},{x=140,y=540}),
      Size = {8,142},
      Fill = {50,20,117},
      Color = Colors.Grey,
      BorderColor = Colors.White,
      CornerRadius = 4,
    }
    layout["ChannelName "..i] = {
      PrettyName = "Channel Name "..i,
      Style = "Text",      
      Position = GetIPos(i,14,{x=24,y=84},{x=140,y=540}),
      Size = {117,20},
      Fill = Colors.White,
      Color = Colors.White,
      BorderColor = Colors.White,
      TextColor = Colors.Black,
      FontSize = 12,
      HTextAlign = "Center",
      StrokeWidth = 0,
    }
    layout["GainText "..i] = {
      PrettyName = "Channel Name "..i,
      Style = "Text",      
      Position = GetIPos(i,14,{x=30,y=360},{x=140,y=540}),
      Size = {69,20},
      Fill = Colors.White,
      Color = Colors.White,
      BorderColor = Colors.White,
      TextColor = Colors.Black,
      FontSize = 13,
      HTextAlign = "Center",
      StrokeWidth = 0,
    }

      layout["MuteButton "..i] = {
      PrettyName = "Mute Button"..i,
      Type = "Button",
      Position = GetIPos(i,14,{x=27,y=401},{x=140,y=540}),
      Size = {112,24},
      --Color = Colors.Black,
      CornerRadius = 12,
      Legend = "Mute",
      --Fill = Colors.Red,
      --BorderColor = Colors.Black,
      FontSize = 9,
    }
      layout["VolumePlusButton "..i] = {
      PrettyName = "Volume Plus Button",
      Type = "Toggle",
      TextColor   = Colors.Black,
      Position = GetIPos(i,14,{x=104,y=325},{x=140,y=540}),
      Size = {32,32},
      FontSize = 27,
      Legend = "+",
      Color = {255,255,255,0},
      StrokeWidth = 0,
      IsBold = true,
      CornerRadius = 16,

    }
      layout["VolumeMinusButton "..i] = {
      PrettyName  = "Volume Minus Button",
      Type        = "Button",
      ButtonType  = "Toggle",         -- ou Toggle, conforme seu caso
      TextColor   = Colors.Black,
      Position    = GetIPos(i,14,{x=104,y=357},{x=140,y=540}),
      Size        = {32,32},
      FontSize = 30,
      Legend = "-",
      Color = {255,255,255,0},
      StrokeWidth = 0,
      IsBold = true,
      CornerRadius = 16,
    }
  end
end

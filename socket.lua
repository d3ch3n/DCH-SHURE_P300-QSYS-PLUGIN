
-- Global Variables
EmptyIPMessage = "Enter an IP Address"
Status = Controls.Status
IPAddress = Controls["IPAddress"].String
Port = 2202

-- Constants
EOL = "" --"\n" -- End of line character as defined in device's API
EOLCharacter = ">" --TcpSocket.EOL.Custom -- EOL Character lookup for TCPSocket ReadLine
StatusState = {OK=0, COMPROMISED=1, FAULT=2, NOTPRESENT=3, MISSING=4, INITIALIZING=5}

-- Timers
PollTimer = Timer.New()

-- Sockets
TCP = TcpSocket.New()
TCP.ReadTimeout = 5
TCP.WriteTimeout = 5
TCP.ReconnectTimeout = 5

-- Variables
PollTime = 3
LoggedIn = false

-- Debug level
DebugTx, DebugRx, DebugFunction = false, false, false
DebugPrint = Properties["Debug Print"].Value
if DebugPrint == "Tx/Rx" then
  DebugTx, DebugRx = true, true
elseif DebugPrint == "Tx" then
  DebugTx = true
elseif DebugPrint == "Rx" then
  DebugRx = true
elseif DebugPrint == "Function Calls" then
  DebugFunction = true
elseif DebugPrint == "All" then
  DebugTx, DebugRx, DebugFunction = true, true, true
end
  
  

  -- *** Functions ***
  -- Helper Functions
  function ReportStatus(state, msg)
    local msg = msg or ""
    Status.Value = StatusState[state]
    Status.String = msg
  end

  function Send(cmd)
    if DebugFunction then print("Send() called") end
    if IsConnected() then
      if DebugTx then print("Tx: " .. cmd) end
      TCP:Write(cmd)
    else
      print("Error - Disconnected; unable to send " .. cmd)
    end
  end

  function IsConnected()
    return TCP.IsConnected
  end


  function IsLoggedIn()
    return LoggedIn
  end

  function Connect()
    if DebugFunction then print("Connect() called") end
      print("Connecting to " .. IPAddress .. ":" .. Port)  
      TCP:Connect(IPAddress, Port)
  end

  function Disconnect()
    if DebugFunction then print("Disconnect() called") end
    TCP:Disconnect()
    Disconnected()
  end

  function Connected()
    if DebugFunction then print("Connected() called") end
    Send("< GET FW_VER >")
    Send("< GET DEVICE_ID >")
    Send("< GET IP_ADDR_NET_AUDIO_PRIMARY >")
    Send("< GET IP_GATEWAY_NET_AUDIO_PRIMARY >")
    Send("< GET IP_SUBNET_NET_AUDIO_PRIMARY >")
    Send("< GET NA_DEVICE_NAME >")
    Send("< GET CONTROL_MAC_ADDR >")
    Send("< GET MODEL >")
    Send("< GET SERIAL_NUM >")
    PollTimer:Start(PollTime)
    
  end

  function Disconnected()
    if DebugFunction then print("Disconnected() called") end
    PollTimer:Stop()
    LoggedIn = false
  end
  

  -- TCP socket callbacks
  TCP.Connected = function()
    if DebugFunction then print("TCPSocket Connected Handler called") end
    ReportStatus("OK")
    Connected()
  end

  TCP.Reconnect = function()
    if DebugFunction then print("TCPSocket Reconnect Handler called") end
    Disconnected()
  end

  TCP.Closed = function()
    if DebugFunction then print("TCPSocket Closed Handler called") end
    ReportStatus("MISSING", "Socket closed")
    Disconnected()
  end

  TCP.Error = function()
    if DebugFunction then print("TCPSocket Error Handler called") end
    ReportStatus("MISSING", "Socket error")
    Disconnected()
  end

  TCP.Timeout = function()
    if DebugFunction then print("TCPSocket Timeout Handler called") end
    ReportStatus("MISSING", "Timeout")
    Disconnected()
  end

  TCP.Data = function()
    if DebugFunction then print("TCPSocket Data Handler called") end
    --print("Data received:")
    ParseResponse()
  end
  

  



  function PollDevice()
    if DebugFunction then print("PollDevice() called") end
    Send("< GET 00 CHAN_NAME >")
    Send("< GET 00 AUDIO_GAIN_HI_RES >")  -- Poll all channels for level
    Send("< GET 00 AUDIO_MUTE >")  -- Poll all channels for mute status
    Send("< GET PRESET1 >")
    Send("< GET PRESET2 >")
    Send("< GET PRESET3 >")
    Send("< GET PRESET4 >")
    Send("< GET PRESET5 >")
    Send("< GET PRESET6 >")
    Send("< GET PRESET7 >")
    Send("< GET PRESET8 >")
    Send("< GET PRESET9 >")
    Send("< GET PRESET10 >")

    
  end

  function read_custom_line(sock, custom_eol)
    local bufferLine = ""
    local data = sock:Read(1024) -- Read in 1KB chunks
        if DebugRx then print("Data chunk received: " .. (data or "nil")) end
        if not data then
            -- Connection closed or error, return any remaining buffer as a partial line
            if #bufferLine > 0 then
                local line = bufferLine
                bufferLine = ""
                return line
            end
            return nil -- No more data
        end

        bufferLine = bufferLine .. data
        local eol_pos = string.find(bufferLine, custom_eol, 1, true) -- Find the EOL

        if eol_pos then
            local line = string.sub(bufferLine, 1, eol_pos - 1)
            bufferLine = string.sub(bufferLine, eol_pos + #custom_eol)
            return line
        end
  end

  function ParseResponse()
    if DebugFunction then print("ParseResponse() called") end
    local rx = read_custom_line(TCP, EOLCharacter)
    local buffer = {}
      if DebugRx then print("Rx: " .. rx) end
      table.insert(buffer, rx)
    while next(buffer) ~= nil do
      local line = table.remove(buffer, 1)
      if line then
        if DebugRx then print("Processing line: " .. line) end
        -- Process the line here
        -- Example: Check for specific responses and update controls
        if string.find(line, "MODEL") then
          local model = string.match(line, "{%s*(.-)%s*}")
          if model then
            Controls["Model"].String = model
          end
        elseif string.find(line, "SERIAL_NUM") then
          local serial = string.match(line, "{%s*(.-)%s*}")
          if serial then
            Controls["SerialNumber"].String = serial
          end
        elseif string.find(line, "FW_VER") then
          local fwver = string.match(line, "{%s*(.-)%s*}")
          if fwver then
            Controls["FirmwareVersion"].String = fwver
          end
        elseif string.find(line, "DEVICE_ID") then
          local Dvid = string.match(line, "{%s*(.-)%s*}")
          if Dvid then
            Controls["DeviceID"].String = Dvid
          end
        elseif string.find(line, "IP_ADDR_NET_AUDIO_PRIMARY") then
          local ipaddr = string.match(line, "{%s*(.-)%s*}")
          if ipaddr then
            Controls["AudioIPAddress"].String = ipaddr
          end 
        elseif string.find(line, "IP_GATEWAY_NET_AUDIO_PRIMARY") then
          local gateway = string.match(line, "{%s*(.-)%s*}")
          if gateway then
            Controls["AudioGateway"].String = gateway
          end 
        elseif string.find(line, "IP_SUBNET_NET_AUDIO_PRIMARY") then
          local subnet = string.match(line, "{%s*(.-)%s*}")
          if subnet then
            Controls["AudioSubNetMask"].String = subnet
          end 
        elseif string.find(line, "NA_DEVICE_NAME") then
          local dante = string.match(line, "{%s*(.-)%s*}")
          if dante then
            Controls["DanteName"].String = dante
          end 
        elseif string.find(line, "CONTROL_MAC_ADDR") then
          local mac = string.match(line, "MAC_ADDR%s+([%x:]+)")
          if mac then
            Controls["ControlMacAddress"].String = mac
          end 
        elseif string.find(line, "CHAN_NAME") then
          local chanindex = string.match(line, "REP%s+(%d+)%s+CHAN")
          chanindex = tonumber(chanindex) -- Lua tables are 1-indexed
          local channame = string.match(line, "{%s*(.-)%s*}")
          if channame then
            Controls.ChannelName[chanindex].String = channame
          end 
        elseif string.find(line, "AUDIO_GAIN_HI_RES") then
          local chanindex = string.match(line, "REP%s+(%d+)%s+AUDIO")
          chanindex = tonumber(chanindex) -- Lua tables are 1-indexed
          local level = string.match(line, "AUDIO_GAIN_HI_RES%s+(%d+)")
          if DebugRx then print("Channel Index: " .. tostring(chanindex) .. " Level: " .. tostring(level)) end
          if level then
            local levelValue = tonumber(level)
            if levelValue then
              -- Convert from device's scale to dB (assuming device gives 0-6000 for -60dB to 0dB)
              local dBLevel = math.floor((levelValue * 0.1) - 110 + 0.5)
              Controls.GainText[chanindex].String = tostring(dBLevel) .. " dB"
              Controls.Volume[chanindex].Value = dBLevel
            end
          end
        elseif string.find(line, "AUDIO_MUTE") then 
          local chanindex = string.match(line, "REP%s+(%d+)%s+AUDIO")
          chanindex = tonumber(chanindex) -- Lua tables are 1-indexed
          local muteStatus = string.match(line, "AUDIO_MUTE%s+(%w+)")
          if DebugRx then print ("..Mute Status: " ..muteStatus) end

          if muteStatus and chanindex then
            if muteStatus == "ON" then
              Controls["MuteButton"][chanindex].Boolean = true
              --print("Channel " .. chanindex .. " is Muted")
              Controls["MuteButton"][chanindex].Color = "Red"
            else
              Controls["MuteButton"][chanindex].Boolean = false
              --print("Channel " .. chanindex .. " is unMuted")
              Controls["MuteButton"][chanindex].Color = "Black"
            end
          end
        elseif string.find(line, "PRESET") then
          local presetindex = string.match(line, "PRESET(%d+)")
          local presetData = string.match(line, "{%s*(.-)%s*}")
          presetindex = tonumber(presetindex)
          Controls["PresetName"][presetindex].String = presetData  
        -- Add more parsing as needed based on device's API responses
        end
      end
    end
  end
  
  

  -- *** Event Handlers ***
  Controls["IPAddress"].EventHandler = function()
    if DebugFunction then print("IPAddress handler called") end
    IPAddress = Controls["IPAddress"].String
    Controls["ControlIPAddress"].String = Controls["IPAddress"].String
    if IPAddress == "" or IPAddress == "Enter an IP Address" then
      IPAddress = EmptyIPMessage
      Disconnect()
    else
      Connect()
    end
  end

  Controls["Port"].EventHandler = function()
    if DebugFunction then print("Port handler called") end
    Port = tonumber(Controls["Port"].String)
    print("Port set to " .. Port)
    Disconnect()
    Connect()
  end

  Controls["Port"].String = tostring(Port)
  Controls["IPAddress"].String = IPAddress

  PollTimer.EventHandler = PollDevice

  -- Run at start
  Connect()

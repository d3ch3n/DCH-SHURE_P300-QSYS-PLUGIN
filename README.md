📘 Shure P300 – Q-SYS Plugin

This plugin was developed to integrate the Shure IntelliMix P300 Audio Conferencing Processor into Q-SYS Designer (tested on version 10.0.0).
It enables direct control and monitoring of P300 audio parameters within the Q-SYS environment.

📂 Installation

Download the plugin file (Shure_P300.qplug) or copy the project folder.

Open Q-SYS Designer (minimum: version 10.0.0).

In the top menu, go to:
Tools → Show Plugin Manager.

Click Install and select the plugin file Shure_P300.qplug.

Restart Q-SYS Designer so the plugin appears in the list.

⚙️ Usage

Open your project in Q-SYS Designer.

In the components palette, locate the plugin under Plugins → DCH → Shure → P300.

The installed plugin folder is `QSC/Q-Sys Designer/Plugins/DCH/Shure/P300/`. The source project remains in its existing repository folder.

Drag the component onto your Schematic Page.

Configure the network parameters:

IP Address: the P300 device address on the Dante/control network.

Port: communication port (default: 2202).

Click Save and Run in Q-SYS Designer.

The plugin will automatically connect to the P300 and display:

Channel gain control (vertical fader, mixer style)

Per-channel mute (toggle button)

Preset status and remote recall

Device information (MAC Address, firmware version, etc.)

🛠️ Plugin Features

Gain control (-110 dB to +30 dB, 0.1 dB resolution).

Individual mute per channel.

Preset selection and recall.

Display of device information (channel name, MAC, etc.).

Custom interface resembling a physical audio mixer.

🔧 Requirements

Q-SYS Designer 10.0.0 or higher.

Shure P300 on the same network as the Q-SYS Core.

Updated firmware on the P300.

👨‍💻 Developer

This plugin was independently developed by Bruno Dechen.
It is not an official product of Shure or QSC.

📧 For questions, contact and bug reports:
bruno.dechen@gmail.com

📜 License

This plugin is provided as Free to Use.

✅ It may be used, studied, and modified freely.

❌ It may not be sold or commercialized, in whole or in part.

Shure® is a registered trademark of Shure Incorporated.

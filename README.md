# AudioSwitcher

<img alt="Demo" src="/../media/example.gif"/>

This Rainmeter skin switches between a speaker and headphones. The skin will automatically update when the audio output has manually changed via a key bind, etc.

Defaults to speaker on load

# Config

All config variables are in the `AudioSwitcher.ini` file

## Devices

In order to get the speaker and headphones by name, the skin loops through the available audio devices. The `NumOutputs` setting sets the number of devices to loop through before stopping

The `SpeakerDeviceName` and `HeadphoneDeviceName` variables are the names of your audio devices, e.g. `Speaker` and `Headphones`

## Visualizer
`VisualizerName` and `VisualizerConfig` are optional variables for refreshing a visualizer.
When you switch audio devices, your visualizer will probably no longer work. In order to solve that, this skin will automatically refresh your visualizer when the output has changed. For example, this is my config:

```ini
VisualizerName=Sonder\Visualizer
VisualizerConfig=Visualizer/Dots-Visualizer.ini
```

# Script
If you need to edit the script, it is in `@Resources\Scripts\Script.lua`
zdoomlander
===========
![https://github.com/p4p1/zdoomlander/blob/main/assets/doomlander.png?raw=true](https://github.com/p4p1/zdoomlander/blob/main/assets/doomlander.png?raw=true)

Where are these bloody heads coming from? A simple doom mod that turns your regular fist in a eyelander style of weapong from Team Fortess 2. On every kill your
fist damage is multiplied by the kill count of the map. This is overpowered but fun ^^ My first shot at a Doom mod. This works with GZDoom!

# Usage

## Download & Run

Navigate to the Releases page of this repo and download zdoomlander.pk3 file from the release and you can run it inside of gzdoom with this command

```
$ gzdoom -iwad <Your_wad_file_path>.wad -file <path_to_zdoomlander>/zdoomlander.pk3
```

## Download & try it out

This simple bash command will download the mod and launch it just edit the path to your .wad file inside of the command:

```
$ git clone https://github.com/p4p1/zdoomlander /tmp/zdoomlander && gzdoom -iwad /full_path/to_your/iwad_file.wad -file /tmp/zdoomlander/
```

# How it works?

More details can be found on the relevant blog post [here]().
But to give a quick sum up I just replace the same logic as the original fist in Doom keeping the random nature but added
a giant knockback effect and just multiply the damage with the current kill count.
![https://github.com/p4p1/zdoomlander/blob/main/assets/code.png?raw=true](https://github.com/p4p1/zdoomlander/blob/main/assets/code.png?raw=true)

# Next Steps

 - [ ] Add also FragCount to the algorithm for multiplier support
 - [ ] Maybe add the actual EyeLander
 - [ ] Maybe add kill count on the HUD

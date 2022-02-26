# Xkeys XK-60 Layout

## Rationale

I'd like to acknowledge upfront that it's impossible to design the
perfect layout.  For starters, there just aren't enough keys!  Beyond
that, I suspect we all use QLab and EOS in different ways (I, for
instance, don't do a lot of video work in QLab but I'm sure I have a
counterpart out there who **only** does video).

I worked with these design parameters and assumptions:

  * One layer (layer one/blue) is dedicated to QLab and one (layer
    two/red) to EOS.

  * Where possible, the function (if not the underlying macro) is the
    same for both layers (like go, panic, number, arrows) or related
    (copy/copy to, paste/recall from).

  * I made the choice not to attempt matching the EOS console layout.
    The goal of the project is to make programming easier than using
    the standard keyboard shortcuts instead of providing a familiar
    programming surface for folks who are accustomed to programming on
    a console.  [ETC provides
    support](https://support.etcconnect.com/ETC/Consoles/Eos_Family/Software_and_Programming/X_Keys_and_Eos_Family_Consoles)
    for the latter use case.

  * I assume there's a qwerty keyboard alongside the XK-60
    (obviously).  This assumption let to not mapping one of my most
    used EOS shortcuts ("l") since creating labels almost always
    requires qwerty input (and "l" is easy to remember).

  * The notable exception to the above is the Go/Panic mappings.
    Escape is not in the same place on all keyboards (!) and should be
    easily located when needed.  Likewise, I find the action on the
    XK-60 to be a whole lot less susceptible to accidental triggering,
    hence the inclusion of Go.


## Layout

Keys are labelled with QLab (layer one/blue) functions on top and EOS
(layer two/red) functions below.  Keys not mentioned are (I hope) self
explainatory.

### Top Section

| QLab Label        | QLab Function                    | EOS Label | EOS Function                    |
| ---               | ---                              | ---       | ---                             |
| Group Q           | Create a Group Q                 | Effects   | Effects Key                     |
| Audio Q           | Create an Audio Q                | Offest    | Offset Key                      |
| Fade Q            | Create a Fade Q                  | ML        | Bring up the ML Tab             |
| Net Q             | Create a Network Q               | Virt Kbd  | Show the Virtual Keyboard       |
| Video Q           | Create a Video Q                 | RemDim    | RemDim Key                      |
| Memo Q            | Run MEMO Script                  | Sneak     | Sneak Key                       |
| P/R Sel           | Pause/Resume Selected Qs         | Format    | Format Key                      |
| S/E               | Toggle Show/Edit Mode            | Flexi     | Flexi Key                       |
| EOS               | Activate Nomad and Switch Layers | QLab      | Activate QLab and Switch Layers |
| ---               | ---                              | ---       | ---                             |
| Arrow Notes Arrow | Run Ninja Fade Script            | Color P   | Color Palette Key               |
| Pre Up/Down       | Run Pre-Wait Change Script       | Focus P   | Focus Palette Key               |
| Notes Arrow       | Run Speedup Preroll Script       | Preset    | Preset Key                      |
| Eos Q             | Run EOS Netork Cue Script        | Macro     | Macro Key                       |
| Select Down       | Run Select Group Members Script  | Full      | Full Key                        |
| Pause             | Pause Cues                       | Out       | Out Key                         |
| Resume            | Resume Paused Cues               | Learn     | Learn Key                       |

### Left Section

| QLab Label | QLab Function               | EOS Label | EOS Function |
| ---        | ---                         | ---       | ---          |
| Q Mode     | Cycle Through Continue Mode | Cue       | Cue Key      |
| Preview    | Preview Q                   | Record    | Record Key   |
| Pre Wait   | Edit Q Pre-Wait Time        | Goto Cue  | Goto Cue Key |
| Q Time     | Edit Q Time                 | Update    | Update Key   |
| Q Notes    | Edit Q Notes                | Blind     | Blind Key    |
| Q Target   | Edit Q Target               | Group     | Group Key    |
| Q Num      | Edit Q Number               | Live      | Live Key     |
| Q Name     | Edit Q Name                 | Time      | Time Key     |

### Center Section

| QLab Label | QLab Function    | EOS Label | EOS Function    |
| ---        | ---              | ---       | ---             |
| Cut        | Cut              | Thru      | Thru Key        |
| Copy       | Copy             | Copy To   | Copy To Key     |
| Paste      | Paste            | Recall    | Recall From Key |
| Paste Att  | Paste Attributes | /         | / Key           |


### Right Section

| QLab Label | QLab Function     | EOS Label | EOS Function |
| ---        | ---               | ---       | ---          |
| Panic      | Panic             | Stop      | Stop/Back    |
| Delete     | Cmd-Delete        | ---       | Delete Key   |
| Panic Sel  | Panic Selected Qs | Next      | Next Key     |
| Redo       | Edit -> Redo      | Sel Last  | Last Key     |

The remaining four keys in QLab (Cart Q 1...4) are mapped to the four
placeholder cues in the cue cart (Alt-1...Alt-4).

In EOS (M 801...804) these are mapped to macros.

## Corrections and Clarifications

Please file a GitHub issue if you find an error in the documentation
or if clarification is required.  Thanks!

## Author

Bunny Lushington; February 2022

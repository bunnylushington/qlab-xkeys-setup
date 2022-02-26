# The QLab Template

## Rationale

The included template provides a number of cue defaults and script
cues that might be useful when programming a show.  Some of scripts
provided have hot keys assigned that map to key assignments on the
XK-60.

## Installation and Use

The QLab template file `qlab/XKeys Template.qlab4template` should be
copied to `~/Library/Application Support/QLab/Templates`.  When
opening a new QLab Workspace, choose "Templates -> XKeys Template"
from the startup screen.

QLab provides a few utilities to manage templates.  Changes may be
saved ("File -> Save as Template") and templates may be renamed or set
as the default ("File -> Manage Templates").  More information can be
found in the [Templates
section](https://qlab.app/docs/v4/general/templates/) of the QLab
documentation.

## Description

The template comprises three cue lists and a cue cart.

##### Scripts

A collection of script cues (i.e., Applescript programs) to aid in
programming, teching, and running a show.  Hotkey triggers are noted
in the cue name and some usage information and attribution is supplied
in the Notes section.  These include:

 * **Pre-Wait Change** Sets the pre-wait of the selected cues to an
   absolute or relative value.  Especially useful with timeline
   groups.  Prompts for the time value.

 * **Ninja Fade Script** Creates a timeline group, fade in, and fade
   out cue for each audio cue selected.

 * **EOS Network Cue** Creates a network cue with standard numbering,
   naming, color, and OSC string.  Prompts for EOS cue number and
   name.  For example, if the EOS cue number 20 with the label
   "Blackout" is to be called the Q Number will be "L20" and the Q
   Name will be "[20] Blackout".

 * **Toggle Edit/Show Mode** Allows toggling via one key on the XK-60.

 * **Memo** Creates a standard format memo cue.  I use these to label
   acts/scenes.  Auto-follow is set by default.

 * **Speedup Preroll** [Documentation](https://github.com/samschloegel/qlab-scripts#load-parent-group-to-start-of-selected-child)

 * **Select Group Members Downwards** Will add every subsequent cue in
   the current group to the selection list.  This is useful in
   conjunction with "Pre-Wait Change" to tune timeline groups.

 * **Set System Output Volume to Full** Does exactly that.  The
   template plays this cue at the top of the cue stack to ensure
   output levels are consistent.

##### Template Notes

I've added a few memo cues here describing features of the template.

##### Cue Cart

These four audio cues are placeholders (and almost certainly broken)
for hotkey triggers Alt-1 -- Alt-4 (which are mapped to the XK-60).  I
occasionally use carts for sound effects when I don't know how many
times they'll be required or for pre-show channel/sound check.  These
can be safely deleted (and the hotkey triggers reused elsewhere) if
not required.

##### Main Cue List

Pre-populated with a Set System Volume but other than that, this is
just the Main Cue List you're used to.

## Suggestions, Corrections, and Additions

I realize this is highly opinionated!  I've included the scripts that
I use most often and have tried to keep it minimal.  I'm more than
happy to entertain additions and would like to hear about any errors
that arise.  GitHub issues are the best way to track your comments.

## Acknowledgements

Please refer to the [main page](index.md) or to the notes section of
each macro for attribution.

## Author

Bunny Lushington; February 2022

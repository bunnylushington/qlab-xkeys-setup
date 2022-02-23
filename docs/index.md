# Xkeys XK-60 With QLab and Nomad

## Introduction

Hi.  I work as a technical director for the New Orleans based Radical
Buffoon(s) theater collective and am the proprietor of the Fortress of
Lushington, a 50 seat black box venue.  During the day I'm a
professional computer programmer concentrating on data analytics and
release management.

I've recently introduced an Xkeys keyboard into my lighting/sound rig
and thought I'd document some of the work that entailed.  Part of the
work is designing a key layout and part is creating ancillary scripts
to assist with programming.

## Rationale

With some rare exceptions, I use
[ETCnomad)(https://www.etcconnect.com/Products/Consoles/Eos-Family/ETCnomad-ETCnomad-Puck/Overview.aspx)
for designing lighting cues and [QLab](qlab.app) for sound and video.
I also use QLab during productions to fire Nomad cues via OSC.  Having
one cue stack where lights and sound can be synced has worked out
really well.

Because I don't have the budget to buy a Nomad programming surface,
I've been making do with a touch screen monitor and reasonable
knowledge of Nomad keyboard shortcuts.  This all works well and
additional hardware isn't _strictly_ required to be productive.  That
said, I thought I could benefit from the Xkeys XK-60 to provide one
key access to the functions I use most often.

My goals include:

### Easier QLab and Nomad Function Access

Everything the Xkeys can do can also be done by memorizing keyboard
shortcuts; however, I find that I not only forget the shortcuts but I
sometimes mistake shortcut keys from one program with another's,
sometimes with (ahem) "interesting" results.

Note that I did not set out to replicate the layout of an EOS
progamming surface.  Not only are there not enough keys for that but
I'm aiming for some consistency between QLab mappings and Nomad
mappings where it makes sense.

### Reducing the Number of Repetative Tasks

So much QLab programming is repetative.  For instance, in my
environment where I'm using OSC to trigger Nomad, each lighting cue
requires a corresponding QLab network cue.  With some relatively
simple Applescript and a dedicated key, I'm able to create the
appropriate network cue in seconds.  And because the creation of the
cue is scripted, mistakes are less likely.

### Improving Consistency

Keeping cues consistent (naming and numbering conventions, cue colors,
and so on) aids considerably in the technical rehearsal process and
makes running a show far easier.  For instance, I like to insert red
memo cues between acts (or scenes) and I want them: highlighted red,
unnumbered, set to auto-continue, and have the text pre/post-fixed
with "---".  Likewise, I want EOS OSC cues to be orange with the Nomad
cue number noted in the text line in brackets.

All of this is possible with dilligence but when working under
pressure during tech, some of the niceties are often left for "later"
(which too often means "never").

## Environment

QLab (v4.x) and Nomad (v3.x) running on a Mac Mini (MacOS 11.x).
Xkeys programming with MacroWorks 3.1 on a Windows 10 Parallels VM.

## Topics

### Integrating QLab with Nomad via OSC

### QLab Template

### QLab Macros

### Keyboard Layout

### Toggling EOS/QLab from the Xkeys

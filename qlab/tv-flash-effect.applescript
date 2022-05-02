set scaleDuration to 0.3
set overlap to 0.0
set initialScale to 0.05

tell application id "com.figure53.QLab.4" to tell front workspace
	try
		set videoCue to last item of (selected as list)
		set originalNumber to q number of videoCue
		set q number of videoCue to ""

		if q type of videoCue is "Video" then

			-- Modify exiting Cue
			set scale x of videoCue to initialScale
			set scale y of videoCue to initialScale
			set hold at end of videoCue to true
			set full surface of videoCue to false

			-- Pause the video almost immediately
			make type "Pause"
			set pauseCue to last item of (selected as list)
			set pre wait of pauseCue to 0.01
			set cue target of pauseCue to videoCue

			-- Stretch Horizontally (1 x initialScale)
			make type "Fade"
			set hStretchFade to last item of (selected as list)
			set duration of hStretchFade to scaleDuration
			set preserve aspect ratio of hStretchFade to false
			set do scale of hStretchFade to true
			set scale x of hStretchFade to 1
			set scale y of hStretchFade to initialScale
			set cue target of hStretchFade to videoCue
			set q name of hStretchFade to "hStretch " & q list name of videoCue

			-- Stretch Vertically (1 x 1)
			make type "Fade"
			set vStretchFade to last item of (selected as list)
			set pre wait of vStretchFade to (scaleDuration - overlap)
			set duration of vStretchFade to scaleDuration
			set preserve aspect ratio of vStretchFade to false
			set do scale of vStretchFade to true
			set scale y of vStretchFade to 1
			set scale x of vStretchFade to 1
			set cue target of vStretchFade to videoCue
			set q name of vStretchFade to "vStretch " & q list name of videoCue

			-- Play the video
			make type "Start"
			set playCue to last item of (selected as list)
			set pre wait of playCue to ((scaleDuration * 2) - overlap)
			set cue target of playCue to videoCue

			-- Shrink Vertically (1 x initialScale)
			make type "Fade"
			set vShrinkFade to last item of (selected as list)
			set pre wait of vShrinkFade to ¬
				((duration of videoCue) + overlap + (scaleDuration * 2))
			set duration of vShrinkFade to scaleDuration
			set preserve aspect ratio of vShrinkFade to false
			set do scale of vShrinkFade to true
			set scale y of vShrinkFade to initialScale
			set scale x of vShrinkFade to 1
			set cue target of vShrinkFade to videoCue
			set q name of vShrinkFade to "vShrink " & q list name of videoCue

			-- Shrink Horizontally (initialScale x initialScale) and Stop
			-- pre wait is stretch*2 + overlap + video duration + vShrink - overlap
			make type "Fade"
			set hShrinkFade to last item of (selected as list)
			set pre wait of hShrinkFade to ¬
				((duration of videoCue) + (scaleDuration * 3))
			set duration of hShrinkFade to scaleDuration
			set preserve aspect ratio of hShrinkFade to false
			set do scale of hShrinkFade to true
			set scale x of hShrinkFade to initialScale
			set scale y of hShrinkFade to initialScale
			set cue target of hShrinkFade to videoCue
			set stop target when done of hShrinkFade to true
			set q name of hShrinkFade to "hShrink " & q list name of videoCue

			-- Create and populate the group
			set groupCues to {videoCue, pauseCue, hStretchFade, vStretchFade, playCue, vShrinkFade, hShrinkFade}

			make type "Group"
			set groupCue to last item of (selected as list)
			set q number of groupCue to originalNumber
			set mode of groupCue to fire_all
			set q name of groupCue to "TV Flash: " & q list name of videoCue
			repeat with eachCue in groupCues
				set eachCueID to uniqueID of eachCue
				move cue id eachCueID of parent of eachCue to end of groupCue
			end repeat

		end if
	end try
end tell
CoordMode Mouse, Screen

~LButton::
   MouseGetPos x0, y0            ; save start mouse position
   Loop
   {
     Sleep 20                    ; yield time to others
     GetKeyState keystate, LButton
     IfEqual keystate, U, {
       MouseGetPos x, y          ; position when button released
       break
     }
   }
   if (x-x0 > 5 or x-x0 < -5 or y-y0 > 5 or y-y0 < -5)
   {                             ; mouse has moved
      clip0 := ClipBoardAll      ; save old clipboard
      ClipBoard =
      Send ^c                    ; selection -> clipboard
      ClipWait 1, 1              ; restore clipboard if no data
      IfEqual ClipBoard,, SetEnv ClipBoard, %clip0%
   }
return

~Mbutton::
Send, ^v						  ;Paste via middle mouse click
return

# hooman i3 config
# i3 config file (v4)

set $mod Mod4
set $term alacritty
font pango:monospace 8

exec --no-startup-id xss-lock --transfer-sleep-lock -- i3lock --nofork
# dunst
exec_always dunst

set $nord0   #2E3440
set $nord1   #3B4252
set $nord2   #434C5E
set $nord3   #4C566A
set $nord4   #D8DEE9
set $nord5   #E5E9F0
set $nord6   #ECEFF4
set $nord7   #8FBCBB
set $nord8   #88C0D0
set $nord9   #81A1C1
set $nord10  #5E81AC
set $nord11  #BF616A
set $nord12  #D08770
set $nord13  #EBCB8B
set $nord14  #A3BE8C
set $nord15  #B48EAD


# Use amixer to adjust volume in ALSA.
bindsym XF86AudioRaiseVolume exec --no-startup-id $HOME/scripts/raise 
bindsym XF86AudioLowerVolume exec --no-startup-id $HOME/scripts/lower 
bindsym XF86AudioMute exec --no-startup-id $HOME/scripts/mute 

# Use Mouse+$mod to drag floating windows to their wanted position
floating_modifier $mod

# start a terminal
bindsym $mod+Return exec $term  
# start emacs
bindsym $mod+m exec emacs

# kill focused window
bindsym $mod+Shift+c kill

# start dmenu (a program launcher)
bindsym $mod+p exec dmenu_run -m 0 -fn Iosevka:size=10 -nb \#1d1f21 -nf \#c5c8c6 -sb \#3B4252 -sf \#c5c8c6
# change focus
bindsym $mod+j focus left
bindsym $mod+k focus down
bindsym $mod+l focus up
bindsym $mod+semicolon focus right

# alternatively, you can use the cursor keys:
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right

# move focused window
bindsym $mod+Shift+j move left
bindsym $mod+Shift+k move down
bindsym $mod+Shift+l move up
bindsym $mod+Shift+semicolon move right

# alternatively, you can use the cursor keys:
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right

# split in horizontal orientation
bindsym $mod+h split h

# split in vertical orientation
bindsym $mod+v split v

# enter fullscreen mode for the focused container
bindsym $mod+f fullscreen toggle

# change container layout (stacked, tabbed, toggle split)
bindsym $mod+s layout stacking
bindsym $mod+w layout tabbed
bindsym $mod+e layout toggle split

# toggle tiling / floating
bindsym $mod+Shift+space floating toggle

# change focus between tiling / floating windows
bindsym $mod+space focus mode_toggle

# focus the parent container
bindsym $mod+a focus parent
# We use variables to avoid repeating the names in multiple places.
set $ws1 "1"
set $ws2 "2"
set $ws3 "3"
set $ws4 "4"
set $ws5 "5"
set $ws6 "6"
set $ws7 "7"
set $ws8 "8"
set $ws9 "9"
set $ws10 "10"

# switch to workspace
bindsym $mod+1 workspace number $ws1
bindsym $mod+2 workspace number $ws2
bindsym $mod+3 workspace number $ws3
bindsym $mod+4 workspace number $ws4
bindsym $mod+5 workspace number $ws5
bindsym $mod+6 workspace number $ws6
bindsym $mod+7 workspace number $ws7
bindsym $mod+8 workspace number $ws8
bindsym $mod+9 workspace number $ws9
bindsym $mod+0 workspace number $ws10

# move focused container to workspace
bindsym $mod+Shift+1 move container to workspace number $ws1
bindsym $mod+Shift+2 move container to workspace number $ws2
bindsym $mod+Shift+3 move container to workspace number $ws3
bindsym $mod+Shift+4 move container to workspace number $ws4
bindsym $mod+Shift+5 move container to workspace number $ws5
bindsym $mod+Shift+6 move container to workspace number $ws6
bindsym $mod+Shift+7 move container to workspace number $ws7
bindsym $mod+Shift+8 move container to workspace number $ws8
bindsym $mod+Shift+9 move container to workspace number $ws9
bindsym $mod+Shift+0 move container to workspace number $ws10

# restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
bindsym $mod+Shift+r restart
# exit i3 (logs you out of your X session)
bindsym $mod+Shift+q exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -B 'Yes, exit i3' 'i3-msg exit'"
# excute emacs
bindsym $mod+Mod1+e exec "emacs"

# resize window (you can also use the mouse for that)
mode "resize" {
        # These bindings trigger as soon as you enter the resize mode

        bindsym j resize shrink width 10 px or 10 ppt
        bindsym k resize grow height 10 px or 10 ppt
        bindsym l resize shrink height 10 px or 10 ppt
        bindsym semicolon resize grow width 10 px or 10 ppt

        # same bindings, but for the arrow keys
        bindsym Left resize shrink width 10 px or 10 ppt
        bindsym Down resize grow height 10 px or 10 ppt
        bindsym Up resize shrink height 10 px or 10 ppt
        bindsym Right resize grow width 10 px or 10 ppt

        # back to normal: Enter or Escape or $mod+r
        bindsym Return mode "default"
        bindsym Escape mode "default"
        bindsym $mod+r mode "default"
}

bindsym $mod+r mode "resize"
#persian layout
exec_always "setxkbmap -layout us,ir -option 'grp:alt_shift_toggle'"
#screenshot
bindsym Print exec scrot 'scrot_%Y-%m-%d-%T_$wx$h.png' -e 'mv $f /home/hooman/Pictures'
#filemanager
bindsym $mod+shift+f exec $term -e ranger
#music

bindsym $mod+shift+n exec $term -e ncmpcpp 
#books
bindsym $mod+b exec $HOME/scripts/pdfs
# dotfiles
bindsym $mod+shift+d exec $HOME/scripts/dots
# shutdown
bindsym $mod+shift+s exec $HOME/scripts/halt

# no border
for_window [class="^.*"] border pixel 0
#gaps 
gaps outer 7
gaps inner 7
bindsym $mod+shift+plus  gaps inner current plus 5
bindsym $mod+shift+minus gaps inner current minus 5
bindsym $mod+ctrl+plus  gaps outer current plus 5
bindsym $mod+ctrl+minus gaps outer current minus 5
bindsym $mod+plus gaps outer current set 5
bindsym $mod+minus gaps inner current set 10
# hello there
exec notify-send "hello there" "general kenobi, you're a bold one"
# wallpaper
exec_always nitrogen --restore
# panel
exec_always --no-startup-id /home/amonti/.config/polybar/launch.sh
# compositor
exec_always picom --experimental-backends 
#nm-applet
exec_always nm-applet


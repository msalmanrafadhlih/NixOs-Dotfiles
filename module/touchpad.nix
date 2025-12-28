{ config, pkgs, lib, ... }:

{
 services = {
	libinput = {
	    enable = true;
	    touchpad = {
	        tapping = true;
	        naturalScrolling = true;
	        disableWhileTyping = true;q
	        sendEventsMode = "disabled-on-external-mouse";
	    };
	};

    udev = {
        enable = true;
        extraRules = 
let
  checkMice = pkgs.writeScript "check-mice" ''
    #!${pkgs.bash}/bin/bash

    # Check mice
    internal=(
      'Raydium Corporation Raydium Touch System'
      'Synaptics TM3289-021'
      'TPPS/2 Elan TrackPoint'
    )

    inhibitTrackpad=0

    for nameFile in /sys/class/input/mouse*/device/name; do
      name=$(cat "$nameFile")
      found=
      for (( i=0; i < ''${#internal[@]}; i += 1 )); do
        if [[ ''${internal[$i]} == $name ]]; then
          found=yes
          break
        fi
      done
      if [[ ! $found ]]; then
        # There is at least one external mouse connected
        inhibitTrackpad=1
        break
      fi
    done

    echo "$inhibitTrackpad" > /sys/class/input/mouse1/device/inhibited
  '';
in ''
  # Detect addition or removal of mouse devices, then enable or disable trackpad when external mouse is attached
  SUBSYSTEM=="input", DEVPATH=="*/input/*/mouse*", RUN+="${checkMice}"


        
#            ACTION=="add", SUBSYSTEM=="input", ATTRS{name}=="2.4G Mouse", \
#            ENV{DISPLAY}=":0", ENV{XAUTHORITY}="/home/tquilla/.Xauthority", \
#            RUN+="${pkgs.xorg.xinput}/bin/xinput --disable 'SYNA3602:00 0911:5288 Touchpad'"
#
#            ACTION=="remove", SUBSYSTEM=="input", ATTRS{name}=="2.4G Mouse", \
#            ENV{DISPLAY}=":0", ENV{XAUTHORITY}="/home/tquilla/.Xauthority", \
#            RUN+="${pkgs.xorg.xinput}/bin/xinput --enable 'SYNA3602:00 0911:5288 Touchpad'"
#            ## 'SYNA3602:00 0911:5288 Touchpad' & "2.4G Mouse" is my touchpad and mouse name, check xinput list' in terminal!

        '';
    };
  };
}


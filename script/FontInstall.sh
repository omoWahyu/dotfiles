#!/usr/bin/env bash
nf="/usr/share/fonts/nerd-fonts"
nf_link="https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1"

declare -a nf_list=("JetBrainsMono" "FiraCode" "FantasqueSansMono" "CaskaydiaCode" "Agave" "D2Coding" "Hack" "Iosevka" "IosevkaTerm" "IosevkaTermSlab" "Lilex" "Noto" "ProggyClean" "RobotoMono" "SpaceMono" "Symbols" "Terminess" "VictorMono" "Ubuntu" "UbuntuMono")

checkMark="\033[0;32m\xE2\x9C\x94\033[0m"
crossMark="\033[0;31m\xE2\x9D\x8C\033[0m"
installing_fonts(){
	clear 
	echo "Prepare for installing Fonts"
	echo -ne "\n"
	sleep 2
	tnf="/tmp/nerd-fonts"
	if [ ! -d "$tnf" ]; then
    	mkdir $tnf
	fi
    cd $tnf
	for i in "${nf_list[@]}"
	do
	clear 
		echo -e "Installing $i fonts"
		if [ ! -d "$tnf/$i" ]; then
			curl --progress-bar -P $tnf -OL $nf_link/$i.zip --progress-bar
			unzip $tnf/$i.zip -d $i
			clear
		else 
			echo -e "\n- Checking $i font"
			sleep 0.3
			echo -e "\r$checkMark $i already Cached"
			sleep 1.2
		fi

			echo -e "\r$checkMark $i Success Cached"
			sleep 1.2
		clear
	done

	echo -e "Moving font from cache to '$nf'"
	if [ ! -d "$nf" ]; then
		sudo mkdir $nf
	fi
	sudo mv -f $tnf $nf
	sleep 1.2

	fc-cache -v /usr/share/fonts
	sleep 0.5
	clear

	echo "Installed Font :"
	echo -e "========================\n"
	for i in "${nf_list[@]}"
	do
		echo -e "\r - $checkMark $i Installed"
		sleep 0.2
	done
}

clear
echo "##################"
echo "Install Nerd Font"
echo "##################"
echo -ne "\n"
sleep 1
echo "Checking for nerd-fonts dir"
sleep 3
sleep 0.3
if [ ! -d "$nf" ]; then
	installing_fonts
else 
	echo -ne '\rDirectory is exist    \r\n'

	read -n1 -e -p "Reinstall nerd-fonts? [Y/n]" r 
	case $r in  [yY] | '')
		echo -ne "\n"
		installing_fonts
		;;
		*)
		echo -ne "\n"
		echo \n $crossMark canceled
		;;
	esac
fi
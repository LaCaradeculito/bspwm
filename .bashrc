#
# ~/.bashrc
#
alias q='exit'
alias 0='startx'
alias 1='lf'
alias 2='xrandr --output eDP-1 --primary --mode 1920x1080 --output HDMI-1 --mode 1920x1080 \
		&& xrandr --output eDP-1 --mode 1920x1080 --same-as HDMI-1 --mode 1920x1080 \
		&& bspc monitor eDP-1 -d 1 2 3 4 5 6 7 8 9 \
		&& bspc wm --reorder-monitors eDP-1 HDMI-1'
alias 3='xrandr --output eDP-1 --primary --mode 1920x1080 --output HDMI-1 --mode 1920x1080 \
		&& xrandr --output eDP-1 --mode 1920x1080 --below HDMI-1 \
		&& bspc monitor eDP-1 -d 1 2 3 4 \
		&& bspc monitor HDMI-1 -d 5 6 7 8 9 \
		&& bspc wm --reorder-monitors eDP-1 HDMI-1'

alias bc="BC_ENV_ARGS=<(echo "scale=2") \bc"
alias Pad='xinput enable 12'
alias Rclone='. /home/alumno/bashScripts/rclone.sh && echo "Finito"'
alias S='killall spotifyd'
alias T='tint -l 3 -n'
alias Time="sudo timedatectl set-ntp true"
alias bashrcReload='. ~/.bashrc'
alias cache='fc-cache -fv'
alias chau='shutdown now'
alias cleanOS='yay -Sc && bleachbit -c --preset && sudo rm -rv /var/cache/pacman/pkg/* ; sudo pacman -R $(pacman -Qdtq)'
alias cleanOS_='rm -r ~/Desktop/*; rm -r ~/Documents/*; rm -r ~/Downloads/*'
alias clip=' xclip -selection clipboard'
alias din='cd /home/alumno/din-29/src/ && ./din'
alias dl='jrnl --config-override editor nvim'
alias dt='jrnl tecno --config-override editor nvim'
alias escalar_320=". /home/alumno/bashScripts/escalar_320.sh"
alias escalar_pantallaCompleta=". /home/alumno/bashScripts/escalar_pantallaCompleta.sh"
alias gb='goobook dquery'
alias hidden='bspc query -N -d focused -n .hidden.window'
alias hora='date +%d/%m/%Y%t%H:%M:%S'
alias j='jrnl -n1 --edit'
alias I='sudo mount /dev/sdb1 Invitado'
alias k='setxkbmap latam'
alias locate-DATOS='locate -d ~/.DATOS.db'
alias locate-SATA='locate -d ~/.SATA.db'
alias locate-David='locate -d ~/.pi.db'
alias locate-pi='locate -d ~/.pi.db'
alias m='sudo mount /dev/sdb1'
alias p='please'
alias pad='xinput disable 12'
alias papisExec='. /tmp/papis.sh'
alias papisLoad='cd /tmp/; cp ~/Templates/papis.sh ./ ;chmod a+x papis.sh && nvim papis.sh'
alias pi='sshfs pi@192.168.0.4:/media/pi/David/ /home/alumno/pi && lf pi'
alias pi_='sudo mount /dev/sdb1 pi'
alias pissh='ssh pi@192.168.0.4'
alias piumount='sudo umount /home/alumno/pi'
alias pleaseEdit='nvim ~/.config/please/*'
alias pseint='cd Aplicaciones/Portables/pseint && ./pseint'
alias s='spotifyd -b pulseaudio -v alsa -u lacaradeculito -p ruF1na71 && spt'
alias t='taskwarrior-tui'
alias ta2='task add due:2days'
alias ta='task add due:tomorrow'
alias tA='task due:today'
alias ter='setfont ter-k28n'
alias th2='task due:2days'
alias th='task due:tomorrow'
alias tm2='task modify due:2days'
alias tm='task modify due:tomorrow'
alias tn='task annotate'
alias u='udisksctl unmount -b'
alias update-SATA='updatedb -l 0 -o ~/.SSD_datos.db -U /home/alumno/datos'
alias update-DATOS='updatedb -l 0 -o ~/.DATOS.db -U /home/alumno/DATOS'
alias update-David='updatedb -l 0 -o ~/.pi.db -U /home/alumno/pi'
alias update-pi='updatedb -l 0 -o ~/.pi.db -U /home/alumno/pi'
alias uu='udisksctl power-off -b'
alias wifi='nmcli r wifi on && nmcli device wifi list'
alias z='zaread'

export GPGKEY=B1379094451E86F282B6892983DDBC91FA7DED2E # para Pass
export GPGKEY=4F81745FC2F76895C1675A643189376FC141C2E7 # para Pass
export GPGKEY=40074306BCE23F1CAD614F3996718D511F2B5DCF # para Pass

# a DATOS
############

alias papersp2Dd='rsync -avu --delete-delay \
	pi/papers/ \
	DATOS/papers/'

alias catap2Dd='rsync -avu --delete-delay \
	pi/2023/03_proyectos/02_cata/ \
	DATOS/2023/03_proyectos/02_cata/'

# a pi
###########

alias lolaD2pd='\
	rsync -avu --max-size=15mb --delete-delay \
		/home/alumno/DATOS/2023/01_docencia/01_ISFAlola/ \
		/home/alumno/pi/2023/01_docencia/01_ISFAlola/'

alias lolaD2pd_sshfs='\
	sshfs pi@192.168.0.4:/media/pi/David/ /home/alumno/pi && lf pi && \
	rsync -avu --max-size=15mb --delete-delay \
		/home/alumno/DATOS/2023/01_docencia/01_ISFAlola/ \
		/home/alumno/pi/2023/01_docencia/01_ISFAlola/'
alias config='\
	rsync -avu --delete-delay \
		/home/alumno/.config/ /home/alumno/pi/appsYsistema/00_sincronizar/0_Lenovo/.config && \
	rsync -avu --delete-delay \
		/home/alumno/.task/ /home/alumno/pi/appsYsistema/00_sincronizar/0_Lenovo/.task && \
	rsync -avu --delete-delay \
		/home/alumno/.pandoc/ /home/alumno/pi/appsYsistema/00_sincronizar/0_Lenovo/.pandoc && \
	rsync -avu --delete-delay \
		/home/alumno/.password-store/ /home/alumno/pi/appsYsistema/00_sincronizar/0_Lenovo/.password-store' 

alias papersD2p='rsync -avu \
	DATOS/papers/ \
	pi/papers/'

alias papersD2pd='rsync -avu --delete-delay \
	DATOS/papers/ \
	pi/papers/'

alias cataD2pd='rsync -avu --delete-delay \
	DATOS/2023/03_proyectos/02_cata/ \
	pi/2023/03_proyectos/02_cata/'


[[ $- != *i* ]] && return

colors() {
	local fgc bgc vals seq0

	printf "Color escapes are %s\n" '\e[${value};...;${value}m'
	printf "Values 30..37 are \e[33mforeground colors\e[m\n"
	printf "Values 40..47 are \e[43mbackground colors\e[m\n"
	printf "Value  1 gives a  \e[1mbold-faced look\e[m\n\n"

	# foreground colors
	for fgc in {30..37}; do
		# background colors
		for bgc in {40..47}; do
			fgc=${fgc#37} # white
			bgc=${bgc#40} # black

			vals="${fgc:+$fgc;}${bgc}"
			vals=${vals%%;}

			seq0="${vals:+\e[${vals}m}"
			printf "  %-9s" "${seq0:-(default)}"
			printf " ${seq0}TEXT\e[m"
			printf " \e[${vals:+${vals+$vals;}}1mBOLD\e[m"
		done
		echo; echo
	done
}

[[ -f ~/.extend.bashrc ]] && . ~/.extend.bashrc

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion

export EDITOR=nvim
export VISUAL=nvim
export BC_ENV_ARGS=/home/alumno/.bc

source /usr/share/bash-completion/completions/papis.bash
#source /home/alumno/.local/etc/bash_completion.d/papis.sh
export PATH="$PATH:$HOME/.local/bin"
#please
task due:tomorrow

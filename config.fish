alias fishrc="vim ~/.config/fish/config.fish"
alias l="ls -lh"
alias sourceFish="source ~/.config/fish/config.fish"
alias vol120="pactl set-sink-volume 0 120%"
alias vol110="pactl set-sink-volume 0 110%"
alias cling="~/Downloads/Compressed/cling/bin/cling"
alias vimrc="vim ~/.vimrc"
alias la="ls -lah"
alias seVim="fish_vi_key_bindings"
alias reVim="fish_default_key_bindings"
alias nvim="/usr/bin/nvim.appimage"
alias nvimrc="vim /home/iamfiasco/.config/nvim/init.vim"
alias pra_cj="cd /home/iamfiasco/atom/clojure/"
alias nvim="/usr/local/bin/nvim.appimage"
alias writedoc="cd /home/iamfiasco/writeUps/"
alias idea="bash /home/iamfiasco/Documents/idea-IC-211.7142.45/bin/idea.sh"
alias tor="./home/iamfiasco/academia/tor-browser_en-US/start-tor-browser.desktop"
alias procode="cd /home/iamfiasco/Desktop/tryst"
alias hyperrc="vim ~/.hyper.js"
alias godark="cd /home/iamfiasco/dark/"
alias pypy="/home/iamfiasco/pypy/pypy3.7-v7.3.5-linux64/bin/python"
alias rustRepl="evcxr"
function javarun
  javac $argv[1] -d /home/iamfiasco/javabin/temp.class && java /home/iamfiasco/javabin/temp
end


function playMusic
  cd /home/iamfiasco/Downloads/Music/audiophile
  cmus
end

function mkcd
  mkdir $argv[1] && cd $argv[1]
end

function ytdl
  youtube-dl -f bestvideo+bestaudio $argv[1]
end

function directorySearch
  find -name $argv[1]
end

function setVolume
  pactl set-sink-volume 0 $argv[1]%
end

function openTerminalTab
  mate-terminal --tab -e $argv[1] -t $argv[2]
end

function openTerminalWindow
  mate-terminal --window --full-screen --command $argv[1] -t $argv[2]
end

function storMax
  /opt/google/chrome/chrome &
  openTerminalTab "sudo nethogs" "nethogs"
  openTerminalTab "htop" "htop"
end

function brightness
  xrandr --output HDMI-0 --gamma 1:1:1 --brightness $argv[1]
end

function backup
  cp ~/.vimrc ~/dutc/
  cp ~/.config/fish/config.fish ~/dutc/
end

function vipython
	cp /home/iamfiasco/dutc/python.py .ycm_extra_conf.py
end


function vijs
	cp /home/iamfiasco/dutc/.tern-project .
end

function cpprun
	mkdir -p /home/iamfiasco/cpp
	g++ -std=c++2a $argv[1] -o /home/iamfiasco/cpp/test
	/home/iamfiasco/cpp/test
end

function crun
	mkdir -p output
	gcc $argv[1] -o  $argv[2] -w
end


function c++
	mkdir -p output
	g++ $argv[1] -o $argv[2]
end

function c++10
	mkdir -p output
	g++-10 $argv[1] -o $argv[2] -std=c++2a
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/iamfiasco/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<



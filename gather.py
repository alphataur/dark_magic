import os


def move_vimrc():
    if not os.path.exists("vim"):
        print("making directory for vim")
        os.makedirs("vim")
    else:
        print("directory already exists")
    print("copying vimrc to platform")
    os.system("cp /home/iamfiasco/.vimrc vim/")


def move_hyperc():
    if not os.path.exists("hyper"):
        print("making directory for hyper")
        os.makedirs("hyper")
    else:
        print("directory already exists")
    print("copying hyperc to platform")
    os.system("cp /home/iamfiasco/.hyper.js hyper/")

def move_i3():
    os.makedirs("i3/i3", exist_ok=True)
    os.system("cp -r /home/iamfiasco/.config/i3/config i3/i3/")
    os.makedirs("i3/i3status", exist_ok=True)
    os.system("cp -r /home/iamfiasco/.config/i3status/config i3/i3status/")

def move_fish():
    os.makedirs("fish", exist_ok=True)
    os.system("cp /home/iamfiasco/.config/fish/config.fish fish/")

if __name__ == "__main__":
    move_vimrc()
    move_hyperc()
    move_i3()
    move_fish()

### If you want install `yaru-theme` in `fedora`.

```bash
# fedora
sudo dnf install yaru-theme -y
```

### Make GNOME Look Like Mac OS.

First things first, go ahead open the terminal and update the package list by running the valid command command. Depending on the gnome Distro, update the package manager.

```bash
# Debian
sudo apt -y update && sudo apt -y upgrade
# Fedora
sudo dnf -y update && sudo dnf -y upgrade
```

### Make a Backup, (if you need)

```bash
# Debian
sudo apt install timeshifte
# Fedora
sudo dnf install timeshift
```

### Install Gnome Tweaks, Git & Extension Manager

```bash
# Debian
sudo apt install gnome-tweaks git
# Fedora
sudo dnf install gnome-tweaks git
```

gnome extension manager, not install directly in fedora you need `flatpak` in fedora.

```bash
# Debian
sudo apt install gnome-shell-extension-manager
# Fedora
flatpak install flathub com.mattjakeman.ExtensionManager
```

### Install MacOS Icon Pack

```bash
git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git
```

after go in `WhiteSur-icon-theme` directory

```bash
cd ./WhiteSur-icon-theme
```

run installation commend

```bash
./install.sh -b
```

### Install MacOS Theme Pack

```bash
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git
```

after go in `WhiteSur-gtk-theme` directory

I am gonna run the script file with options. if you want your according, check help `./install --help`.

```bash
./install.sh -a normal -m -N stable -l --round -t all -c Dark
```

Then execute this script to start installing all the things we need. Once it’s done, it’s time to run the tweaks script as a root.

With in the same folder you will see tweaks.sh file execute that script with -g option to theme the Gnome display manager.

```bash
sudo ./tweaks.sh -g
```

### Installing Useful Extension of gnome

Now, open the `Gnome Extensions Manager`. Next, click on the `Browse` button and use the search bar to find the `“user themes”` extension and install it.

Then, install `“dash to dock,”` but keep in mind that if you are using `Ubuntu`, do not install it as it may conflict with the default dock.

I am gonna add an animation to the dock by installing this `dash to dock` animator.

Then, install the `“Compiz Magic Lamp Effect”` extension which will give a Genie effect to the window manager whenever you minimize or maximize.

Next, search for `“blur”` and install `“Blur My Shell”` to blur the Gnome shell.

Finally, install the `“Gnome 4X UI Improvements”` extension, which makes the Gnome shell faster and more minimal.

### Removing

```bash
sudo dnf remove sassc libsass dialog
# Postman
sudo cp -r ~/.config/Postman/proxy ~/.var/app/com.getpostman.Postman/config/Postman/proxy
```

### DNS Config

```text
IPV4
8.8.8.8,8.8.4.4

IPV6
2001:4860:4860::8888,2001:4860:4860::8844
```

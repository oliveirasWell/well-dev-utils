# Well Dev Utils
A collection of useful tools and features at diverse languages to help all develops


# Table of Contents
1. [Git](#git)
2. [Merge branch from another repository](#git)
3. [Create a Tag and push](#git)
4. [Create a shortcut at linux](#git)

# Utils

## Git


### Add a repo subtree 

```
git subtree add --prefix=rails git://github.com/rails/rails.git master
```

### Merge branch from another repository

```
git remote add origin2 https://github.com/user/otherRepo
git merge origin2/branchYouWantToMerge
```


### Create a Tag and push

```
git tag -a v1.0 -m “Sum functionality”
git push origin v1.0
```


### Show files unmerged

```
git diff --name-status --diff-filter=U
```
## Linux

### Fix ubuntu keyboard delay 

https://askubuntu.com/questions/1035882/input-delay-when-using-two-keyboards-under-ubuntu-18-04-xorg


### Create a shortcut at linux

run: `gedit ~/Desktop/Skype.desktop`


Then:

```
#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/snap/bin/skype
Name=Skype
Comment=Skype
Icon=/snap/skype/23/usr/share/icons/hicolor/256x256/apps/skypeforlinux.png
```


# Tutorial of instalations 

## Anaconda 
https://www.digitalocean.com/community/tutorials/how-to-install-anaconda-on-ubuntu-18-04-quickstart-pt


## Backup extensions
https://www.ubuntubuzz.com/2018/08/backup-and-restore-gnome-shell-extensions.html

# configure-the-world
My personal set of configuration files, as I continue my journey on configuring the entire world to my liking!

---


## Repo Breakdown
- config
    - Useful config files for vairous programs (vim, bash, etc)
- scripts
    - Useful scripts for bash or powershell (but mostly bash let's be real)
- wallpapers
    - Some of the most beautiful images you have ever seen. Not made by me
- COMMANDS.md
    - A large container filled we various helpuf commands for linux

### MGD Home Folder Standard)
- $HOME folder
  - Keep the folders in there with capitals and add:
    - /apps - application builds not done in package manager
    - /dev - development projects
        - This should be backed up
    - /games - *(optional) You can also put games in stuff
    - /secret - Any secrets/keys that need stored
  - Since dev is the only one backed up, the outside dirs
  should really only hold data applicable to *this machine.*
  - Any data that needs to be backed up should be in dev/ or /stuff

### MGD Bulk Folder Standard
- /stuff folder:
  - Sits at the root directory, used for bulk storage
  - Will typically be mounted to another drive
  - Use permissions (2775) and wheel/other group
  - Add the following subfolders:
    - /archive - old projects/documents not needed day-to-day
    - /backups - backup data for all devices (including own $HOME/dev)
    - /drive   - google drive
    - /media/documents
    - /media/music
    - /media/pictures
    - /media/videos
    - /media/games *(optional)


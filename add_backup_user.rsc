#template for add credentials to router
#Change password and paste ssh public key
/user group add name=backup policy=ssh,policy,test,!local,!telnet,!ftp,!reboot,!read,!write,!winbox,!password,!web,!sniff,!sensitive,!api,!romon,!dude,!tikapp
/user add name=mt_backup group=backup password="s(jv;10rb&1bvz9HnGWbvpwP"
/file print file=public_key_file.txt
:delay 2
/file set public_key_file.txt contents="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCuGMnigDARVW8+4xrOr+Ww5LcLXfhfEzmyuQSQJ8RxrWe03+S4gylG0iwYGCdk4iPds3DgzNj1jNdqUtkmqHa//UNxRVq5MPgNHgOr5Z3SBupdn5ku+DtOYHMwoBr495+/p9xGiujjDXuV7rJ/YoaDh98QLjn3E46RhKAjpiqiiq6wAE3WFkVLALv7wRwQEvXK
VLO3MT9BS3Cv5GFjARpZ992duQVf9QSksB+XuAePvKkYiH8YdQQdZOHuSH7SCyVym6XGHUgdoX9hW3PxJKLx/I0DldEuQ2gd3lijTZb5VXF15P/LXSIdtgL+88idCH86Rh+hi/SttUm7VbMugsTR mt_backup"
:delay 2
/user ssh-keys import user=backup public-key-file=public_key_file
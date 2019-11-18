#template for add credentials to router
#Change password and paste ssh public key
/user group add name=backup policy=ssh,policy,test,!local,!telnet,!ftp,!reboot,!read,!write,!winbox,!password,!web,!sniff,!sensitive,!api,!romon,!dude,!tikapp
/user add name=mt_backup group=backup password="PASSWORD"
/file print file=public_key_file.txt
:delay 2
/file set public_key_file.txt contents="PUBLIC_KEY"
:delay 2
/user ssh-keys import user=backup public-key-file=public_key_file

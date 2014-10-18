janus_dir=~/.vim/janus
if [ -d "$janus_dir" ]
then
  echo "Janus installed already"
else
  curl -Lo- https://bit.ly/janus-bootstrap | bash
fi

mysql_launcher=~/Library/LaunchAgents/homebrew.mxcl.mysql.plist
if [ -e "$mysql_launcher" ]
then
  rm "$mysql_launcher"
fi
ln -sfv /usr/local/opt/mysql/*.plist ~/Library/LaunchAgents

mysql.server restart

mysql_secure_installation

mysql.server restart

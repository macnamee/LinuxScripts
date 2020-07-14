cd ~
rm msg.txt

echo 'To:macnamee@gmail.com' | tee ~/msg.txt
echo 'From:Daemon@macnamee.org' | tee -a ~/msg.txt
echo 'Subject:'$HOSTNAME 'Task Complete' | tee -a ~/msg.txt

ssmtp macnamee@gmail.com < msg.txt

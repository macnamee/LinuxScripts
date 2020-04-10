cd ~
rm msg.txt

echo 'To:SomeName@gmail.com' | tee ~/msg.txt
echo 'From:SomeName@gmail.com' | tee -a ~/msg.txt
echo 'Subject:'$HOSTNAME 'Task Complete' | tee -a ~/msg.txt

ssmtp SomeName@gmail.com < msg.txt

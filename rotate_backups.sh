#!/bin/sh
rm /home/jordanwelch/Dropbox/Grocy_Backups/grocy3.db
cp /home/jordanwelch/Dropbox/Grocy_Backups/grocy2.db /home/jordanwelch/Dropbox/Grocy_Backups/grocy3.db
cp /home/jordanwelch/Dropbox/Grocy_Backups/grocy1.db /home/jordanwelch/Dropbox/Grocy_Backups/grocy2.db
cp /home/jordanwelch/Dropbox/Grocy_Backups/grocy.db /home/jordanwelch/Dropbox/Grocy_Backups/grocy1.db
cp /var/www/html/data/grocy.db /home/jordanwelch/Dropbox/Grocy_Backups/

# Fix Ownership
# I have Dropbox running as my local user, so have to make sure the files are owned by that user.
sudo chown jordanwelch /home/jordanwelch/Dropbox/Grocy_Backups/*
sudo chgrp jordanwelch /home/jordanwelch/Dropbox/Grocy_Backups/*
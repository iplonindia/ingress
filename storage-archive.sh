#!/bin/bash

DATE=$(date +%Y-%m-%d)


tar_folder=$(date +%Y-%m-%d -d "$DATE - 1 day")

echo $tar_folder
for listfolders in 'ampluslakeasia' 'largeutilitylakeasia' 'microgridlakeasiafive' 'microgridlakeasiasix'  'other' 'arraymeter' 'microgridlakeafrica' 'microgridlakeasiafour' 'microgridlakeasiathree' 'iplonlakeasia' 'microgridlakeamerica'  'microgridlakeasiaone' 'microgridlakeasiatwo' 'smallutilitylakeasia' ;
do
tar_Date_DIR="/mnt/disks/nfs/apache/$listfolders/logs/$tar_folder"
if [ -d "$tar_Date_DIR" ]; then
    cd /mnt/disks/nfs/apache/$listfolders/logs/
    echo "$tar_folder directory is going to be make tar file"
    time tar -cjf ${tar_folder}.tar.gz $tar_folder
fi



del_folder=$(date +%Y-%m-%d -d "$DATE - 1 day")

del_Date_DIR="/mnt/disks/nfs/apache/$listfolders/logs/$del_folder"
if [ -d "$del_Date_DIR" ]; then
    cd /mnt/disks/nfs/apache/$listfolders/logs/
    del_File="/mnt/disks/nfs/apache/$listfolders/logs/$del_folder.tar.gz"
    if [ -f "$del_File" ]; then
        echo "$del_folder directory is going to be deleted"
        time rm -r $del_folder/
    fi
fi


tar_del=$(date +%Y-%m-%d -d "$DATE - 60 day")

tar_del_File="/mnt/disks/nfs/apache/$listfolders/logs/$tar_del.tar.gz"
if [ -f "$tar_del_File" ]; then
    cd /mnt/disks/nfs/apache/$listfolders/logs/
    echo "$tar_del tar file is going to be deleted"
    time rm -r $tar_del.tar.gz
fi
done
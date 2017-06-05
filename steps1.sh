
sudo deluser --remove-home user0
sudo deluser --remove-home user1
sudo deluser --remove-home user2
sudo deluser --remove-home user3
sudo deluser --remove-home user4
sudo deluser --remove-home user5
sudo deluser --remove-home user6
sudo deluser --remove-home user7
sudo deluser --remove-home user8
sudo deluser --remove-home user9

sudo delgroup rootuser
sudo delgroup admin1
sudo delgroup admin2
sudo delgroup admin3
sudo delgroup moderator1
sudo delgroup moderator2
sudo delgroup moderator3
sudo delgroup student1
sudo delgroup student2
sudo delgroup student3

sudo addgroup rootuser
sudo addgroup admin1
sudo addgroup admin2
sudo addgroup admin3
sudo addgroup moderator1
sudo addgroup moderator2
sudo addgroup moderator3
sudo addgroup student1
sudo addgroup student2
sudo addgroup student3

#creating root user
sudo useradd -m user0 -g rootuser -d /home/user0 -s /bin/bash
sudo usermod -aG sudo user0
echo user0 created

#creating first admin
sudo useradd -m user1 -g admin1 -d /home/user1 -s /bin/bash
sudo mkdir /home/user1/Delta

for i in $(seq 10); 
do 
date | md5sum | head -c 10 >  /home/user1/Delta/file_${i}.txt;
sleep 1;
done;

sudo chmod 760 /home/user1
sudo chown user1:admin1 -R /home/user1
sudo chmod 760 -R /home/user1
echo user1 created

#creating second admin
sudo useradd -m user2 -g admin2 -d /home/user2 -s /bin/bash
sudo mkdir /home/user2/Delta

for i in $(seq 10); 
do 
date | md5sum | head -c 10 >  /home/user2/Delta/file_${i}.txt;
sleep 1;
done;

sudo chmod 760 /home/user2
sudo chown user2:admin2 -R /home/user2
sudo chmod 760 -R /home/user2
echo user2 created

#creating third admin
sudo useradd -m user3 -g admin3 -d /home/user3 -s /bin/bash
sudo mkdir /home/user3/Delta

for i in $(seq 10); 
do 
date | md5sum | head -c 10 >  /home/user3/Delta/file_${i}.txt;
sleep 1;
done;

sudo chmod 760 /home/user3
sudo chown user3:admin3 -R /home/user3
sudo chmod 760 -R /home/user3
echo user3 created

#creating first moderator
sudo useradd -m user4 -g moderator1 -d /home/user4 -s /bin/bash
sudo mkdir /home/user4/Delta

for i in $(seq 10); 
do 
date | md5sum | head -c 10 >  /home/user4/Delta/file_${i}.txt;
sleep 1;
done;

sudo chmod 770 /home/user4
sudo chown user4:moderator1 -R /home/user4
sudo chmod 770 -R /home/user4
echo user4 created

#creating second moderator
sudo useradd -m user5 -g moderator2 -d /home/user5 -s /bin/bash
sudo mkdir /home/user5/Delta

for i in $(seq 10); 
do 
date | md5sum | head -c 10 >  /home/user5/Delta/file_${i}.txt;
sleep 1;
done;

sudo chmod 770 /home/user5
sudo chown user5:moderator2 -R /home/user5
sudo chmod 770 -R /home/user5
echo user5 created

#creating third moderator
sudo useradd -m user6 -g moderator3 -d /home/user6 -s /bin/bash
sudo mkdir /home/user6/Delta

for i in $(seq 10); 
do 
date | md5sum | head -c 10 >  /home/user6/Delta/file_${i}.txt;
sleep 1;
done;

sudo chmod 770 /home/user6
sudo chown user6:moderator3 -R /home/user6
sudo chmod 770 -R /home/user6
echo user6 created

#creating first student
sudo useradd -m user7 -g student1 -d /home/user7 -s /bin/bash
sudo mkdir /home/user7/Delta

for i in $(seq 10); 
do 
date | md5sum | head -c 10 >  /home/user7/Delta/file_${i}.txt;
sleep 1;
done;

sudo chmod 770 /home/user7
sudo chown user7:student1 -R /home/user7
sudo chmod 770 -R /home/user7
echo user7 created

#creating second student
sudo useradd -m user8 -g student2 -d /home/user8 -s /bin/bash
sudo mkdir /home/user8/Delta

for i in $(seq 10); 
do 
date | md5sum | head -c 10 >  /home/user8/Delta/file_${i}.txt;
sleep 1;
done;

sudo chmod 770 /home/user8
sudo chown user8:student2 -R /home/user8
sudo chmod 770 -R /home/user8
echo user8 created

#creating third student
sudo useradd -m user9 -g student3 -d /home/user9 -s /bin/bash
sudo mkdir /home/user9/Delta

for i in $(seq 10); 
do 
date | md5sum | head -c 10 >  /home/user9/Delta/file_${i}.txt;
sleep 1;
done;

sudo chmod 770 /home/user9
sudo chown user9:student3 -R /home/user9
sudo chmod 770 -R /home/user9
echo user9 created

# granting required privs
sudo usermod -a -G moderator1,moderator2,moderator3,student1,student2,student3 user1
sudo usermod -a -G moderator1,moderator2,moderator3,student1,student2,student3 user2
sudo usermod -a -G moderator1,moderator2,moderator3,student1,student2,student3 user3
sudo usermod -a -G student1,student2,student3 user4
sudo usermod -a -G student1,student2,student3 user5
sudo usermod -a -G student1,student2,student3 user6




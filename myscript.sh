#!/usr/bin/env bash

touch Mark\ Lovecchio.txt

mkdir -p /var/public/sales/data
mkdir -p /var/public/sales/projects
mkdir -p /var/public/techs/data
mkdir -p /var/public/techs/projects
mkdir -p /var/public/devops/data
mkdir -p /var/public/devops/projects

groupadd sales
groupadd techs
groupadd devops

chgrp -R sales /var/public/sales
chgrp -R techs /var/public/techs
chgrp -R devops /var/public/devops

chmod 2770 /var/public/sales
chmod 2770 /var/public/techs
chmod 2770 /var/public/devops

cp -R /etc/skel /etc/skel-sales
cp -R /etc/skel /etc/skel-techs
cp -R /etc/skel /etc/skel-devops

mkdir /home/SALES
mkdir /home/TECHS
mkdir /home/DEVOPS

groupadd looneytunes

useradd -c "Bugs Bunny" -g sales -G looneytunes -k /etc/skel-sales -m -d /home/SALES/bbunny bbunny

useradd -c "Tasmanian Devil" -g sales -G looneytunes -k /etc/skel-sales -m -d /home/SALES/tdevil tdevil

useradd -c "Marvin the Martian" -g sales -G looneytunes -k /etc/skel-sales -m -d /home/SALES/mmartian mmartian

useradd -c "Sylvester" -g sales -G looneytunes -k /etc/skel-sales -m -d /home/SALES/sylvester sylvester

useradd -c "Yosemite Same" -g techs -G looneytunes -k /etc/skel-techs -m -d /home/TECHS/ysam ysam

useradd -c "Speedy Gonzales" -g techs -G looneytunes -k /etc/skel-techs -m -d /home/TECHS/sgonzales sgonzales

useradd -c "Pepe Le Pew" -g techs -G looneytunes -k /etc/skel-techs -m -d /home/TECHS/ppew ppew

useradd -c "Wile E. Coyote" -g techs -G looneytunes -k /etc/skel-techs -m -d /home/TECHS/wcoyote wcoyote

useradd -c "Foghorn Leghorn" -g devops -G looneytunes -k /etc/skel-devops -m -d /home/DEVOPS/fleghorn fleghorn

useradd -c "Elmer Fudd" -g devops -G looneytunes -k /etc/skel-devops -m -d /home/DEVOPS/efudd efudd

useradd -c "Tweety Bird" -g devops -G looneytunes -k /etc/skel-devops -m -d /home/DEVOPS/tbird tbird

useradd -c "Porky Pig" -g devops -G looneytunes -k /etc/skel-devops -m -d /home/DEVOPS/ppig ppig

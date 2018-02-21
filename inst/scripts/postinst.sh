#!/bin/bash

echo "Adding PPAs"
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

sudo apt-key adv -y  --keyserver keyserver.ubuntu.com --recv-keys BDCB16CCBE796FF2
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys CDF2E7E8
sudo wget -O - http://qgis.org/downloads/qgis-2015.gpg.key | gpg --import
sudo add-apt-repository -y ppa:ubuntugis/ubuntugis-unstable
sudo add-apt-repository -y ppa:ubuntugis/ubuntugis-experimental
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-add-repository -y ppa:aims/aims-desktop
sudo apt-add-repository -y ppa:superm1/uefi 
# rcran
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
sudo add-apt-repository ppa:marutter/rdev

echo "updating repositories"
sudo apt-get update
sudo apt-get upgrade

echo "Installing packages"

sudo apt-get --yes --force-yes upgrade

cd /
sudo ln -s /usr/share/initramfs-tools/scripts
sudo apt-get install -y  libmagick++-dev gimp inkscape grsync arandr gparted filezilla 
sudo apt-get install -y  git-core cvs subversion mercurial aptitude
sudo apt-get install -y  git cmake g++ libboost-all-dev libgdal1-dev libeigen3-dev libflann-dev libopenni-dev 
sudo apt-get install -y  google-chrome-beta
sudo apt-get install -y  lupin-casper apt-clone casper cifs-utils 
sudo apt-get install -y  cryptsetup cryptsetup-bin dmeventd dmraid dmsetup dpkg-repack efibootmgr fwupdate 
sudo apt-get install -y  gir1.2-timezonemap-1.0 gir1.2-xkl-1.0 gparted grub-gfxpayload-lists jfsutils keyutils 
sudo apt-get install -y  libdevmapper-event1.02.1 libdmraid1.0.0.rc16 libefivar0 libfwup0 
sudo apt-get install -y  liblvm2app2.2 liblvm2cmd2.02 liblzo2-2  libreadline5  libtimezonemap1 
sudo apt-get install -y  localechooser-data lvm2 mokutil os-prober python-crypto python-ldb python-tdb 
sudo apt-get install -y  rdate reiserfsprogs secureboot-db user-setup 
sudo apt-get install -y  wamerican xfsprogs feh libid3tag0 libimlib2 ecryptfs-utils libecryptfs0 libnss3-1d
sudo apt-get install -y pandoc texlive texlive-lang-german texlive-latex-extra texmaker 
sudo apt-get install -y  python-samba samba-common samba-common-bin grub-common grub-pc grub-pc-bin grub2-common kpartx kpartx-boot 
sudo apt-get install -y  language-pack-bn language-pack-bn-base language-pack-de language-pack-de-base language-pack-en language-pack-en-base language-pack-es language-pack-es-base language-pack-fr language-pack-fr-base language-pack-gnome-bn language-pack-gnome-bn-base language-pack-gnome-de language-pack-gnome-de-base language-pack-gnome-en language-pack-gnome-en-base language-pack-gnome-es language-pack-gnome-es-base language-pack-gnome-fr language-pack-gnome-fr-base language-pack-gnome-hi language-pack-gnome-hi-base language-pack-gnome-ja language-pack-gnome-ja-base language-pack-gnome-pt language-pack-gnome-pt-base language-pack-gnome-xh language-pack-gnome-xh-base language-pack-gnome-zh-hans language-pack-gnome-zh-hans-base language-pack-hi language-pack-hi-base language-pack-ja language-pack-ja-base language-pack-pt language-pack-pt-base language-pack-xh language-pack-xh-base language-pack-zh-hans language-pack-zh-hans-base 
sudo apt-get install -y  libdebian-installer4 libgif4 sbsigntool libjpeg-progs libjpeg8
sudo apt-get install -y  openjdk-7-jre icedtea-7-plugin openjdk-7-jdk openjdk-7-source openjdk-7-demo openjdk-7-doc openjdk-7-jre-headless
echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections
sudo apt-get install -y oracle-java8-installer
sudo apt-get install -y  build-essential autoconf libtool pkg-config python-opengl python-imaging python-pyrex python-pyside.qtopengl idle-python2.7 qt4-dev-tools qt4-designer libqtgui4 libqtcore4 libqt4-xml libqt4-test libqt4-script libqt4-network libqt4-dbus python-qt4 python-qt4-gl libgle3 python-dev
sudo apt-get install -y  python2.7 python-dev build-essential python-shapely python-rpy python-gdal python-psycopg2 python-rpy2 python-numpy python-wxtools spyder python-setuptools-doc python-vtk libvtk-java python-numpy libgeotiff-dev swig2.0 python-scipy python-pip python-wheel libgeos++-dev python-software-properties
sudo apt-get install -y  libgdal1-dev binutils libproj-dev gdal-bin geotiff-bin
sudo apt-get install -y  r-base rstudio-upstream-deb r-cran-rjava
libvtk5.8-qt4 libqhull-dev qt-sdk libvtk5-qt4-dev libpcap-dev python-vtk libvtk-java python-numpy libgeotiff-dev libgeos++-dev libcurl4-openssl-dev
sudo apt-get install -y  libwxgtk3.0-dev libgdal-dev libproj-dev libjasper-dev libexpat1-dev wx-common libexpat1-dev libogdi3.2-dev unixodbc-dev libssl-dev libffi-dev python-dev libssl-dev libffi-dev libxml2-dev libxslt1-dev zlib1g-dev libevent-dev
sudo apt-get install -y  googleearth-package
sudo apt-get install -y  liblas-bin liblas-dev 
sudo  apt-get install -y  libimage-exiftool-perl dcraw gpsbabel
sudo apt-get install -y  grass saga qgis qgis-api-doc qgis-plugin-globe-common qgis-common qgis-providers-common qgis-provider-grass python-qgis 
echo "ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true" | sudo debconf-set-selections
sudo apt-get install ttf-mscorefonts-installer
sudo  apt-get install -y  wine sshpass mono-runtime libmono-system-windows-forms4.0-cil libmono-system-core4.0-cil libmono-system-management4.0-cil libmono-system-xml-linq4.0-cil
sudo  apt-get install -y  libgd-gd2-perl libv8-3.14-dev usb-creator-gtk
sudo apt-get install -y unattended-upgrades 

sudo apt-get autoremove -y

echo "Finished adding PPAs and insatlling applications"

#NCL/NCAR
# you need the libssl0.9.8
sudo apt-get install -y libssl0.9.8
 
sudo mkdir /usr/local/ncl-6.3.0
cd /usr/local/ncl-6.3.0
sudo wget https://www.earthsystemgrid.org/download/fileDownload.htm?logicalFileId=e088d94c-cd9a-11e4-bb80-00c0f03d5b7c
sudo mv fileDownload.htm?logicalFileId=e088d94c-cd9a-11e4-bb80-00c0f03d5b7c ncl-6.3.0.gz
sudo tar -xvf ncl-6.3.0.gz
 
# add pathes to .bashrc
echo "export PATH=$NCARG_ROOT/bin:$PATH" >> ~/.bashrc
echo "export NCARG_ROOT=/usr/local/ncl-6.3.0" >> ~/.bashrc



# Build and install the netCDF Operator (NCO)
sudo aptitude install -y antlr libantlr-dev # ANTLR
sudo aptitude install -y libcurl4-gnutls-dev libexpat1-dev libxml2-dev # DAP-prereqs (curl, expat XML parser)
sudo aptitude install -y bison flex gcc g++ # GNU toolchain
sudo aptitude install -y gsl-bin libgsl0-dev # GSL
sudo aptitude install -y libnetcdf6 libnetcdf-dev netcdf-bin # netCDF and DAP
sudo aptitude install -y libhdf5-serial-dev # HDF5
sudo aptitude install -y udunits-bin libudunits2-0 libudunits2-dev # UDUnits
 
mkdir ~/tmp/nco
cd ~/tmp/nco
getting the actual version from the git repository
git clone https://github.com/czender/nco.git;cd nco;git
./configure --prefix=/usr/local
make 
make check
sudo make install
 
# export the pathes
# or better put it in the .bashrc
echo "export PATH=/usr/local/bin:$PATH"  >> ~/.bashrc
echo "export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH" >> ~/.bashrc
source ~./bashrc

# cdo
mkdir ~/tmp/cdo
cd ~/tmp/cdo
 
# current 05/2015 CDO
wget https://code.zmaw.de/attachments/download/10198/cdo-1.6.9.tar.gz
 
# current 05/2015 netcdf
wget http://www.unidata.ucar.edu/downloads/netcdf/ftp/netcdf-4.3.3.1.tar.gz
 
# current 05/2015 GRIBapi
wget https://software.ecmwf.int/wiki/download/attachments/3473437/grib_api-1.13.1.tar.gz
 
# current 05/2015 hdf5
wget ftp://ftp.unidata.ucar.edu/pub/netcdf/netcdf-4/hdf5-1.8.13.tar.gz
 
# current 05/2015 zlib
wget ftp://ftp.unidata.ucar.edu/pub/netcdf/netcdf-4/zlib-1.2.8.tar.gz
 
# current 05/2015 jasper
wget http://www.ece.uvic.ca/~frodo/jasper/software/jasper-1.900.1.zip
 
# unpack the archives
tar -xvf cdo-1.6.9.tar.gz
tar -xvf netcdf-4.3.4.1.tar.gz
tar -xvf grib_api-1.13.1.tar.gz
tar -xvf hdf5-1.8.13.tar.gz
tar -xvf zlib-1.2.8.tar.gz
unzip jasper-1.900.1.zip
 
# Next configure and build the single packages. You should start with ''zlib'' and end for sure with cdo
cd zlib-1.2.8
./configure --prefix=/usr/local/cdo
make
make check
make install
cd ../hdf5-1.8.13
./configure -with-zlib=/usr/local/cdo --prefix=/usr/local/cdo CFLAGS=-fPIC
make
make check
make install
cd ../netcdf-4.3.3.1
CPPFLAGS=-I/usr/local/cdo/include LDFLAGS=-L/usr/local/cdo/lib ./configure --prefix=/usr/local/cdo CFLAGS=-fPIC
make
make check
make install
cd ../jasper-1.900.1
./configure --prefix=/usr/local/cdo  CFLAGS=-fPIC
make
make check
make install
cd ../grib_api-1.13.1
./configure --prefix=/usr/local/cdo CFLAGS=-fPIC  -with-netcdf=/usr/local/cdo -with-jasper=/usr/local/cdo
make
make check
make install
cd ../cdo-1.6.9
./configure --prefix=/usr/local/cdo CFLAGS=-fPIC  -with-netcdf=/usr/local/cdo -with-jasper=/usr/local/cdo -with-hdf5=/usr/local/cdo  -with-grib_api=/usr/local/cdo
make
make check
make install
echo "export PATH=/usr/local/cdo:$PATH"  >> ~/.bashrc
source ~./bashrc


# ncview

# installing the prerequisites 
sudo apt-get install -y libxt-dev xaw3dg-dev
sudo apt-get install -y libnetpbm10-dev
 
# you need to make these links
cd /usr/include/X11 ; sudo ln -s Xaw3d Xaw
cd /usr/lib/        ; sudo ln -s libXaw.so.7 libXaw.so
 
# if not installed (probably not) you need xorg-dev
sudo apt-get install -y xorg-dev
 
 
# getting the source 
mkdir ~/tmp/ncview
cd ~/tmp/ncview
wget ftp://cirrus.ucsd.edu/pub/ncview/ncview-2.1.2.tar.gz
tar -xvf ncview-2.1.2.tar.gz
cd ncview-2.1.2
 
# now we can configure, make and install the package
./configure --x-libraries=/usr/X11R6/lib
make
sudo make install



exit 0

# For 16.04 we need an older version of Exiv2, so checkout the correct version.
git clone https://github.com/Exiv2/exiv2.git
cd exiv2
git checkout 0.26 
mkdir build && cd build
cmake ..
make
sudo make install

# It is sometimes hard to find by cmake, for some reason the .deb is also necessary.
sudo apt-get install libexiv2-14

# Catkin tools for build process
sudo apt-get install python-catkin-tools

# Additional ROS package dependencies
sudo apt-get install ros-kinetic-geographic-msgs
sudo apt-get install ros-kinetic-geodesy

# Eigen3 for several linear algebra problems
sudo apt-get install libeigen3-dev

# Gdal library for conversions between UTM and WGS84
sudo apt-get install gdal-bin

# Cgal library for delauney 2.5D triangulation and mesh creation
sudo apt-get install libcgal-dev
sudo apt-get install libcgal-qt5-dev

# PCL for writing point clouds and mesh data
sudo add-apt-repository ppa:v-launchpad-jochen-sprickerhof-de/pcl
sudo apt-get update
sudo apt-get install libpcl-all

# Pangolin
git clone https://github.com/stevenlovegrove/Pangolin.git
cd Pangolin && mkdir build && cd build && cmake ..
make -j && sudo make install

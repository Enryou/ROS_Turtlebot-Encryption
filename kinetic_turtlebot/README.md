**Installing ROS and the Turtlebot robot simulation in `Kubuntu 16.04`**
========================================================================

**Note: These instructions should also work for `Lubuntu 16.04`, `Xubuntu 16.04`, and `Ubuntu 16.04`.**

**Note: You need to already have installed Kubuntu/Lubuntu/Xubuntu/Ubuntu. Log in to your Kubuntu/Lubuntu/Xubuntu/Ubuntu installation, make sure you have an internet connection and start following these instructions.**
	
1. Navigate to [<https://bitbucket.org/damienjadeduff/456_kinetic_turtlebot/src>](https://bitbucket.org/damienjadeduff/456_kinetic_turtlebot/src) and download the scripts there (`install_456_students.sh` and `test_turtlebot_install.sh`). You can either continue following the instructions below or, if you are familiar with GNU Linux & ROS, you can investigate the scripts and do the installation yourself.

2. Start a command terminal. You can find it from the application menu. This can be any of `konsole`, `LXTerminal`, `XTerm`, `gnome-terminal`, and so forth.

3. First run `install_456_students.sh`. This will install ROS Kinetic and some extra packages that will/may come in useful. If the script does not show "_ROS Kinetic Turtlebot install with extra packages finished._" when it finishes, there may be a problem. To run the script, you may first have to set its permissions to "executable" and then run it. So, if you downloaded the scripts to a directory called `~/Downloads`, from a terminal you would run:

		cd ~/Downloads                    #You must exchange this path for the path where you downloaded the scripts.
		chmod u+x install_456_students.sh #Makes the script executable.
		./install_456_students.sh         #Runs the script.

4. To test the installation was successful, run the script `test_turtlebot_install.sh`. This should start a turtlebot simulation as well as the localisation package. So, if you downloaded the scripts to a directory called `~/Downloads`, from a terminal you would run:

		cd ~/Downloads                        #You must exchange this path for the path where you downloaded the scripts.
		chmod u+x test_turtlebot_install.sh   #Makes the script executable.
		./test_turtlebot_install.sh           #Runs the script.

    Note: Gazebo may give errors while initilization. You may need to try to run the script more than once.
		
5. You have now installed ROS Kinetic and the tested the Turtlebot simulator.

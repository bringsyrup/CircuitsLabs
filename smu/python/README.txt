Installation
------------
The Python host software that interfaces with the SMU makes use of the 
pyusb module with libusb as the underlying low-level backend.  To successfully 
run this software to interface with the device, you will need to make sure that 
you have all of the relevant software packages installed and configured on your 
computer.  To do so, you should perform the following steps:

1. Check to make sure that you have a Python (v. 2.6.x or 2.7.x) 
   installation.  A Linux or a Mac OS X machine, will typically come 
   with one preinstalled.  On a Windows machine, a Python installation 
   will typically be located in C:\Python26 or C:\Python27.  If you do 
   not have a Python installation, you should download the latest version 
   of the Windows Python 2.7 installer (you probably want the 64-bit
   version) from http://www.python.org and install it.

2. Check to make sure that Python is in your search path.  To do so 
   on a Windows machine, go to the start menu, and in the search/run 
   box, type cmd to launch a command shell.  Type python at the prompt 
   and hit return.  If the interactive Python shell runs, then the 
   Python directory is already on your path.  If you get a message like 

      'python' is not recognized as an internal or external command,
      operable program or batch file.

   you will need to add C:\Python27 or C:\Python26 to your Path environment 
   variable.  To do this in Windows, right click on the icon representing 
   your computer and select the "Properties" menu option.  Click on "Advanced 
   system settings."  That should bring up the "System Properties" dialog.  
   Near the bottom of the dialog, click on the "Environment Variables" button, 
   which will bring up the "Environment Variables" dialog box.  In the "System 
   Variables" list box in the bottom half of this dialog, find the "Path" 
   variable.  Select it and click the "Edit" button.  The entire contents of 
   the value of the variable will be selected in an "Edit System Variable" 
   dialog (don't press the "Delete" key!).  Press the right arrow to move the 
   insertion point to the end of the current value of the Path variable and 
   type ;C:\Python27 or ;C:\Python26 to add whichever is appropriate to your 
   particular Python installation to the end of your Path variable and click
   on the "OK" button.  Close all of the dialogs and the cmd window.  Relaunch 
   cmd and try typing "python" at the command prompt again.  If you succeeded 
   in adding the right directory to the Path, the interactive command shell 
   should appear.

3. Obtain the latest version of pyusb from 

       http://sourceforge.net/projects/pyusb

   It will come in a zip archive.  Unzip the archive somewhere convenient.  
   To install pyusb, launch a command shell and navigate to the pyusb directory 
   using the cd command.  From that directory, you should be able to install 
   pyusb by running "python setup.py install" at the command prompt.  If you 
   are on a Linux machine, be careful about using a package installer to 
   install pyusb.  There is apparently a completely different project with a 
   very similar name that usually gets installed via the package manager route.

4. On a Linux machine, you probably already have libusb-1.0 preinstalled.  On 
   a Mac OS X machine, obtain the source tarball (i.e. a compressed tape archive 
   file) for latest version of libusb from 

       http://libusb.info

   Uncomrpess and extract it in a convenient location, change directory to the 
   one in which you extracted the files, build and install the package using 
   the typical

       ./configure
       make
       sudo make install

   On a Windows machine, you will need to copy the libusb-1.0.dll file that 
   came in the matlab subdirectory of the smu.zip archive file to C:\Windows, 
   which is by default a hidden directory and requires Administrator privilages 
   to do.  This will install the libusb backend so that pyusb can find it.  

5. On a Windows machine, when you plug the SMU into a USB port on your computer 
   for the first time, Windows will try to find a driver to install for the 
   device.  It will fail to locate an appropriate driver.  To install the 
   driver, bring up your device manager.  Click on the device called "USB 
   Source/Measure Unit" and select "Update Driver".  In the dialog that appears, 
   click on the option that allows you to manually search for a driver.  Browse 
   to the "driver" subdirectory that came in the smu.zip archive, check the box
   that says "include subdirectories" and click on the "Search" button.  Another 
   dialog will appear warning you that the driver has not been signed and asking 
   whether you want to proceed with the installation anyway.  Go ahead with the
   installation.

   On a Linux machine, when you plug in a USB device, the operating system 
   creates a file-like interface to it in /dev.  Because it has no rules to 
   deal with a custom device like the SMU, it sets the file permissions on 
   that interface so that you need super user privileges to access the 
   device.  To deal with that, you could either try run the software that 
   iterfaces with the SMU using sudo or you can create a rule that tells 
   Linux what permissions to use for this device.  To do the latter, you do 
   the following:

       i. Create a text file in /etc/udev/rules.d/ called something sensible 
          like "usb_prototype_devices.rules".  You may need to do this using 
          sudo.

      ii. Type or paste the following text into the file:

# Prototype vendor specific devices
SUBSYSTEM=="usb", ATTRS{idVendor}=="6666", ATTRS{idProduct}=="abcd", MODE=="0666"

      iii. Save the file.

6. The smu.py file defines an smu class with an API that lets you access all of 
   the SMU's basic functionality.  There are two rudimentary sample Python 
   scripts that use the SMU API to take a resistor's current-voltage 
   characteristic (resistor.py) and the voltage transfer characteristic of a 
   resistive voltage divider (vdivider.py).  These scripts save data to a csv 
   file, which you can import into your favorite program for analysis and 
   plotting.

#!/bin/bash
echo "This scrip will install a custom MGS alert sound in Gnome 43."
echo "You cannot add a custom alert sound so we have to replace a default alert."
echo "The script will back up the default Hum alert sound then replace it with the Metal Gear Solid alert."
echo "You will need to go to the sound setting and select "Hum" for the alert sound after you run this scrip."
echo ""
read -p "Do you want to proceed with installing this alert sound? (y/n) " yn

case $yn in
	y ) echo ok, we will proceed;;
	n ) echo exiting...;
		sleep 1
		exit;;
	* ) echo invalid response;
		sleep 1
		exit 1;;
esac

echo "Backing up default hum alert sound..."
yes | sudo mv /usr/share/sounds/gnome/default/alerts/hum.ogg /usr/share/sounds/gnome/default/alerts/hum.ogg.bak
sleep 1
echo "Installing MGS alert sound in place of the hum alert..."
yes | sudo cp mgs-alert.ogg /usr/share/sounds/gnome/default/alerts/hum.ogg
sleep 1
echo "Install Complete!"
sleep 1
echo "Now go to the sound setting and select the 'Hum' alert sound"
sleep 5
exit 1

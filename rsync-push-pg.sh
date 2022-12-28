# rsync usb -> ~/pg

# Check if USB drive is connected
if [ -d "/run/media/kamil/Samsung USB" ]; then
  # USB drive is connected

  # Copy contents of USB drive to home directory, excluding .tmp files
  rsync -avr --exclude='*.tmp' "/run/media/kamil/Samsung USB/pg" /home/kamil/
else
  # USB drive is not connected
  echo "USB drive is not connected."
fi


################################
# rsync ~/pg -> server
sshpass -p "0028" rsync -v -r -a /home/kamil/pg raspberrypi:/srv/dev-disk-by-uuid-97cdb0ad-bd38-4dcc-a7df-13e0ef1d2e74/rsync/


################################
# rsync server -> ~/pg
sshpass -p "0028" rsync -v -r -a raspberrypi:/srv/dev-disk-by-uuid-97cdb0ad-bd38-4dcc-a7df-13e0ef1d2e74/rsync/ /home/kamil/


################################
# rsync server -> USB

# Check if USB drive is connected
if [ -d "/run/media/kamil/Samsung USB" ]; then
  # USB drive is connected

  # Copy contents of USB drive to home directory, excluding .tmp files
  rsync -avr --exclude='*.tmp' /home/kamil/pg "/run/media/kamil/Samsung USB/"
else
  # USB drive is not connected
  echo "USB drive is not connected."
fi

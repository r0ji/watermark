# watermark
Apply watermark to PDF and JPG files with batch mode

To be able to call the watermark function from anywhere on your disk, add the script to a directory that's already in your $PATH. One such directory is /usr/local/bin.

Move the watermark.sh script to the /usr/local/bin directory. You will need administrator privileges to do this.
sudo mv watermark.sh /usr/local/bin/watermark

Make the script executable.
sudo chmod +x /usr/local/bin/watermark

Verify that the script is now in your $PATH.
which watermark

This should output /usr/local/bin/watermark.

After following these steps, you can call the watermark function from anywhere on your disk by simply typing watermark in the terminal.

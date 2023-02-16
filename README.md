# watermark

Apply a watermark to all files of a specific type in a directory

## Usage

```
watermark.sh [-t <text>] [-p <pointsize>] [-a <angle>] [-e <extension>] [-d <directory>] [-h]
```
The script uses ImageMagick's 'convert' command to add the watermark to all files in the current directory with the specified file extension. It creates a new directory (with the specified name or the default "output") and saves the watermarked files with the same name as the original files in this directory.

## Options
```
-t <text>         The text to use as the watermark (default: 'Watermark')
-p <pointsize>    The point size to use for the watermark text (default: 65)
-a <angle>        The angle (in degrees) to rotate the watermark text (default: 30)
-e <extension>    The file extension to apply the watermark to (default: 'pdf')
-d <directory>    The name of the output directory where the watermarked files will be saved (default: 'output')
-h                Show this help message
 ```

## Examples
```
watermark.sh               Apply a watermark to all PDF files in the current directory
watermark.sh -e jpg        Apply a watermark to all JPG files in the current directory
watermark.sh -t "Sample"   Apply a watermark with the text "Sample" to all PDF files in the current directory
```

The script can be called from the command line with various parameters to customize the watermarking process. The following options are available:

- `-t <text>`: sets the text to use as the watermark. The default is "Watermark".
- `-p <pointsize>`: sets the point size to use for the watermark text. The default is 65.
- `-a <angle>`: sets the angle (in degrees) to rotate the watermark text. The default is 30.
- `-e <extension>`: sets the file extension to apply the watermark to. The default is "pdf".
- `-d <directory>`: sets the name of the output directory where the watermarked files will be saved. The default is "output".
- `-h`: shows the help message for the script.

## Installation

To install the `watermark` script, simply copy the `watermark.sh` file to a directory that's already in your `$PATH`. One such directory is `/usr/local/bin`. You will need administrator privileges to do this.

Here are the steps to install the script:

1. Move the `watermark.sh` file to the `/usr/local/bin` directory:

```bash
sudo mv watermark.sh /usr/local/bin/watermark
```

2. Make the script executable:

```bash
sudo chmod +x /usr/local/bin/watermark
```

3. Verify that the script is now in your `$PATH`:

```bash
which watermark
```

This should output `/usr/local/bin/watermark`.

## License

`watermark` is licensed under the [MIT License](LICENSE).

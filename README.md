# watermark

Apply a watermark to all files of a specific type in a directory

## Usage

```
watermark.sh [-t <text>] [-p <pointsize>] [-a <angle>] [-e <extension>] [-d <directory>] [-h]
```
The script uses ImageMagick's 'convert' command to add the watermark to all files in the current directory with the specified file extension. It creates a new directory (with the specified name or the default "output") and saves the watermarked files with the same name as the original files in this directory.

## Options
```
-t <text>         Text to use as the watermark (default: 'Watermark')
-p <pointsize>    Point size to use for the watermark text (default: 65)
-a <angle>        Angle (in degrees) to rotate the watermark text (default: 30)
-e <extension>    File extension to apply the watermark to (default: 'pdf')
-o <directory>    Name of the output directory where the watermarked files will be saved (default: 'output')
-d <density>      Pixel density (default: 200)
-h                Show this help message
 ```

## Examples
```
watermark.sh               Apply a watermark to all PDF files in the current directory
watermark.sh -e jpg        Apply a watermark to all JPG files in the current directory
watermark.sh -t "Sample"   Apply a watermark with the text "Sample" to all PDF files in the current directory
```

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

# watermark

`watermark` is a shell script that applies a text watermark to all PDF files in the current directory. The watermark is added twice to each page of the PDF file, once on the upper half and once on the lower half.

## Usage

To use the `watermark` script, run it from the command line with the following command:

```css
watermark [options] [extension]
```

The available options are:

```vbnet
-t TEXT, --text TEXT        The text to use for the watermark (default: Watermark).
-p SIZE, --pointsize SIZE   The font size to use for the watermark (default: 65).
-a ANGLE, --angle ANGLE     The angle in degrees to rotate the watermark (default: 30).
-f PREFIX, --prefix PREFIX  The prefix to add to the watermarked files (default: watermarked).
```

The extension argument specifies the file extension of the files to be watermarked. If no extension is specified, the default is `pdf`.

### Examples

To watermark all PDF files in the current directory with the text "Confidential" and a font size of 72, run the following command:

```python
watermark -t "Confidential" -p 72 pdf
```

To watermark all PNG files in the current directory with the default settings, run the following command:

```
watermark png
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

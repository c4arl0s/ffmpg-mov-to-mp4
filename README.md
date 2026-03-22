# ffmpg-mov-to-mp4

Bash helper that converts a `.mov` file to `.mp4` using [ffmpeg](https://ffmpeg.org/). Pass the **full path** to the input file as the first argument.

## Requirements

- **bash**
- **ffmpeg** available on your `PATH` (install via [Homebrew](https://brew.sh/) on macOS: `brew install ffmpeg`)

## Installation

1. Clone or download this repository and `cd` into the project directory.

2. Make the install script executable (if needed):

   ```sh
   chmod +x install.sh
   ```

3. Run the installer:

   ```sh
   ./install.sh
   ```

   This creates a symlink at `/usr/local/bin/ffmpg-mov-2-mp4` pointing to `ffmpg-mov-to-mp4.sh` in this repo. If your user account cannot write to `/usr/local/bin`, the script uses `sudo` for that step.

## Usage

### After installation (recommended)

From any directory:

```sh
ffmpg-mov-2-mp4 /path/to/your/video.mov
```

### Without installing

Run the script from the repository (or use an absolute path to `ffmpg-mov-to-mp4.sh`):

```sh
./ffmpg-mov-to-mp4.sh /path/to/your/video.mov
```

### Behavior

- The input must have a `.mov` extension.
- ffmpeg writes the output as `<basename>.mp4` in the **current working directory** (the directory you run the command from), not necessarily next to the source file. Run `cd` to the folder where you want the `.mp4` before invoking the script, or adjust the script if you need a fixed output location.

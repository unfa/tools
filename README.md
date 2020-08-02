# tools
Various tools I've created for myself

## MusicSubmissionProcessor

I've made this to ease my monthyl livestream work. I run it in a directory with all the music submissions and it'll fade them out afer 3 minutes (applies the same fadeout 3 times to imitate a logarythmic fade with ffmpeg's linear algorithm - I haven't foudn a better way to do this), truncate start and end silence and convert them to 48 kHz WAV for playback.

Also it tries to strip sensitive information form the file name (Google Form uploaded files contain the user name in them).

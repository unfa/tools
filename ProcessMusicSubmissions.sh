#!/bin/bash

cd $(dirname "$1")

rm temp*

for i in *; do

	FIN="$i"
	FOUT="$(echo $i | rev | cut -d'-' -f2- | cut -d' ' -f2- | rev).wav"
	
	sox "$FIN" "temp1.wav" silence 1 0.1 1%
    ffmpeg -i "temp1.wav" -af "afade=t=out:st=176:d=12, afade=t=out:st=176:d=12, afade=t=out:st=176:d=12" -ar 48k "temp2.wav"
    sox "temp2.wav" "$FOUT" reverse silence 1 0.1 0.01% reverse
    
    rm temp*
    
done

rm temp*

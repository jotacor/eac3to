-slowdown -> 25 to 23,976

-speedup-> 23.976 to 25

-100mb -> Cut at 100mb

wine /app/eac3to/eac3to.exe input output -24.000 -changeTo23.976

wine /app/eac3to/eac3to.exe input.dts output.wavs

wine /app/eac3to/eac3to.exe z:/raws "1)" -demux -progressnumbers

ffmpeg -c:a libdcadec -i input.dts output.wav


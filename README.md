-slowdown -> 25 to 23,976

-speedup-> 23.976 to 25

-100mb -> Cut at 100mb

eac3to input output -24.000 -changeTo23.976

ffmpeg -c:a libdcadec -i input.dts output.wav
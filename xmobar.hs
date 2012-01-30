-- vim: syn=haskell


Config { font = "xft:Dejavu Sans Mono:pixelsize=11"
       , bgColor = "#002b36"
       , fgColor = "#657b83"
       , position = Top
       , lowerOnStart = True
       , commands = [ Run Weather "EGPF" ["-t","<station>: <tempC>C","-L","18","-H","25","--normal","green","--high","red","--low","lightblue"] 36000
                    , Run Network "wlan0" ["-L","0","-H","1024","--normal","green","--high","red"] 10
                    , Run Network "eth1" ["-L","0","-H","32","--normal","green","--high","red"] 10
                    , Run Cpu ["-L","3","-H","50","--normal","green","--high","red"] 10
                    , Run Memory ["-t","Mem: <usedratio>%"] 10
                    , Run StdinReader
					, Run Swap [] 10
                    , Run Com "uname" ["-s","-r"] "" 36000
                    , Run Date "%a %b %_d %Y %H:%M:%S" "date" 10
					, Run Battery ["-L","25","-H","75","--high","green","--normal","yellow", "--low", "red"] 10
                    ]
       , sepChar = "%"
       , alignSep = "}{"
       , template = "%StdinReader% }{%cpu%   %memory%   %wlan0%   %battery% <fc=#ee9a00>%date%</fc>"
       }

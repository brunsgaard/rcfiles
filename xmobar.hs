-- vim: syn=haskell


Config { font = "xft:inconsolata:pixelsize=10.5"
       , bgColor = "#002b36"
       , fgColor = "#657b83"
       , position = Top
       , lowerOnStart = True
       , commands = [ Run Network "wlan0" ["-L","0","-H","1024","--normal","green","--high","red"] 10
                    , Run Cpu ["-L","3","-H","50","--normal","green","--high","red"] 10
                    , Run Memory ["-t","Mem: <usedratio>%"] 10
                    , Run StdinReader
                    , Run Date "%a %b %_d %Y %H:%M:%S" "date" 10
					, Run Battery ["-L","25","-H","75","--high","green","--normal","yellow", "--low", "red"] 10
                    ]
       , sepChar = "%"
       , alignSep = "}{"
       , template = "%StdinReader% }{%cpu%   %memory%   %wlan0%   %battery% <fc=#ee9a00>%date%</fc>"
       }

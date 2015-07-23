@echo off


:: dos => bash
doskey mv=rename
doskey rm=del
doskey cp=copy
:: unix touch: type nul >>file & copy file +,,


:: root or not root
if "%CD%"=="C:\Windows\System32" (
    set HOME=C:\Users\jwhite
    cd %HOME%
)


:: ssh aliases
doskey cccdata:=putty @cccdata
doskey checkdev:=putty @checkdev
doskey fms001:=putty @fms001
doskey fms002:=putty @fms002
doskey fms003:=putty @fms003
doskey fms004:=putty @fms004
doskey fmschar:=putty @fmschar
doskey fmscommon:=putty @fmscommon
doskey fmsdirect:=putty @fmsdirect
doskey fmsportal:=putty @fmsportal
doskey fmsttt:=putty @fmsttt
doskey freecheck:=putty @freecheck
doskey freedev:=putty @freedev
doskey freefin:=putty @freefin
doskey freeops:=putty @freeops
doskey freewebdb:=putty @freewebdb
doskey latex:=putty @latex
doskey newportal:=putty @newportal


:: miscellaneous commands
doskey :q=exit
doskey :wq=exit
doskey c=cls
doskey l=dir
doskey ll=dir
doskey llart=dir
doskey ls=dir
doskey pwd=cd
doskey scp=pscp
doskey x=exit

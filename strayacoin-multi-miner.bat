@echo off
::--------------PATH GOES HERE---------------
@SET progpath="C:\Users\User\Downloads\Strayacoin Wallet 2.0.0 Final\"
::----------------------------------------------------

::--------------HOW MANY MINERS TO OPEN---------------
@SET /A miners=2
::----------------------------------------------------

@echo .
@echo .
@echo .
@echo .
@echo .
@echo .
@echo .
@echo .
@echo .
@echo .
@Echo This will start %miners% mining windows
@echo Are you sure you want to do this? 
@echo .
@echo .
@echo .
@echo .
@echo .
@echo .
@echo CLOSE WINDOW TO STOP
@echo  --- OR ---
@pause



@SET temppath=%PATH%
@SET PATH=%PATH%;%progpath%

for /l %%x in (1, 1, %miners%) do (
   start /d %progpath% mine.bat"
)

@echo .
@echo .
@echo THIS WINDOW CAN NOW BE CLOSED
::@pause 

@SET PATH=%temppath%
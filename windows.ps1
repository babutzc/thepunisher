Add-Type -AssemblyName presentationCore

# $DIR=split-path -Parent $MyInvocation.MyCommand.Definition
$DIR=$pwd
$AUDIOFILE=$("{0}\backdoor.mp3" -f $DIR)

IEX "rundll32.exe user32.dll,LockWorkStation"


$mp = New-Object System.Windows.Media.Mediaplayer
$mp.Volume = 1
$mp.Open($AUDIOFILE)
$mp.Play()
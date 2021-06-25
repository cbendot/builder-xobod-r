#! /bin/bash
branch="hmp-test"
LVibration="1"
X00TDOC="0"
CODENAME="X01BD"
BuilderKernel="strix"

if [ "$BuilderKernel" != "proton" ] && [ "$BuilderKernel" != "dtc" ] && [ "$BuilderKernel" != "gcc" ] && [ "$BuilderKernel" != "storm" ] && [ "$BuilderKernel" != "strix" ] && [ "$BuilderKernel" != "yuki" ] && [ "$BuilderKernel" != "sdclang" ] && [ "$BuilderKernel" != "aosp" ];then
    exit;
fi

FolderUp="BrokenNucleus"
TypeBuild="TEST"
if [ "$branch" = "r2/eas" ] || [ "$branch" = "eas-test" ];then
TypeBuildTag="EAS"
TypeScript="EAS Advanced Configuration"
AKbranch="injectorx-eas"
	if [ "$CODENAME" == "X00TD" ];then
	if [ "$X00TDOC" == "1" ];then
	spectrumFile="eas-x00t-oc.rc"
	else
	spectrumFile="eas-x00t.rc"
	fi
	else
	spectrumFile="eas.rc"
	fi
else
TypeBuildTag="HMP"
TypeScript="Spectrum"
AKbranch="injectorx"
	if [ "$CODENAME" == "X00TD" ];then
	spectrumFile="ryuu-x00t.rc"
	else
	spectrumFile="ryuu.rc"
	fi
fi
. main.sh 'initial' 'full'

getInfo ">> Building kernel . . . . <<"

# CompileKernel
# CompileKernel "65"
# CompileKernel "68"
# CompileKernel "71"
# CompileKernel "72"

SwitchOFI

CompileKernel
# CompileKernel "62"
# CompileKernel "68"
# CompileKernel "71"
# CompileKernel "72"

# FixPieWifi

# CompileKernel
# CompileKernel "65"
# CompileKernel "68"
# CompileKernel "71"
# CompileKernel "72"
@echo off
color a
if exist values\debug (
    @echo on
) else (
    @echo off
)
if not exist values\ (
    mkdir values
)
set test=1
echo waiting...
:isready
color b
if exist values\ready (
    del values\ready
    goto start
)
TIMEOUT /nobreak /T 1 > nul
color c
goto isready

:start
color a
if exist values\A0 (
    set a0=1
    del values\A0
) else (
    set a0=0
)
if exist values\A1 (
    set a1=1
    del values\A1
) else (
    set a1=0
)
if exist values\A2 (
    set a2=1
    del values\A2
) else (
    set a2=0
)
if exist values\A3 (
    set a3=1
    del values\A3
) else (
    set a3=0
)
if exist values\A4 (
    set a4=1
    del values\A4
) else (
    set a4=0
)
if exist values\A5 (
    set a5=1
    del values\A5
) else (
    set a5=0
)
if exist values\A6 (
    set a6=1
    del values\A6
) else (
    set a6=0
)
if exist values\A7 (
    set a7=1
    del values\A7
) else (
    set a7=0
)
if exist values\B0 (
    set b0=1
    del values\B0
) else (
    set b0=0
)
if exist values\B1 (
    set b1=1
    del values\B1
) else (
    set b1=0
)
if exist values\B2 (
    set b2=1
    del values\B2
) else (
    set b2=0
)
if exist values\B3 (
    set b3=1
    del values\B3
) else (
    set b3=0
)
if exist values\B4 (
    set b4=1
    del values\B4
) else (
    set b4=0
)
if exist values\B5 (
    set b5=1
    del values\B5
) else (
    set b5=0
)
if exist values\B6 (
    set b6=1
    del values\B6
) else (
    set b6=0
)
if exist values\B7 (
    set b7=1
    del values\B7
) else (
    set b7=0
)
if exist values\S0 (
    set s0=1
    del values\S0
) else (
    set s0=0
)
if exist values\S1 (
    set s1=1
    del values\S1
) else (
    set s1=0
)
if exist values\S2 (
    set s2=1
    del values\S2
) else (
    set s2=0
)
if exist values\S3 (
    set s3=1
    del values\S3
) else (
    set s3=0
)
if exist values\S4 (
    set s4=1
    del values\S4
) else (
    set s4=0
)
echo.
echo Current values:
echo A0=%a0% B0=%b0%
echo A1=%a1% B1=%b1%
echo A2=%a2% B2=%b2%
echo A3=%a3% B3=%b3%
echo A4=%a4% B4=%b4%
echo A5=%a5% B5=%b5%
echo A6=%a6% B6=%b6%
echo A7=%a7% B7=%b7%
echo.
echo S0=%s0% S1=%s1%
echo S2=%s2% S3=%s3%
echo S4=%s4%
echo.
echo Binary input:
echo Function:
echo %s0%%s1%%s2%%s3%%s4%%s5%
echo A:
echo %a0%%a1%%a2%%a3%%a4%%a5%%a6%%a7%
echo B:
echo %b0%%b1%%b2%%b3%%b4%%b5%%b6%%b7%
echo.
if /I %s4% == 1 (set "invs4=0") else (set "invs4=1")
set rep0=%invs4%
set rep1=%invs4%
set rep2=%invs4%
set rep3=%invs4%
set rep4=%invs4%
set rep5=%invs4%
set rep6=%invs4%
set rep7=%invs4%
set /a bs30=b0+s3
if /I %bs30% == 1 (set "binv0=1") else (set "binv0=0")
set /a bs31=b1+s3
if /I %bs31% == 1 (set "binv1=1") else (set "binv1=0")
set /a bs32=b2+s3
if /I %bs32% == 1 (set "binv2=1") else (set "binv2=0")
set /a bs33=b3+s3
if /I %bs33% == 1 (set "binv3=1") else (set "binv3=0")
set /a bs34=b4+s3
if /I %bs34% == 1 (set "binv4=1") else (set "binv4=0")
set /a bs35=b5+s3
if /I %bs35% == 1 (set "binv5=1") else (set "binv5=0")
set /a bs36=b6+s3
if /I %bs36% == 1 (set "binv6=1") else (set "binv6=0")
set /a bs37=b7+s3
if /I %bs37% == 1 (set "binv7=1") else (set "binv7=0")
set /a rbi0=rep0+binv0
if /I %rbi0% == 2 (set "ba10=1") else (set "ba10=0")
set /a rbi1=rep1+binv1
if /I %rbi1% == 2 (set "ba11=1") else (set "ba11=0")
set /a rbi2=rep2+binv2
if /I %rbi2% == 2 (set "ba12=1") else (set "ba12=0")
set /a rbi3=rep3+binv3
if /I %rbi3% == 2 (set "ba13=1") else (set "ba13=0")
set /a rbi4=rep4+binv4
if /I %rbi4% == 2 (set "ba14=1") else (set "ba14=0")
set /a rbi5=rep5+binv5
if /I %rbi5% == 2 (set "ba15=1") else (set "ba15=0")
set /a rbi6=rep6+binv6
if /I %rbi6% == 2 (set "ba16=1") else (set "ba16=0")
set /a rbi7=rep7+binv7
if /I %rbi7% == 2 (set "ba17=1") else (set "ba17=0")
set /a rain0=ba10+a0
set /a rain1=ba11+a1
set /a rain2=ba12+a2
set /a rain3=ba13+a3
set /a rain4=ba14+a4
set /a rain5=ba15+a5
set /a rain6=ba16+a6
set /a rain7=ba17+a7
set /a cin=%s2%
if /I %rain0% == 2 (set "andfa10=1") else (set "andfa10=0")
if /I %rain0% == 1 (set "xorfa10=1") else (set "xorfa10=0")
if /I %rain1% == 2 (set "andfa11=1") else (set "andfa11=0")
if /I %rain1% == 1 (set "xorfa11=1") else (set "xorfa11=0")
if /I %rain2% == 2 (set "andfa12=1") else (set "andfa12=0")
if /I %rain2% == 1 (set "xorfa12=1") else (set "xorfa12=0")
if /I %rain3% == 2 (set "andfa13=1") else (set "andfa13=0")
if /I %rain3% == 1 (set "xorfa13=1") else (set "xorfa13=0")
if /I %rain4% == 2 (set "andfa14=1") else (set "andfa14=0")
if /I %rain4% == 1 (set "xorfa14=1") else (set "xorfa14=0")
if /I %rain5% == 2 (set "andfa15=1") else (set "andfa15=0")
if /I %rain5% == 1 (set "xorfa15=1") else (set "xorfa15=0")
if /I %rain6% == 2 (set "andfa16=1") else (set "andfa16=0")
if /I %rain6% == 1 (set "xorfa16=1") else (set "xorfa16=0")
if /I %rain7% == 2 (set "andfa17=1") else (set "andfa17=0")
if /I %rain7% == 1 (set "xorfa17=1") else (set "xorfa17=0")
set /a racinxor=cin+xorfa10
if /I %racinxor% == 2 (set "andfa20=1") else (set "andfa20=0")
if /I %racinxor% == 1 (set "sum0=1") else (set "sum0=0")
set /a andp=andfa10+andfa20
if /I %andp% GEQ 1 (set "racin0=1") else (set "racin0=0")
set /a racinxor=racin0+xorfa11
if /I %racinxor% == 2 (set "andfa21=1") else (set "andfa21=0")
if /I %racinxor% == 1 (set "sum1=1") else (set "sum1=0")
set /a andp=andfa11+andfa21
if /I %andp% GEQ 1 (set "racin1=1") else (set "racin1=0")
set /a racinxor=racin1+xorfa12
if /I %racinxor% == 2 (set "andfa22=1") else (set "andfa22=0")
if /I %racinxor% == 1 (set "sum2=1") else (set "sum2=0")
set /a andp=andfa12+andfa22
if /I %andp% GEQ 1 (set "racin2=1") else (set "racin2=0")
set /a racinxor=racin2+xorfa13
if /I %racinxor% == 2 (set "andfa23=1") else (set "andfa23=0")
if /I %racinxor% == 1 (set "sum3=1") else (set "sum3=0")
set /a andp=andfa13+andfa23
if /I %andp% GEQ 1 (set "racin3=1") else (set "racin3=0")
set /a racinxor=racin3+xorfa14
if /I %racinxor% == 2 (set "andfa24=1") else (set "andfa24=0")
if /I %racinxor% == 1 (set "sum4=1") else (set "sum4=0")
set /a andp=andfa14+andfa24
if /I %andp% GEQ 1 (set "racin4=1") else (set "racin4=0")
set /a racinxor=racin4+xorfa15
if /I %racinxor% == 2 (set "andfa25=1") else (set "andfa25=0")
if /I %racinxor% == 1 (set "sum5=1") else (set "sum5=0")
set /a andp=andfa15+andfa25
if /I %andp% GEQ 1 (set "racin5=1") else (set "racin5=0")
set /a racinxor=racin5+xorfa16
if /I %racinxor% == 2 (set "andfa26=1") else (set "andfa26=0")
if /I %racinxor% == 1 (set "sum6=1") else (set "sum6=0")
set /a andp=andfa16+andfa26
if /I %andp% GEQ 1 (set "racin6=1") else (set "racin6=0")
set /a racinxor=racin6+xorfa17
if /I %racinxor% == 2 (set "andfa27=1") else (set "andfa27=0")
if /I %racinxor% == 1 (set "sum7=1") else (set "sum7=0")
set /a andp=andfa17+andfa27
if /I %andp% GEQ 1 (set "cout=1") else (set "cout=0")
set /a ab0=a0+b0
if /I %ab0% == 2 (set "ba20=1") else (set "ba20=0")
set /a ab1=a1+b1
if /I %ab1% == 2 (set "ba21=1") else (set "ba21=0")
set /a ab2=a2+b2
if /I %ab2% == 2 (set "ba22=1") else (set "ba22=0")
set /a ab3=a3+b3
if /I %ab3% == 2 (set "ba23=1") else (set "ba23=0")
set /a ab4=a4+b4
if /I %ab4% == 2 (set "ba24=1") else (set "ba24=0")
set /a ab5=a5+b5
if /I %ab5% == 2 (set "ba25=1") else (set "ba25=0")
set /a ab6=a6+b6
if /I %ab6% == 2 (set "ba26=1") else (set "ba26=0")
set /a ab7=a7+b7
if /I %ab7% == 2 (set "ba27=1") else (set "ba27=0")
IF /I %s0% == 1 (set /a "s0inv=0") ELSE (set /a "s0inv=1")
IF /I %s1% == 1 (set /a "s1inv=0") ELSE (set /a "s1inv=1")
set /a AandA1=sum0+s0inv
IF /I %AandA1% == 2 (set /a "AoA1=1") ELSE (set /a "AoA1=0")
set /a BandA1=sum1+s0inv
IF /I %BandA1% == 2 (set /a "BoA1=1") ELSE (set /a "BoA1=0")
set /a CandA1=sum2+s0inv
IF /I %CandA1% == 2 (set /a "CoA1=1") ELSE (set /a "CoA1=0")
set /a DandA1=sum3+s0inv
IF /I %DandA1% == 2 (set /a "DoA1=1") ELSE (set /a "DoA1=0")
set /a EandA1=sum4+s0inv
IF /I %EandA1% == 2 (set /a "EoA1=1") ELSE (set /a "EoA1=0")
set /a FandA1=sum5+s0inv
IF /I %FandA1% == 2 (set /a "FoA1=1") ELSE (set /a "FoA1=0")
set /a GandA1=sum6+s0inv
IF /I %GandA1% == 2 (set /a "GoA1=1") ELSE (set /a "GoA1=0")
set /a HandA1=sum7+s0inv
IF /I %HandA1% == 2 (set /a "HoA1=1") ELSE (set /a "HoA1=0")
set /a AandB1=a0+s0inv
IF /I %AandB1% == 2 (set /a "AoB1=1") ELSE (set /a "AoB1=0")
set /a BandB1=a1+s0inv
IF /I %BandB1% == 2 (set /a "BoB1=1") ELSE (set /a "BoB1=0")
set /a CandB1=a2+s0inv
IF /I %CandB1% == 2 (set /a "CoB1=1") ELSE (set /a "CoB1=0")
set /a DandB1=a3+s0inv
IF /I %DandB1% == 2 (set /a "DoB1=1") ELSE (set /a "DoB1=0")
set /a EandB1=a4+s0inv
IF /I %EandB1% == 2 (set /a "EoB1=1") ELSE (set /a "EoB1=0")
set /a FandB1=a5+s0inv
IF /I %FandB1% == 2 (set /a "FoB1=1") ELSE (set /a "FoB1=0")
set /a GandB1=a6+s0inv
IF /I %GandB1% == 2 (set /a "GoB1=1") ELSE (set /a "GoB1=0")
set /a HandB1=a7+s0inv
IF /I %HandB1% == 2 (set /a "HoB1=1") ELSE (set /a "HoB1=0")
set /a AandA2=s0+ba20
IF /I %AandA2% == 2 (set /a "AoA2=1") ELSE (set /a "AoA2=0")
set /a BandA2=s0+ba21
IF /I %BandA2% == 2 (set /a "BoA2=1") ELSE (set /a "BoA2=0")
set /a CandA2=s0+ba22
IF /I %CandA2% == 2 (set /a "CoA2=1") ELSE (set /a "CoA2=0")
set /a DandA2=s0+ba23
IF /I %DandA2% == 2 (set /a "DoA2=1") ELSE (set /a "DoA2=0")
set /a EandA2=s0+ba24
IF /I %EandA2% == 2 (set /a "EoA2=1") ELSE (set /a "EoA2=0")
set /a FandA2=s0+ba25
IF /I %FandA2% == 2 (set /a "FoA2=1") ELSE (set /a "FoA2=0")
set /a GandA2=s0+ba26
IF /I %GandA2% == 2 (set /a "GoA2=1") ELSE (set /a "GoA2=0")
set /a HandA2=s0+ba27
IF /I %HandA2% == 2 (set /a "HoA2=1") ELSE (set /a "HoA2=0")
set /a AandB2=s0+b0
IF /I %AandB2% == 2 (set /a "AoB2=1") ELSE (set /a "AoB2=0")
set /a BandB2=s0+b1
IF /I %BandB2% == 2 (set /a "BoB2=1") ELSE (set /a "BoB2=0")
set /a CandB2=s0+b2
IF /I %CandB2% == 2 (set /a "CoB2=1") ELSE (set /a "CoB2=0")
set /a DandB2=s0+b3
IF /I %DandB2% == 2 (set /a "DoB2=1") ELSE (set /a "DoB2=0")
set /a EandB2=s0+b4
IF /I %EandB2% == 2 (set /a "EoB2=1") ELSE (set /a "EoB2=0")
set /a FandB2=s0+b5
IF /I %FandB2% == 2 (set /a "FoB2=1") ELSE (set /a "FoB2=0")
set /a GandB2=s0+b6
IF /I %GandB2% == 2 (set /a "GoB2=1") ELSE (set /a "GoB2=0")
set /a HandB2=s0+b7
IF /I %HandB2% == 2 (set /a "HoB2=1") ELSE (set /a "HoB2=0")
set /a AoA3=sumoA1+AoA2
IF /I %AoA3% == 0 (set /a "za0=0") ELSE (set /a "za0=1")
set /a BoA3=BoA1+BoA2
IF /I %BoA3% == 0 (set /a "za1=0") ELSE (set /a "za1=1")
set /a CoA3=CoA1+CoA2
IF /I %CoA3% == 0 (set /a "za2=0") ELSE (set /a "za2=1")
set /a DoA3=DoA1+DoA2
IF /I %DoA3% == 0 (set /a "za3=0") ELSE (set /a "za3=1")
set /a EoA3=EoA1+EoA2
IF /I %EoA3% == 0 (set /a "za4=0") ELSE (set /a "za4=1")
set /a FoA3=FoA1+FoA2
IF /I %FoA3% == 0 (set /a "za5=0") ELSE (set /a "za5=1")
set /a GoA3=GoA1+GoA2
IF /I %GoA3% == 0 (set /a "za6=0") ELSE (set /a "za6=1")
set /a HoA3=HoA1+HoA2
IF /I %HoA3% == 0 (set /a "za7=0") ELSE (set /a "za7=1")
set /a AoB3=sumoB1+AoB2
IF /I %AoB3% == 0 (set /a "zb0=0") ELSE (set /a "zb0=1")
set /a BoB3=BoB1+BoB2
IF /I %BoB3% == 0 (set /a "zb1=0") ELSE (set /a "zb1=1")
set /a CoB3=CoB1+CoB2
IF /I %CoB3% == 0 (set /a "zb2=0") ELSE (set /a "zb2=1")
set /a DoB3=DoB1+DoB2
IF /I %DoB3% == 0 (set /a "zb3=0") ELSE (set /a "zb3=1")
set /a EoB3=EoB1+EoB2
IF /I %EoB3% == 0 (set /a "zb4=0") ELSE (set /a "zb4=1")
set /a FoB3=FoB1+FoB2
IF /I %FoB3% == 0 (set /a "zb5=0") ELSE (set /a "zb5=1")
set /a GoB3=GoB1+GoB2
IF /I %GoB3% == 0 (set /a "zb6=0") ELSE (set /a "zb6=1")
set /a HoB3=HoB1+HoB2
IF /I %HoB3% == 0 (set /a "zb7=0") ELSE (set /a "zb7=1")
set /a AandC1=za0+s1inv
IF /I %AandC1% == 2 (set /a "AoC1=1") ELSE (set /a "AoC1=0")
set /a BandC1=za1+s1inv
IF /I %BandC1% == 2 (set /a "BoC1=1") ELSE (set /a "BoC1=0")
set /a CandC1=za2+s1inv
IF /I %CandC1% == 2 (set /a "CoC1=1") ELSE (set /a "CoC1=0")
set /a DandC1=za3+s1inv
IF /I %DandC1% == 2 (set /a "DoC1=1") ELSE (set /a "DoC1=0")
set /a EandC1=za4+s1inv
IF /I %EandC1% == 2 (set /a "EoC1=1") ELSE (set /a "EoC1=0")
set /a FandC1=za5+s1inv
IF /I %FandC1% == 2 (set /a "FoC1=1") ELSE (set /a "FoC1=0")
set /a GandC1=za6+s1inv
IF /I %GandC1% == 2 (set /a "GoC1=1") ELSE (set /a "GoC1=0")
set /a HandC1=za7+s1inv
IF /I %HandC1% == 2 (set /a "HoC1=1") ELSE (set /a "HoC1=0")
set /a AandC2=s1+zb0
IF /I %AandC2% == 2 (set /a "AoC2=1") ELSE (set /a "AoC2=0")
set /a BandC2=s1+zb1
IF /I %BandC2% == 2 (set /a "BoC2=1") ELSE (set /a "BoC2=0")
set /a CandC2=s1+zb2
IF /I %CandC2% == 2 (set /a "CoC2=1") ELSE (set /a "CoC2=0")
set /a DandC2=s1+zb3
IF /I %DandC2% == 2 (set /a "DoC2=1") ELSE (set /a "DoC2=0")
set /a EandC2=s1+zb4
IF /I %EandC2% == 2 (set /a "EoC2=1") ELSE (set /a "EoC2=0")
set /a FandC2=s1+zb5
IF /I %FandC2% == 2 (set /a "FoC2=1") ELSE (set /a "FoC2=0")
set /a GandC2=s1+zb6
IF /I %GandC2% == 2 (set /a "GoC2=1") ELSE (set /a "GoC2=0")
set /a HandC2=s1+zb7
IF /I %HandC2% == 2 (set /a "HoC2=1") ELSE (set /a "HoC2=0")
set /a AoC3=sumoC1+AoC2
IF /I %AoC3% == 0 (set /a "z0=0") ELSE (set /a "z0=1")
set /a BoC3=BoC1+BoC2
IF /I %BoC3% == 0 (set /a "z1=0") ELSE (set /a "z1=1")
set /a CoC3=CoC1+CoC2
IF /I %CoC3% == 0 (set /a "z2=0") ELSE (set /a "z2=1")
set /a DoC3=DoC1+DoC2
IF /I %DoC3% == 0 (set /a "z3=0") ELSE (set /a "z3=1")
set /a EoC3=EoC1+EoC2
IF /I %EoC3% == 0 (set /a "z4=0") ELSE (set /a "z4=1")
set /a FoC3=FoC1+FoC2
IF /I %FoC3% == 0 (set /a "z5=0") ELSE (set /a "z5=1")
set /a GoC3=GoC1+GoC2
IF /I %GoC3% == 0 (set /a "z6=0") ELSE (set /a "z6=1")
set /a HoC3=HoC1+HoC2
IF /I %HoC3% == 0 (set /a "z7=0") ELSE (set /a "z7=1")
echo Output:
echo Z0=%z0% Z1=%z1% 
echo Z2=%z2% Z3=%z3% 
echo Z4=%z4% Z5=%z5% 
echo Z6=%z6% Z7=%z7% 
echo.
echo Binary output:
echo %z7%%z6%%z5%%z4%%z3%%z2%%z1%%z0%
echo Cout=%cout%
echo.
if exist values\test (
    set /A test=test+1
    echo Test %test% Date=%date% Time=%time% >> testlog-%test%.txt
    echo Input: >> testlog-%test%.txt
    echo A0=%a0% B0=%b0% >> testlog-%test%.txt
    echo A1=%a1% B1=%b1% >> testlog-%test%.txt
    echo A2=%a2% B2=%b2% >> testlog-%test%.txt
    echo A3=%a3% B3=%b3% >> testlog-%test%.txt
    echo A4=%a4% B4=%b4% >> testlog-%test%.txt
    echo A5=%a5% B5=%b5% >> testlog-%test%.txt
    echo A6=%a6% B6=%b6% >> testlog-%test%.txt
    echo A7=%a7% B7=%b7% >> testlog-%test%.txt
    echo. >> testlog-%test%.txt
    echo Binary input A: >> testlog-%test%.txt
    echo %a7%%a6%%a5%%a4%%a3%%a2%%a1%%a0% >> testlog-%test%.txt
    echo. >> testlog-%test%.txt
    echo Binary input B: >> testlog-%test%.txt
    echo %b7%%b6%%b5%%b4%%b3%%b2%%b1%%b0% >> testlog-%test%.txt
    echo. >> testlog-%test%.txt
    echo S0=%s0% S1=%s1% >> testlog-%test%.txt
    echo S2=%s2% S3=%s3% >> testlog-%test%.txt
    echo S4=%s4% >> testlog-%test%.txt
    echo. >> testlog-%test%.txt
    echo Binary output: >> testlog-%test%.txt
    echo %z7%%z6%%z5%%z4%%z3%%z2%%z1%%z0% >> testlog-%test%.txt
    echo. >> testlog-%test%.txt
    echo Cout=%cout% >> testlog-%test%.txt
    echo. >> testlog-%test%.txt
)
echo . > values\done
goto loop



:loop
color d
echo waiting for new instruction...
echo.
if exist values\stop (
    del values\stop
    goto stop
)
if exist values\pause (
    del values\pause
    goto pause
)
if exist values\ready (
    goto isready
)
TIMEOUT /nobreak /T 1 > nul
color e
goto loop

:pause
pause
goto isready

:stop
if exist values\stop del values\stop
if exist values\pause del values\pause
if exist values\test del values\test
if exist values\newInstruction del values\newInstruction
if exist values\done del values\done
echo stopping...
exit
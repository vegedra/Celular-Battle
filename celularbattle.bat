title Celular Battle
color 0e
@echo off
:menu
set slt1=empty
set slt2=empty
set slt3=empty
set slt4=empty
set slt5=empty
set slt6=empty
set slt7=empty
set slt8=empty
set slt9=empty
set slt10=empty
color 0b
cls
type titulo.txt
echo.
echo 1)Novo Jogo
echo 2)Carregar
echo 3)Instrucoes
echo 4)Sair
echo.
set input=3
set /p input=Enter:
color 0e

if %input% == 1 goto start
if %input% == 2 goto load
if %input% == 3 goto info
if %input% == 4 exit
goto menu

:info
cls
echo.
echo Este e um RPG entre celulas e anti corpos.
echo Criado por Pedro Ivo
echo www.star10games.freevar.com
echo v1.1
echo 2017
echo.
echo 1)Voltar
set /p input=Enter:

if %input% == 1 goto menu
goto info

:start
< savemain.sav (
set /p slt1=
set /p slt2=
set /p slt3=
set /p slt4=
set /p slt5=
set /p slt6=
set /p slt7=
set /p slt8=
set /p slt9=
set /p slt10=
)
set save=sv0
set level=1
set ifpass=1
set pass=
set health=100
set money=50
set xp=0
set xpmax=100
set wep=0
set wepdis=None
set arm=0
set armdis=None
set str=10
set killnum=0
set deaths=0
set hpots=2
set hpotm=0
set hpotl=0
set invslt1=0
set invslt2=0
set invslt3=0
set invslt4=0
set invslt5=0
set invslt6=0
set invslt7=0
set invslt8=0
set invslt9=0
set invslt10=0
set arenpoints=0
set tournlev=1
cls
echo Qual Seu Nome?
echo.
set /p name=Enter:

if %name% == %slt1% goto taken
if %name% == %slt2% goto taken
if %name% == %slt3% goto taken
if %name% == %slt4% goto taken
if %name% == %slt5% goto taken
if %name% == %slt6% goto taken
if %name% == %slt7% goto taken
if %name% == %slt8% goto taken
if %name% == %slt9% goto taken
if %name% == %slt10% goto taken
goto classe

:classe
cls 
echo Qual Sua Classe?
echo.
echo A)Anti Corpos 
echo.
echo B)Bacteria 
set /p class=Enter:

if %class% == %slt1% goto taken
if %class% == %slt2% goto taken
if %class% == %slt3% goto taken
if %class% == %slt4% goto taken
if %class% == %slt5% goto taken
if %class% == %slt6% goto taken
if %class% == %slt7% goto taken
if %class% == %slt8% goto taken
if %class% == %slt9% goto taken
if %class% == %slt10% goto taken

:main
(
echo %slt1%
echo %slt2%
echo %slt3%
echo %slt4%
echo %slt5%
echo %slt6%
echo %slt7%
echo %slt8%
echo %slt9%
echo %slt10%
) > savemain.sav
if %wep% == 1 set str=12
if %wep% == 2 set str=14
if %wep% == 3 set str=17
if %wep% == 4 set str=20
if %wep% == 5 set str=23
if %wep% == 6 set str=26
if %wep% == 7 set str=30
if %wep% == 8 set str=35
if %wep% == r1 set str=10
if %wep% == r2 set str=12
if %wep% == r3 set str=15
if %wep% == r4 set str=18
if %wep% == r5 set str=21
if %wep% == r6 set str=24
if %wep% == r7 set str=27
if %wep% == r8 set str=29
if %wep% == 50 set str=48
if %wep% == 1 set wepdis=Dagger
if %wep% == 2 set wepdis=Sword
if %wep% == 3 set wepdis=2h Sword
if %wep% == 4 set wepdis=Sword Dual Weild
if %wep% == 5 set wepdis=Fire Blade
if %wep% == 6 set wepdis=Titanium Claws
if %wep% == 7 set wepdis=Enchanted Trident
if %wep% == 8 set wepdis=Thor's Hammer
if %wep% == r1 set wepdis=Shortbow
if %wep% == r2 set wepdis=Oak Shortbow
if %wep% == r3 set wepdis=Longbow
if %wep% == r4 set wepdis=Oak Longbow
if %wep% == r5 set wepdis=Crossbow
if %wep% == r6 set wepdis=Oak Crossbow
if %wep% == r7 set wepdis=Enchanted Bow
if %wep% == r8 set wepdis=Enchanted Crossbow
if %wep% == 50 set wepdis=Master Blade
if %arm% == 1 set armdis=Leather
if %arm% == 2 set armdis=Iron
if %arm% == 3 set armdis=Steel
if %arm% == 4 set armdis=Titanium
if %arm% == 5 set armdis=Enchanted
if %arm% == 6 set armdis=Thor's Armour
if %arm% == 50 set armdis=Champion's
if %money% LSS 0 set money=0
if %health% GTR 100 set health=100
if %health% LSS 1 goto death
if %xp% GEQ %xpmax% goto levelup
cls
echo Celular Battle
echo ----------------------------------------------
echo %name% Lvl:%level%
echo Hp:%health%/100    Dinheiro:$%money%
echo Xp:%xp%/%xpmax%    Arma:%wepdis%  Classe:%class%
echo ----------------------------------------------
echo.
echo 1)Lutar                   
echo 2)Shop                    5)Sair
echo 3)Inventario
echo 4)Salvar
echo.
set minput=0
set /p minput=Enter:

if %minput% == 1 goto fight
if %minput% == 2 goto shop
if %minput% == 3 goto inv
if %minput% == 4 goto save
if %minput% == 5 goto exit
if %minput% == cheats goto chts
if %minput% == changename goto changename
goto main


:inv
if %invslt1% == 0 set invslt1dis=empty
if %invslt1% == 1 set invslt1dis=Dagger
if %invslt1% == 2 set invslt1dis=Sword
if %invslt1% == 3 set invslt1dis=Two-Handed Sword
if %invslt1% == 4 set invslt1dis=Sword Dual Wield
if %invslt1% == 5 set invslt1dis=Fire Blade
if %invslt1% == 6 set invslt1dis=Titanium Claws
if %invslt1% == 7 set invslt1dis=Enchanted Trident
if %invslt1% == 8 set invslt1dis=Thor's Hammer
if %invslt1% == r1 set invslt1dis=Shortbow
if %invslt1% == r2 set invslt1dis=Oak Shortbow
if %invslt1% == r3 set invslt1dis=Longbow
if %invslt1% == r4 set invslt1dis=Oak Longbow
if %invslt1% == r5 set invslt1dis=Crossbow
if %invslt1% == r6 set invslt1dis=Oak Crossbow
if %invslt1% == r7 set invslt1dis=Enchanted Bow
if %invslt1% == r8 set invslt1dis=Enchanted Crossbow
if %invslt1% == a1 set invslt1dis=Leather Armour
if %invslt1% == a2 set invslt1dis=Iron Armour
if %invslt1% == a3 set invslt1dis=Steel Armour
if %invslt1% == a4 set invslt1dis=Titanium Armour
if %invslt1% == a5 set invslt1dis=Enchanted Armour
if %invslt1% == a6 set invslt1dis=Thor's Armour
if %invslt2% == 0 set invslt2dis=empty
if %invslt2% == 1 set invslt2dis=Dagger
if %invslt2% == 2 set invslt2dis=Sword
if %invslt2% == 3 set invslt2dis=Two-Handed Sword
if %invslt2% == 4 set invslt2dis=Sword Dual Weild
if %invslt2% == 5 set invslt2dis=Fire Blade
if %invslt2% == 6 set invslt2dis=Titanium Claws
if %invslt2% == 7 set invslt2dis=Enchanted Trident
if %invslt2% == 8 set invslt2dis=Thor's Hammer
if %invslt2% == r1 set invslt2dis=Shortbow
if %invslt2% == r2 set invslt2dis=Oak Shortbow
if %invslt2% == r3 set invslt2dis=Longbow
if %invslt2% == r4 set invslt2dis=Oak Longbow
if %invslt2% == r5 set invslt2dis=Crossbow
if %invslt2% == r6 set invslt2dis=Oak Crossbow
if %invslt2% == r7 set invslt2dis=Enchanted Bow
if %invslt2% == r8 set invslt2dis=Enchanted Crossbow
if %invslt2% == a1 set invslt2dis=Leather Armour
if %invslt2% == a2 set invslt2dis=Iron Armour
if %invslt2% == a3 set invslt2dis=Steel Armour
if %invslt2% == a4 set invslt2dis=Titanium Armour
if %invslt2% == a5 set invslt2dis=Enchanted Armour
if %invslt2% == a6 set invslt2dis=Thor's Armour
if %invslt3% == 0 set invslt3dis=empty
if %invslt3% == 1 set invslt3dis=Dagger
if %invslt3% == 2 set invslt3dis=Sword
if %invslt3% == 3 set invslt3dis=Two-Handed Sword
if %invslt3% == 4 set invslt3dis=Sword Dual Weild
if %invslt3% == 5 set invslt3dis=Fire Blade
if %invslt3% == 6 set invslt3dis=Titanium Claws
if %invslt3% == 7 set invslt3dis=Enchanted Trident
if %invslt3% == 8 set invslt3dis=Thor's Hammer
if %invslt3% == r1 set invslt3dis=Shortbow
if %invslt3% == r2 set invslt3dis=Oak Shortbow
if %invslt3% == r3 set invslt3dis=Longbow
if %invslt3% == r4 set invslt3dis=Oak Longbow
if %invslt3% == r5 set invslt3dis=Crossbow
if %invslt3% == r6 set invslt3dis=Oak Crossbow
if %invslt3% == r7 set invslt3dis=Enchanted Bow
if %invslt3% == r8 set invslt3dis=Enchanted Crossbow
if %invslt3% == a1 set invslt3dis=Leather Armour
if %invslt3% == a2 set invslt3dis=Iron Armour
if %invslt3% == a3 set invslt3dis=Steel Armour
if %invslt3% == a4 set invslt3dis=Titanium Armour
if %invslt3% == a5 set invslt3dis=Enchanted Armour
if %invslt3% == a6 set invslt3dis=Thor's Armour
if %invslt4% == 0 set invslt4dis=empty
if %invslt4% == 1 set invslt4dis=Dagger
if %invslt4% == 2 set invslt4dis=Sword
if %invslt4% == 3 set invslt4dis=Two-Handed Sword
if %invslt4% == 4 set invslt4dis=Sword Dual Weild
if %invslt4% == 5 set invslt4dis=Fire Blade
if %invslt4% == 6 set invslt4dis=Titanium Claws
if %invslt4% == 7 set invslt4dis=Enchanted Trident
if %invslt4% == 8 set invslt4dis=Thor's Hammer
if %invslt4% == r1 set invslt4dis=Shortbow
if %invslt4% == r2 set invslt4dis=Oak Shortbow
if %invslt4% == r3 set invslt4dis=Longbow
if %invslt4% == r4 set invslt4dis=Oak Longbow
if %invslt4% == r5 set invslt4dis=Crossbow
if %invslt4% == r6 set invslt4dis=Oak Crossbow
if %invslt4% == r7 set invslt4dis=Enchanted Bow
if %invslt4% == r8 set invslt4dis=Enchanted Crossbow
if %invslt4% == a1 set invslt4dis=Leather Armour
if %invslt4% == a2 set invslt4dis=Iron Armour
if %invslt4% == a3 set invslt4dis=Steel Armour
if %invslt4% == a4 set invslt4dis=Titanium Armour
if %invslt4% == a5 set invslt4dis=Enchanted Armour
if %invslt4% == a6 set invslt4dis=Thor's Armour
if %invslt5% == 0 set invslt5dis=empty
if %invslt5% == 1 set invslt5dis=Dagger
if %invslt5% == 2 set invslt5dis=Sword
if %invslt5% == 3 set invslt5dis=Two-Handed Sword
if %invslt5% == 4 set invslt5dis=Sword Dual Weild
if %invslt5% == 5 set invslt5dis=Fire Blade
if %invslt5% == 6 set invslt5dis=Titanium Claws
if %invslt5% == 7 set invslt5dis=Enchanted Trident
if %invslt5% == 8 set invslt5dis=Thor's Hammer
if %invslt5% == r1 set invslt5dis=Shortbow
if %invslt5% == r2 set invslt5dis=Oak Shortbow
if %invslt5% == r3 set invslt5dis=Longbow
if %invslt5% == r4 set invslt5dis=Oak Longbow
if %invslt5% == r5 set invslt5dis=Crossbow
if %invslt5% == r6 set invslt5dis=Oak Crossbow
if %invslt5% == r7 set invslt5dis=Enchanted Bow
if %invslt5% == r8 set invslt5dis=Enchanted Crossbow
if %invslt5% == a1 set invslt5dis=Leather Armour
if %invslt5% == a2 set invslt5dis=Iron Armour
if %invslt5% == a3 set invslt5dis=Steel Armour
if %invslt5% == a4 set invslt5dis=Titanium Armour
if %invslt5% == a5 set invslt5dis=Enchanted Armour
if %invslt5% == a6 set invslt5dis=Thor's Armour
if %invslt6% == 0 set invslt6dis=empty
if %invslt6% == 1 set invslt6dis=Dagger
if %invslt6% == 2 set invslt6dis=Sword
if %invslt6% == 3 set invslt6dis=Two-Handed Sword
if %invslt6% == 4 set invslt6dis=Sword Dual Weild
if %invslt6% == 5 set invslt6dis=Fire Blade
if %invslt6% == 6 set invslt6dis=Titanium Claws
if %invslt6% == 7 set invslt6dis=Enchanted Trident
if %invslt6% == 8 set invslt6dis=Thor's Hammer
if %invslt6% == r1 set invslt6dis=Shortbow
if %invslt6% == r2 set invslt6dis=Oak Shortbow
if %invslt6% == r3 set invslt6dis=Longbow
if %invslt6% == r4 set invslt6dis=Oak Longbow
if %invslt6% == r5 set invslt6dis=Crossbow
if %invslt6% == r6 set invslt6dis=Oak Crossbow
if %invslt6% == r7 set invslt6dis=Enchanted Bow
if %invslt6% == r8 set invslt6dis=Enchanted Crossbow
if %invslt6% == a1 set invslt6dis=Leather Armour
if %invslt6% == a2 set invslt6dis=Iron Armour
if %invslt6% == a3 set invslt6dis=Steel Armour
if %invslt6% == a4 set invslt6dis=Titanium Armour
if %invslt6% == a5 set invslt6dis=Enchanted Armour
if %invslt6% == a6 set invslt6dis=Thor's Armour
if %invslt7% == 0 set invslt7dis=empty
if %invslt7% == 1 set invslt7dis=Dagger
if %invslt7% == 2 set invslt7dis=Sword
if %invslt7% == 3 set invslt7dis=Two-Handed Sword
if %invslt7% == 4 set invslt7dis=Sword Dual Weild
if %invslt7% == 5 set invslt7dis=Fire Blade
if %invslt7% == 6 set invslt7dis=Titanium Claws
if %invslt7% == 7 set invslt7dis=Enchanted Trident
if %invslt7% == 8 set invslt7dis=Thor's Hammer
if %invslt7% == r1 set invslt7dis=Shortbow
if %invslt7% == r2 set invslt7dis=Oak Shortbow
if %invslt7% == r3 set invslt7dis=Longbow
if %invslt7% == r4 set invslt7dis=Oak Longbow
if %invslt7% == r5 set invslt7dis=Crossbow
if %invslt7% == r6 set invslt7dis=Oak Crossbow
if %invslt7% == r7 set invslt7dis=Enchanted Bow
if %invslt7% == r8 set invslt7dis=Enchanted Crossbow
if %invslt7% == a1 set invslt7dis=Leather Armour
if %invslt7% == a2 set invslt7dis=Iron Armour
if %invslt7% == a3 set invslt7dis=Steel Armour
if %invslt7% == a4 set invslt7dis=Titanium Armour
if %invslt7% == a5 set invslt7dis=Enchanted Armour
if %invslt7% == a6 set invslt7dis=Thor's Armour
if %invslt8% == 0 set invslt8dis=empty
if %invslt8% == 1 set invslt8dis=Dagger
if %invslt8% == 2 set invslt8dis=Sword
if %invslt8% == 3 set invslt8dis=Two-Handed Sword
if %invslt8% == 4 set invslt8dis=Sword Dual Weild
if %invslt8% == 5 set invslt8dis=Fire Blade
if %invslt8% == 6 set invslt8dis=Titanium Claws
if %invslt8% == 7 set invslt8dis=Enchanted Trident
if %invslt8% == 8 set invslt8dis=Thor's Hammer
if %invslt8% == r1 set invslt8dis=Shortbow
if %invslt8% == r2 set invslt8dis=Oak Shortbow
if %invslt8% == r3 set invslt8dis=Longbow
if %invslt8% == r4 set invslt8dis=Oak Longbow
if %invslt8% == r5 set invslt8dis=Crossbow
if %invslt8% == r6 set invslt8dis=Oak Crossbow
if %invslt8% == r7 set invslt8dis=Enchanted Bow
if %invslt8% == r8 set invslt8dis=Enchanted Crossbow
if %invslt8% == a1 set invslt8dis=Leather Armour
if %invslt8% == a2 set invslt8dis=Iron Armour
if %invslt8% == a3 set invslt8dis=Steel Armour
if %invslt8% == a4 set invslt8dis=Titanium Armour
if %invslt8% == a5 set invslt8dis=Enchanted Armour
if %invslt8% == a6 set invslt8dis=Thor's Armour
if %invslt9% == 0 set invslt9dis=empty
if %invslt9% == 1 set invslt9dis=Dagger
if %invslt9% == 2 set invslt9dis=Sword
if %invslt9% == 3 set invslt9dis=Two-Handed Sword
if %invslt9% == 4 set invslt9dis=Sword Dual Weild
if %invslt9% == 5 set invslt9dis=Fire Blade
if %invslt9% == 6 set invslt9dis=Titanium Claws
if %invslt9% == 7 set invslt9dis=Enchanted Trident
if %invslt9% == 8 set invslt9dis=Thor's Hammer
if %invslt9% == r1 set invslt9dis=Shortbow
if %invslt9% == r2 set invslt9dis=Oak Shortbow
if %invslt9% == r3 set invslt9dis=Longbow
if %invslt9% == r4 set invslt9dis=Oak Longbow
if %invslt9% == r5 set invslt9dis=Crossbow
if %invslt9% == r6 set invslt9dis=Oak Crossbow
if %invslt9% == r7 set invslt9dis=Enchanted Bow
if %invslt9% == r8 set invslt9dis=Enchanted Crossbow
if %invslt9% == a1 set invslt9dis=Leather Armour
if %invslt9% == a2 set invslt9dis=Iron Armour
if %invslt9% == a3 set invslt9dis=Steel Armour
if %invslt9% == a4 set invslt9dis=Titanium Armour
if %invslt9% == a5 set invslt9dis=Enchanted Armour
if %invslt9% == a6 set invslt9dis=Thor's Armour
if %invslt10% == 0 set invslt10dis=empty
if %invslt10% == 1 set invslt10dis=Dagger
if %invslt10% == 2 set invslt10dis=Sword
if %invslt10% == 3 set invslt10dis=Two-Handed Sword
if %invslt10% == 4 set invslt10dis=Sword Dual Weild
if %invslt10% == 5 set invslt10dis=Fire Blade
if %invslt10% == 6 set invslt10dis=Titanium Claws
if %invslt10% == 7 set invslt10dis=Enchanted Trident
if %invslt10% == 8 set invslt10dis=Thor's Hammer
if %invslt10% == r1 set invslt10dis=Shortbow
if %invslt10% == r2 set invslt10dis=Oak Shortbow
if %invslt10% == r3 set invslt10dis=Longbow
if %invslt10% == r4 set invslt10dis=Oak Longbow
if %invslt10% == r5 set invslt10dis=Crossbow
if %invslt10% == r6 set invslt10dis=Oak Crossbow
if %invslt10% == r7 set invslt10dis=Enchanted Bow
if %invslt10% == r8 set invslt10dis=Enchanted Crossbow
if %invslt10% == a1 set invslt10dis=Leather Armour
if %invslt10% == a2 set invslt10dis=Iron Armour
if %invslt10% == a3 set invslt10dis=Steel Armour
if %invslt10% == a4 set invslt10dis=Titanium Armour
if %invslt10% == a5 set invslt10dis=Enchanted Armour
if %invslt10% == a6 set invslt10dis=Thor's Armour
cls
echo Celular Battle - Inventario
echo ----------------------------------------------
echo %name% Lvl:%level%
echo Hp:%health%/100
echo Xp:%xp%/%xpmax%   Dinheiro:$%money%
echo ----------------------------------------------
echo Escolha o Item:
echo.
echo 1) Slot 1:%invslt1dis%     d)Deletar Item
echo 2) Slot 2:%invslt2dis%
echo 3) Slot 3:%invslt3dis%
echo 4) Slot 4:%invslt4dis%
echo 5) Slot 5:%invslt5dis%
echo 6) Slot 6:%invslt6dis%
echo 7) Slot 7:%invslt7dis%
echo 8) Slot 8:%invslt8dis%
echo 9) Slot 9:%invslt9dis%
echo 10) Slot 10:%invslt10dis%
echo 11) Voltar
echo.
set invput=12
set /p invput=Enter:

if %invput% == 11 goto main
if %invput% == d goto delslot
if %invput% == 1 if not %invslt1% == 0 goto invslt1
if %invput% == 2 if not %invslt2% == 0 goto invslt2
if %invput% == 3 if not %invslt3% == 0 goto invslt3
if %invput% == 4 if not %invslt4% == 0 goto invslt4
if %invput% == 5 if not %invslt5% == 0 goto invslt5
if %invput% == 6 if not %invslt6% == 0 goto invslt6
if %invput% == 7 if not %invslt7% == 0 goto invslt7
if %invput% == 8 if not %invslt8% == 0 goto invslt8
if %invput% == 9 if not %invslt9% == 0 goto invslt9
if %invput% == 10 if not %invslt10% == 0 goto invslt10
goto inv

:delslot
cls
echo Celular Battle - Inventario - Deletar
echo ----------------------------------------------
echo %name% Lvl:%level%
echo Hp:%health%/100
echo Xp:%xp%/%xpmax%   Dinheiro:$%money%
echo ----------------------------------------------
echo Escolha o item para deletar:
echo.
echo 1) Slot 1:%invslt1dis%
echo 2) Slot 2:%invslt2dis%
echo 3) Slot 3:%invslt3dis%
echo 4) Slot 4:%invslt4dis%
echo 5) Slot 5:%invslt5dis%
echo 6) Slot 6:%invslt6dis%
echo 7) Slot 7:%invslt7dis%
echo 8) Slot 8:%invslt8dis%
echo 9) Slot 9:%invslt9dis%
echo 10) Slot 10:%invslt10dis%
echo 11) Voltar
echo.
set invput=12
set /p invput=Enter:

if %invput% == 1 set invslt1=0
if %invput% == 1 goto chnged
if %invput% == 2 set invslt2=0
if %invput% == 2 goto chnged
if %invput% == 3 set invslt3=0
if %invput% == 3 goto chnged
if %invput% == 4 set invslt4=0
if %invput% == 4 goto chnged
if %invput% == 5 set invslt5=0
if %invput% == 5 goto chnged
if %invput% == 6 set invslt6=0
if %invput% == 6 goto chnged
if %invput% == 7 set invslt7=0
if %invput% == 7 goto chnged
if %invput% == 8 set invslt8=0
if %invput% == 8 goto chnged
if %invput% == 9 set invslt9=0
if %invput% == 9 goto chnged
if %invput% == 10 set invslt10=0
if %invput% == 10 goto chnged
goto delslot

:chnged
color 0a
cls
echo ITEM DELETADO
pause >nul
color 0e
goto inv

:invslt1
if %invslt1% == 1 set wep=1
if %invslt1% == 2 set wep=2
if %invslt1% == 3 set wep=3
if %invslt1% == 4 set wep=4
if %invslt1% == 5 set wep=5
if %invslt1% == 6 set wep=6
if %invslt1% == 7 set wep=7
if %invslt1% == 8 set wep=8
if %invslt1% == r1 set wep=r1
if %invslt1% == r2 set wep=r2
if %invslt1% == r3 set wep=r3
if %invslt1% == r4 set wep=r4
if %invslt1% == r5 set wep=r5
if %invslt1% == r6 set wep=r6
if %invslt1% == r7 set wep=r7
if %invslt1% == r8 set wep=r8
if %invslt1% == a1 set arm=1
if %invslt1% == a2 set arm=2
if %invslt1% == a3 set arm=3
if %invslt1% == a4 set arm=4
if %invslt1% == a5 set arm=5
if %invslt1% == a6 set arm=6
goto main

:invslt2
if %invslt2% == 1 set wep=1
if %invslt2% == 2 set wep=2
if %invslt2% == 3 set wep=3
if %invslt2% == 4 set wep=4
if %invslt2% == 5 set wep=5
if %invslt2% == 6 set wep=6
if %invslt2% == 7 set wep=7
if %invslt2% == 8 set wep=8
if %invslt2% == r1 set wep=r1
if %invslt2% == r2 set wep=r2
if %invslt2% == r3 set wep=r3
if %invslt2% == r4 set wep=r4
if %invslt2% == r5 set wep=r5
if %invslt2% == r6 set wep=r6
if %invslt2% == r7 set wep=r7
if %invslt2% == r8 set wep=r8
if %invslt2% == a1 set arm=1
if %invslt2% == a2 set arm=2
if %invslt2% == a3 set arm=3
if %invslt2% == a4 set arm=4
if %invslt2% == a5 set arm=5
if %invslt2% == a6 set arm=6
goto main

:invslt3
if %invslt3% == 1 set wep=1
if %invslt3% == 2 set wep=2
if %invslt3% == 3 set wep=3
if %invslt3% == 4 set wep=4
if %invslt3% == 5 set wep=5
if %invslt3% == 6 set wep=6
if %invslt3% == 7 set wep=7
if %invslt3% == 8 set wep=8
if %invslt3% == r1 set wep=r1
if %invslt3% == r2 set wep=r2
if %invslt3% == r3 set wep=r3
if %invslt3% == r4 set wep=r4
if %invslt3% == r5 set wep=r5
if %invslt3% == r6 set wep=r6
if %invslt3% == r7 set wep=r7
if %invslt3% == r8 set wep=r8
if %invslt3% == a1 set arm=1
if %invslt3% == a2 set arm=2
if %invslt3% == a3 set arm=3
if %invslt3% == a4 set arm=4
if %invslt3% == a5 set arm=5
if %invslt3% == a6 set arm=6
goto main

:invslt4
if %invslt4% == 1 set wep=1
if %invslt4% == 2 set wep=2
if %invslt4% == 3 set wep=3
if %invslt4% == 4 set wep=4
if %invslt4% == 5 set wep=5
if %invslt4% == 6 set wep=6
if %invslt4% == 7 set wep=7
if %invslt4% == 8 set wep=8
if %invslt4% == r1 set wep=r1
if %invslt4% == r2 set wep=r2
if %invslt4% == r3 set wep=r3
if %invslt4% == r4 set wep=r4
if %invslt4% == r5 set wep=r5
if %invslt4% == r6 set wep=r6
if %invslt4% == r7 set wep=r7
if %invslt4% == r8 set wep=r8
if %invslt4% == a1 set arm=1
if %invslt4% == a2 set arm=2
if %invslt4% == a3 set arm=3
if %invslt4% == a4 set arm=4
if %invslt4% == a5 set arm=5
if %invslt4% == a6 set arm=6
goto main

:invslt5
if %invslt5% == 1 set wep=1
if %invslt5% == 2 set wep=2
if %invslt5% == 3 set wep=3
if %invslt5% == 4 set wep=4
if %invslt5% == 5 set wep=5
if %invslt5% == 6 set wep=6
if %invslt5% == 7 set wep=7
if %invslt5% == 8 set wep=8
if %invslt5% == r1 set wep=r1
if %invslt5% == r2 set wep=r2
if %invslt5% == r3 set wep=r3
if %invslt5% == r4 set wep=r4
if %invslt5% == r5 set wep=r5
if %invslt5% == r6 set wep=r6
if %invslt5% == r7 set wep=r7
if %invslt5% == r8 set wep=r8
if %invslt5% == a1 set arm=1
if %invslt5% == a2 set arm=2
if %invslt5% == a3 set arm=3
if %invslt5% == a4 set arm=4
if %invslt5% == a5 set arm=5
if %invslt5% == a6 set arm=6
goto main

:invslt6
if %invslt6% == 1 set wep=1
if %invslt6% == 2 set wep=2
if %invslt6% == 3 set wep=3
if %invslt6% == 4 set wep=4
if %invslt6% == 5 set wep=5
if %invslt6% == 6 set wep=6
if %invslt6% == 7 set wep=7
if %invslt6% == 8 set wep=8
if %invslt6% == r1 set wep=r1
if %invslt6% == r2 set wep=r2
if %invslt6% == r3 set wep=r3
if %invslt6% == r4 set wep=r4
if %invslt6% == r5 set wep=r5
if %invslt6% == r6 set wep=r6
if %invslt6% == r7 set wep=r7
if %invslt6% == r8 set wep=r8
if %invslt6% == a1 set arm=1
if %invslt6% == a2 set arm=2
if %invslt6% == a3 set arm=3
if %invslt6% == a4 set arm=4
if %invslt6% == a5 set arm=5
if %invslt6% == a6 set arm=6
goto main

:invslt7
if %invslt7% == 1 set wep=1
if %invslt7% == 2 set wep=2
if %invslt7% == 3 set wep=3
if %invslt7% == 4 set wep=4
if %invslt7% == 5 set wep=5
if %invslt7% == 6 set wep=6
if %invslt7% == 7 set wep=7
if %invslt7% == 8 set wep=8
if %invslt7% == r1 set wep=r1
if %invslt7% == r2 set wep=r2
if %invslt7% == r3 set wep=r3
if %invslt7% == r4 set wep=r4
if %invslt7% == r5 set wep=r5
if %invslt7% == r6 set wep=r6
if %invslt7% == r7 set wep=r7
if %invslt7% == r8 set wep=r8
if %invslt7% == a1 set arm=1
if %invslt7% == a2 set arm=2
if %invslt7% == a3 set arm=3
if %invslt7% == a4 set arm=4
if %invslt7% == a5 set arm=5
if %invslt7% == a6 set arm=6
goto main

:invslt8
if %invslt8% == 1 set wep=1
if %invslt8% == 2 set wep=2
if %invslt8% == 3 set wep=3
if %invslt8% == 4 set wep=4
if %invslt8% == 5 set wep=5
if %invslt8% == 6 set wep=6
if %invslt8% == 7 set wep=7
if %invslt8% == 8 set wep=8
if %invslt8% == r1 set wep=r1
if %invslt8% == r2 set wep=r2
if %invslt8% == r3 set wep=r3
if %invslt8% == r4 set wep=r4
if %invslt8% == r5 set wep=r5
if %invslt8% == r6 set wep=r6
if %invslt8% == r7 set wep=r7
if %invslt8% == r8 set wep=r8
if %invslt8% == a1 set arm=1
if %invslt8% == a2 set arm=2
if %invslt8% == a3 set arm=3
if %invslt8% == a4 set arm=4
if %invslt8% == a5 set arm=5
if %invslt8% == a6 set arm=6
goto main

:invslt9
if %invslt9% == 1 set wep=1
if %invslt9% == 2 set wep=2
if %invslt9% == 3 set wep=3
if %invslt9% == 4 set wep=4
if %invslt9% == 5 set wep=5
if %invslt9% == 6 set wep=6
if %invslt9% == 7 set wep=7
if %invslt9% == 8 set wep=8
if %invslt9% == r1 set wep=r1
if %invslt9% == r2 set wep=r2
if %invslt9% == r3 set wep=r3
if %invslt9% == r4 set wep=r4
if %invslt9% == r5 set wep=r5
if %invslt9% == r6 set wep=r6
if %invslt9% == r7 set wep=r7
if %invslt9% == r8 set wep=r8
if %invslt9% == a1 set arm=1
if %invslt9% == a2 set arm=2
if %invslt9% == a3 set arm=3
if %invslt9% == a4 set arm=4
if %invslt9% == a5 set arm=5
if %invslt9% == a6 set arm=6
goto main

:invslt10
if %invslt10% == 1 set wep=1
if %invslt10% == 2 set wep=2
if %invslt10% == 3 set wep=3
if %invslt10% == 4 set wep=4
if %invslt10% == 5 set wep=5
if %invslt10% == 6 set wep=6
if %invslt10% == 7 set wep=7
if %invslt10% == 8 set wep=8
if %invslt10% == r1 set wep=r1
if %invslt10% == r2 set wep=r2
if %invslt10% == r3 set wep=r3
if %invslt10% == r4 set wep=r4
if %invslt10% == r5 set wep=r5
if %invslt10% == r6 set wep=r6
if %invslt10% == r7 set wep=r7
if %invslt10% == r8 set wep=r8
if %invslt10% == a1 set arm=1
if %invslt10% == a2 set arm=2
if %invslt10% == a3 set arm=3
if %invslt10% == a4 set arm=4
if %invslt10% == a5 set arm=5
if %invslt10% == a6 set arm=6
goto main

:fight
cls
echo Luta
echo -----
echo.
echo 1)Luta Aleatoria
echo 2)Voltar
echo.
set fchoiput=0
set /p fchoiput=Enter:

if %fchoiput% == 1 goto rndmfght
if %fchoiput% == 2 goto main
goto fight

:rndmfght
set endis=a
set enhp=0
set enmaxhp0=
set enlvl=0
set enhit=0
set enemy=%random:~-1%
if %enemy% GTR %level% goto rndmfght
if %enemy% LSS 1 goto rndmfght
if %enemy% == 1 set endis=Anti Corpo Recruta
if %enemy% == 1 set enhp=50
if %enemy% == 1 set enmaxhp=50
if %enemy% == 1 set enlvl=1
if %enemy% == 1 set enhit=5
if %enemy% == 2 set endis=Anti Corpo Aprendiz
if %enemy% == 2 set enhp=60
if %enemy% == 2 set enmaxhp=60
if %enemy% == 2 set enlvl=2
if %enemy% == 2 set enhit=6
if %enemy% == 3 set endis=Guarda Celular
if %enemy% == 3 set enhp=70
if %enemy% == 3 set enmaxhp=70
if %enemy% == 3 set enlvl=4
if %enemy% == 3 set enhit=8
if %enemy% == 4 set endis=Anti Corpos
if %enemy% == 4 set enhp=75
if %enemy% == 4 set enmaxhp=75
if %enemy% == 4 set enlvl=5
if %enemy% == 4 set enhit=9
if %enemy% == 5 set endis=Celulas de Defesa
if %enemy% == 5 set enhp=80
if %enemy% == 5 set enmaxhp=80
if %enemy% == 5 set enlvl=7
if %enemy% == 5 set enhit=12
if %enemy% == 6 set endis=Celulas de ataque
if %enemy% == 6 set enhp=90
if %enemy% == 6 set enmaxhp=90
if %enemy% == 6 set enlvl=9
if %enemy% == 6 set enhit=14
if %enemy% == 7 set endis=Grande Celula
if %enemy% == 7 set enhp=100
if %enemy% == 7 set enmaxhp=100
if %enemy% == 7 set enlvl=12
if %enemy% == 7 set enhit=15
if %enemy% == 8 set endis=Celulas
if %enemy% == 8 set enhp=125
if %enemy% == 8 set enmaxhp=125
if %enemy% == 8 set enlvl=15
if %enemy% == 8 set enhit=17
if %enemy% == 9 set endis=Exercito de Anti Corpos
if %enemy% == 9 set enhp=200
if %enemy% == 9 set enmaxhp=200
if %enemy% == 9 set enlvl=20
if %enemy% == 9 set enhit=20
:fightscreen
if %health% GTR 100 set health=100
if %health% LSS 1 goto death
cls
echo Celular Battle - Luta
echo ----------------------------------------------
echo %name% Lvl:%level%
echo Hp:%health%/100
echo Xp:%xp%/%xpmax%
echo Arma:%wepdis%
echo Protecao:%armdis%
echo ----------------------------------------------
echo %endis% Lvl:%enlvl%
echo Hp:%enhp%/%enmaxhp%
echo ----------------------------------------------
echo.
echo 1)Ataque
echo 2)Itens
echo 3)Fugir
echo.
echo.
set finput=4
set /p finput=Enter:

if %finput% == 1 goto attack
if %finput% == 2 goto fightpot
if %finput% == 3 goto flee
goto fightscreen

:attack
set att=%random:~-2%
if %att% GTR %str% goto attack
if %att% LSS 0 goto attack
if %att% == 00 set att=0
if %att% == 01 set att=1
if %att% == 02 set att=2
if %att% == 03 set att=3
if %att% == 04 set att=4
if %att% == 05 set att=5
if %att% == 06 set att=6
if %att% == 07 set att=7
if %att% == 08 set att=8
if %att% == 09 set att=9
cls
echo Voce Atacou o Inimigo
echo.
echo ------
echo   %att%
echo ------
echo.
pause >nul
set /a enhp= %enhp% - %att%
set /a xp= %xp% + %att%
goto enattack

:enattack
if %enhp% LSS 1 goto fwin
set enatt=%random:~-2%
if %enatt% GTR %enhit% goto enattack
if %enatt% LSS 0 goto enattack
if %enatt% == 00 set enatt=0
if %enatt% == 01 set enatt=1
if %enatt% == 02 set enatt=2
if %enatt% == 03 set enatt=3
if %enatt% == 04 set enatt=4
if %enatt% == 05 set enatt=5
if %enatt% == 06 set enatt=6
if %enatt% == 07 set enatt=7
if %enatt% == 08 set enatt=%enhit%
if %enatt% == 09 set enatt=%enhit%
if %arm% == 1 set /a enatt= %enatt% - 1
if %arm% == 2 set /a enatt= %enatt% - 2
if %arm% == 3 set /a enatt= %enatt% - 3
if %arm% == 4 set /a enatt= %enatt% - 5
if %arm% == 5 set /a enatt= %enatt% - 6
if %arm% == 6 set /a enatt= %enatt% - 8
if %arm% == 50 set /a enatt= %enatt% - 18
if %enatt% LSS 0 set enatt=1
cls
echo O Inimigo te atacou
echo.
echo ------
echo   %enatt%
echo ------
echo.
pause >nul
set /a health= %health% - %enatt%
goto fightscreen

:fightpot
cls
echo Itens
echo 1)Poção Pequena -  %hpots%
echo 2)Poção Mediana   -  %hpotm%
echo 3)Poção FULL  -  %hpotl%
echo 4)Back
echo.
set fpinput=5
set /p fpinput=Enter:

if %fpinput% == 4 goto fightscreen
if %health% == 100 goto fullhp
if %fpinput% == 1 if %hpots% GEQ 1 set /a health= %health% + 25
if %fpinput% == 1 if %hpots% GEQ 1 goto hpotsl
if %fpinput% == 1 goto fightpot
if %fpinput% == 2 if %hpotm% GEQ 1 set /a health= %health% + 50
if %fpinput% == 2 if %hpotm% GEQ 1 goto hpotml
if %fpinput% == 2 goto fightpot
if %fpinput% == 3 if %hpotl% GEQ 1 set health=100
if %fpinput% == 3 if %hpotl% GEQ 1 goto hpotll
if %fpinput% == 3 goto fightpot
goto fightpot

:hpotsl
if %hpots% GEQ 1 set /a hpots= %hpots% - 1
goto fightscreen

:hpotml
if %hpotm% GEQ 1 set /a hpotm= %hpotm% - 1
goto fightscreen

:hpotll
if %hpotl% GEQ 1 set /a hpotl= %hpotl% - 1
goto fightscreen

:fullhp
cls
echo Your health is already full!
pause >nul
goto fightscreen

:flee
cls
echo Voce tem certeza que quer fugir? 
echo Isso irá custar $15!
echo (S/N)
echo.
set flinput=1
set /p flinput=Enter:

if %flinput% == s set /a money= %money% - 15
if %flinput% == s goto main
if %flinput% == n goto fightscreen
goto flee

:fwin
set monwin=%random:~-2%
if %monwin% GTR 35 goto fwin
if %monwin% LSS 10 goto fwin
cls
echo Parabens voce derrotou o inimigo!
echo +$%monwin%
echo.
pause >nul
set /a money= %money% + %monwin%
set /a killnum= %killnum% + 1
goto main

:shop
cls
echo Celular Battle - Shop
echo ----------------------------------------------
echo %name%
echo Dinheiro:$%money%
echo.
echo ----------------------------------------------
echo.
echo 1)Armas
echo 2)Protecao
echo 3)Itens
echo 4)Voltar
echo.
set shinput=5
set /p shinput=Enter:

if %shinput% == 1 goto weapons
if %shinput% == 2 goto armour
if %shinput% == 3 goto potions
if %shinput% == 4 goto main
goto shop

:weapons
cls
echo celular Battle - Shop - Armas
echo ----------------------------------------------
echo %name%
echo dinheiro:$%money%
echo ----------------------------------------------
echo 1)Adaga             $40      Lvl:1
echo 2)Espada             $80      Lvl:3
echo 3)Espada de Duas Mãos  $150     Lvl:7
echo 4)Espada de Ferro   $195     Lvl:10
echo 5)Espada de Fogo        $240     Lvl:12
echo 6)Garras de Titanium    $300     Lvl:14
echo 7)Tridente  $500     Lvl:17
echo 8)Martelo Poderoso      $750     Lvl:21
echo 9)Voltar
echo.
set winput=0
set /p winput=Enter:

if %winput% == 9 goto shop
if %winput% == b goto ranged
if %money% LSS 40 goto nofunds
if %winput% == 1 set /a money= %money% - 40
if %winput% == 1 goto invinsert1
if %level% LSS 3 goto nolev
if %money% LSS 80 goto nofunds
if %winput% == 2 set /a money= %money% - 80
if %winput% == 2 goto invinsert2
if %level% LSS 7 goto nolev
if %money% LSS 150 goto nofunds
if %winput% == 3 set /a money= %money% - 150
if %winput% == 3 goto invinsert3
if %level% LSS 10 goto nolev
if %money% LSS 195 goto nofunds
if %winput% == 4 set /a money= %money% - 195
if %winput% == 4 goto invinsert4
if %level% LSS 12 goto nolev
if %money% LSS 240 goto nofunds
if %winput% == 5 set /a money= %money% - 240
if %winput% == 5 goto invinsert5
if %level% LSS 14 goto nolev
if %money% LSS 300 goto nofunds
if %winput% == 6 set /a money= %money% - 300
if %winput% == 6 goto invinsert6
if %level% LSS 17 goto nolev
if %money% LSS 500 goto nofunds
if %winput% == 7 set /a money= %money% - 500
if %winput% == 7 goto invinsert7
if %level% LSS 21 goto nolev
if %money% LSS 750 goto nofunds
if %winput% == 8 set /a money= %money% - 750
if %winput% == 8 goto invinsert8
goto weapons

:invinsert1
if %invslt1% == 0 set invslt1=1
if %invslt1% == 1 goto shop
if %invslt2% == 0 set invslt2=1
if %invslt2% == 1 goto shop
if %invslt3% == 0 set invslt3=1
if %invslt3% == 1 goto shop
if %invslt4% == 0 set invslt4=1
if %invslt4% == 1 goto shop
if %invslt5% == 0 set invslt5=1
if %invslt5% == 1 goto shop
if %invslt6% == 0 set invslt6=1
if %invslt6% == 1 goto shop
if %invslt7% == 0 set invslt7=1
if %invslt7% == 1 goto shop
if %invslt8% == 0 set invslt8=1
if %invslt8% == 1 goto shop
if %invslt9% == 0 set invslt9=1
if %invslt9% == 1 goto shop
if %invslt10% == 0 set invslt10=1
if %invslt10% == 1 goto shop
goto invfull

:invinsert2
if %invslt1% == 0 set invslt1=2
if %invslt1% == 2 goto shop
if %invslt2% == 0 set invslt2=2
if %invslt2% == 2 goto shop
if %invslt3% == 0 set invslt3=2
if %invslt3% == 2 goto shop
if %invslt4% == 0 set invslt4=2
if %invslt4% == 2 goto shop
if %invslt5% == 0 set invslt5=2
if %invslt5% == 2 goto shop
if %invslt6% == 0 set invslt6=2
if %invslt6% == 2 goto shop
if %invslt7% == 0 set invslt7=2
if %invslt7% == 2 goto shop
if %invslt8% == 0 set invslt8=2
if %invslt8% == 2 goto shop
if %invslt9% == 0 set invslt9=2
if %invslt9% == 2 goto shop
if %invslt10% == 0 set invslt10=2
if %invslt10% == 2 goto shop
goto invfull

:invinsert3
if %invslt1% == 0 set invslt1=3
if %invslt1% == 3 goto shop
if %invslt2% == 0 set invslt2=3
if %invslt2% == 3 goto shop
if %invslt3% == 0 set invslt3=3
if %invslt3% == 3 goto shop
if %invslt4% == 0 set invslt4=3
if %invslt4% == 3 goto shop
if %invslt5% == 0 set invslt5=3
if %invslt5% == 3 goto shop
if %invslt6% == 0 set invslt6=3
if %invslt6% == 3 goto shop
if %invslt7% == 0 set invslt7=3
if %invslt7% == 3 goto shop
if %invslt8% == 0 set invslt8=3
if %invslt8% == 3 goto shop
if %invslt9% == 0 set invslt9=3
if %invslt9% == 3 goto shop
if %invslt10% == 0 set invslt10=3
if %invslt10% == 3 goto shop
goto invfull

:invinsert4
if %invslt1% == 0 set invslt1=4
if %invslt1% == 4 goto shop
if %invslt2% == 0 set invslt2=4
if %invslt2% == 4 goto shop
if %invslt3% == 0 set invslt3=4
if %invslt3% == 4 goto shop
if %invslt4% == 0 set invslt4=4
if %invslt4% == 4 goto shop
if %invslt5% == 0 set invslt5=4
if %invslt5% == 4 goto shop
if %invslt6% == 0 set invslt6=4
if %invslt6% == 4 goto shop
if %invslt7% == 0 set invslt7=4
if %invslt7% == 4 goto shop
if %invslt8% == 0 set invslt8=4
if %invslt8% == 4 goto shop
if %invslt9% == 0 set invslt9=4
if %invslt9% == 4 goto shop
if %invslt10% == 0 set invslt10=4
if %invslt10% == 4 goto shop
goto invfull

:invinsert5
if %invslt1% == 0 set invslt1=5
if %invslt1% == 5 goto shop
if %invslt2% == 0 set invslt2=5
if %invslt2% == 5 goto shop
if %invslt3% == 0 set invslt3=5
if %invslt3% == 5 goto shop
if %invslt4% == 0 set invslt4=5
if %invslt4% == 5 goto shop
if %invslt5% == 0 set invslt5=5
if %invslt5% == 5 goto shop
if %invslt6% == 0 set invslt6=5
if %invslt6% == 5 goto shop
if %invslt7% == 0 set invslt7=5
if %invslt7% == 5 goto shop
if %invslt8% == 0 set invslt8=5
if %invslt8% == 5 goto shop
if %invslt9% == 0 set invslt9=5
if %invslt9% == 5 goto shop
if %invslt10% == 0 set invslt10=5
if %invslt10% == 5 goto shop
goto invfull

:invinsert6
if %invslt1% == 0 set invslt1=6
if %invslt1% == 6 goto shop
if %invslt2% == 0 set invslt2=6
if %invslt2% == 6 goto shop
if %invslt3% == 0 set invslt3=6
if %invslt3% == 6 goto shop
if %invslt4% == 0 set invslt4=6
if %invslt4% == 6 goto shop
if %invslt5% == 0 set invslt5=6
if %invslt5% == 6 goto shop
if %invslt6% == 0 set invslt6=6
if %invslt6% == 6 goto shop
if %invslt7% == 0 set invslt7=6
if %invslt7% == 6 goto shop
if %invslt8% == 0 set invslt8=6
if %invslt8% == 6 goto shop
if %invslt9% == 0 set invslt9=6
if %invslt9% == 6 goto shop
if %invslt10% == 0 set invslt10=6
if %invslt10% == 6 goto shop
goto invfull

:invinsert7
if %invslt1% == 0 set invslt1=7
if %invslt1% == 7 goto shop
if %invslt2% == 0 set invslt2=7
if %invslt2% == 7 goto shop
if %invslt3% == 0 set invslt3=7
if %invslt3% == 7 goto shop
if %invslt4% == 0 set invslt4=7
if %invslt4% == 7 goto shop
if %invslt5% == 0 set invslt5=7
if %invslt5% == 7 goto shop
if %invslt6% == 0 set invslt6=7
if %invslt6% == 7 goto shop
if %invslt7% == 0 set invslt7=7
if %invslt7% == 7 goto shop
if %invslt8% == 0 set invslt8=7
if %invslt8% == 7 goto shop
if %invslt9% == 0 set invslt9=7
if %invslt9% == 7 goto shop
if %invslt10% == 0 set invslt10=7
if %invslt10% == 7 goto shop
goto invfull

:invinsert8
if %invslt1% == 0 set invslt1=8
if %invslt1% == 8 goto shop
if %invslt2% == 0 set invslt2=8
if %invslt2% == 8 goto shop
if %invslt3% == 0 set invslt3=8
if %invslt3% == 8 goto shop
if %invslt4% == 0 set invslt4=8
if %invslt4% == 8 goto shop
if %invslt5% == 0 set invslt5=8
if %invslt5% == 8 goto shop
if %invslt6% == 0 set invslt6=8
if %invslt6% == 8 goto shop
if %invslt7% == 0 set invslt7=8
if %invslt7% == 8 goto shop
if %invslt8% == 0 set invslt8=8
if %invslt8% == 8 goto shop
if %invslt9% == 0 set invslt9=8
if %invslt9% == 8 goto shop
if %invslt10% == 0 set invslt10=8
if %invslt10% == 8 goto shop
goto invfull

:armour
cls
echo Celular Battle - Shop - Protecao
echo ----------------------------------------------
echo %name%
echo Dinheiro:$%money%
echo.
echo ----------------------------------------------
echo 1)Armadura de Couro     $50      Lvl:1
echo 2)Armadura de Ferro       $100     Lvl:3
echo 3)Armadura de Steel      $180     Lvl:7
echo 4)Armadura Titanium  $275     Lvl:12
echo 5)Botas Deus   $360     Lvl:15
echo 6)Armadura Deus    $500     Lvl:20
echo 7)Voltar
echo.
set ainput=8
set /p ainput=Enter:

if %ainput% == 7 goto shop
if %money% LSS 50 goto nofunds
if %ainput% == 1 set /a money= %money% - 50
if %ainput% == 1 goto invinserta1
if %level% LSS 3 goto nolev
if %money% LSS 100 goto nofunds
if %ainput% == 2 set /a money= %money% - 100
if %ainput% == 2 goto invinserta2
if %level% LSS 7 goto nolev
if %money% LSS 180 goto nofunds
if %ainput% == 3 set /a money= %money% - 180
if %ainput% == 3 goto invinserta3
if %level% LSS 12 goto nolev
if %money% LSS 275 goto nofunds
if %ainput% == 4 set /a money= %money% - 275
if %ainput% == 4 goto invinserta4
if %level% LSS 15 goto nolev
if %money% LSS 360 goto nofunds
if %ainput% == 5 set /a money= %money% - 360
if %ainput% == 5 goto invinserta5
if %level% LSS 20 goto nolev
if %money% LSS 500 goto nofunds
if %ainput% == 6 set /a money= %money% - 500
if %ainput% == 6 goto invinserta6
goto armour

:invinserta1
if %invslt1% == 0 set invslt1=a1
if %invslt1% == a1 goto shop
if %invslt2% == 0 set invslt2=a1
if %invslt2% == a1 goto shop
if %invslt3% == 0 set invslt3=a1
if %invslt3% == a1 goto shop
if %invslt4% == 0 set invslt4=a1
if %invslt4% == a1 goto shop
if %invslt5% == 0 set invslt5=a1
if %invslt5% == a1 goto shop
if %invslt6% == 0 set invslt6=a1
if %invslt6% == a1 goto shop
if %invslt7% == 0 set invslt7=a1
if %invslt7% == a1 goto shop
if %invslt8% == 0 set invslt8=a1
if %invslt8% == a1 goto shop
if %invslt9% == 0 set invslt9=a1
if %invslt9% == a1 goto shop
if %invslt10% == 0 set invslt10=a1
if %invslt10% == a1 goto shop
goto invfull

:invinserta2
if %invslt1% == 0 set invslt1=a2
if %invslt1% == a2 goto shop
if %invslt2% == 0 set invslt2=a2
if %invslt2% == a2 goto shop
if %invslt3% == 0 set invslt3=a2
if %invslt3% == a2 goto shop
if %invslt4% == 0 set invslt4=a2
if %invslt4% == a2 goto shop
if %invslt5% == 0 set invslt5=a2
if %invslt5% == a2 goto shop
if %invslt6% == 0 set invslt6=a2
if %invslt6% == a2 goto shop
if %invslt7% == 0 set invslt7=a2
if %invslt7% == a2 goto shop
if %invslt8% == 0 set invslt8=a2
if %invslt8% == a2 goto shop
if %invslt9% == 0 set invslt9=a2
if %invslt9% == a2 goto shop
if %invslt10% == 0 set invslt10=a2
if %invslt10% == a2 goto shop
goto invfull

:invinserta3
if %invslt1% == 0 set invslt1=a3
if %invslt1% == a3 goto shop
if %invslt2% == 0 set invslt2=a3
if %invslt2% == a3 goto shop
if %invslt3% == 0 set invslt3=a3
if %invslt3% == a3 goto shop
if %invslt4% == 0 set invslt4=a3
if %invslt4% == a3 goto shop
if %invslt5% == 0 set invslt5=a3
if %invslt5% == a3 goto shop
if %invslt6% == 0 set invslt6=a3
if %invslt6% == a3 goto shop
if %invslt7% == 0 set invslt7=a3
if %invslt7% == a3 goto shop
if %invslt8% == 0 set invslt8=a3
if %invslt8% == a3 goto shop
if %invslt9% == 0 set invslt9=a3
if %invslt9% == a3 goto shop
if %invslt10% == 0 set invslt10=a3
if %invslt10% == a3 goto shop
goto invfull

:invinserta4
if %invslt1% == 0 set invslt1=a4
if %invslt1% == a4 goto shop
if %invslt2% == 0 set invslt2=a4
if %invslt2% == a4 goto shop
if %invslt3% == 0 set invslt3=a4
if %invslt3% == a4 goto shop
if %invslt4% == 0 set invslt4=a4
if %invslt4% == a4 goto shop
if %invslt5% == 0 set invslt5=a4
if %invslt5% == a4 goto shop
if %invslt6% == 0 set invslt6=a4
if %invslt6% == a4 goto shop
if %invslt7% == 0 set invslt7=a4
if %invslt7% == a4 goto shop
if %invslt8% == 0 set invslt8=a4
if %invslt8% == a4 goto shop
if %invslt9% == 0 set invslt9=a4
if %invslt9% == a4 goto shop
if %invslt10% == 0 set invslt10=a4
if %invslt10% == a4 goto shop
goto invfull

:invinserta5
if %invslt1% == 0 set invslt1=a5
if %invslt1% == a5 goto shop
if %invslt2% == 0 set invslt2=a5
if %invslt2% == a5 goto shop
if %invslt3% == 0 set invslt3=a5
if %invslt3% == a5 goto shop
if %invslt4% == 0 set invslt4=a5
if %invslt4% == a5 goto shop
if %invslt5% == 0 set invslt5=a5
if %invslt5% == a5 goto shop
if %invslt6% == 0 set invslt6=a5
if %invslt6% == a5 goto shop
if %invslt7% == 0 set invslt7=a5
if %invslt7% == a5 goto shop
if %invslt8% == 0 set invslt8=a5
if %invslt8% == a5 goto shop
if %invslt9% == 0 set invslt9=a5
if %invslt9% == a5 goto shop
if %invslt10% == 0 set invslt10=a5
if %invslt10% == a5 goto shop
goto invfull

:invinserta6
if %invslt1% == 0 set invslt1=a6
if %invslt1% == a6 goto shop
if %invslt2% == 0 set invslt2=a6
if %invslt2% == a6 goto shop
if %invslt3% == 0 set invslt3=a6
if %invslt3% == a6 goto shop
if %invslt4% == 0 set invslt4=a6
if %invslt4% == a6 goto shop
if %invslt5% == 0 set invslt5=a6
if %invslt5% == a6 goto shop
if %invslt6% == 0 set invslt6=a6
if %invslt6% == a6 goto shop
if %invslt7% == 0 set invslt7=a6
if %invslt7% == a6 goto shop
if %invslt8% == 0 set invslt8=a6
if %invslt8% == a6 goto shop
if %invslt9% == 0 set invslt9=a6
if %invslt9% == a6 goto shop
if %invslt10% == 0 set invslt10=a6
if %invslt10% == a6 goto shop
goto invfull

:invfull
cls
echo Seu Inventario Esta Cheio!
echo.
echo Volte quanto voce tiver
echo mais espaco.
pause >nul
goto shop

:potions
cls
echo Celular Battle - Shop - Itens
echo ----------------------------------------------
echo %name%
echo Money:$%money%
echo.
echo ----------------------------------------------
echo 1)Pocao de Cura (s)  $25
echo 2)Pocao de Cura (m)  $50
echo 3)Pocao de Cura (l)  $100
echo 4)Pocao de Nivel      $2500
echo 5)Voltar
echo.
set pinput=6
set /p pinput=Enter:

if %pinput% == 5 goto shop
if %money% LSS 25 goto nofunds
if %pinput% == 1 set /a money= %money% - 25
if %pinput% == 1 set /a hpots= %hpots% + 1
if %pinput% == 1 goto shop
if %money% LSS 50 goto nofunds
if %pinput% == 2 set /a money= %money% - 50
if %pinput% == 2 set /a hpotm= %hpotm% + 1
if %pinput% == 2 goto shop
if %money% LSS 100 goto nofunds
if %pinput% == 3 set /a money= %money% - 100
if %pinput% == 3 set /a hpotl= %hpotl% + 1
if %pinput% == 3 goto shop
if %money% LSS 2500 goto nofunds
if %pinput% == 4 set /a money= %money% - 2500
if %pinput% == 4 goto levelup
goto potions

:nofunds
cls
echo Voce nao tem dinheiro para isso.
pause >nul
goto shop

:nolev
cls
echo Voce nao esta pronto para isso.
pause >nul
goto shop

:save
cls
echo Escolha um slot:
echo.
echo 1) Slot1:%slt1%
echo 2) Slot2:%slt2%
echo 3) Slot3:%slt3%
echo 4) Slot4:%slt4%
echo 5) Slot5:%slt5%
echo 6) Slot6:%slt6%
echo 7) Slot7:%slt7%
echo 8) Slot8:%slt8%
echo 9) Slot7:%slt7%
echo 10) Slot8:%slt8%
echo 11) Voltar
echo.
set sinput=12
set /p sinput=Enter:

if %sinput% == 11 goto main
if %sinput% == 1 if %slt1% == empty goto save1
if %sinput% == 1 if not %slt1% == empty goto overwrite1
if %sinput% == 2 if %slt2% == empty goto save2
if %sinput% == 2 if not %slt2% == empty goto overwrite2
if %sinput% == 3 if %slt3% == empty goto save3
if %sinput% == 3 if not %slt3% == empty goto overwrite3
if %sinput% == 4 if %slt4% == empty goto save4
if %sinput% == 4 if not %slt4% == empty goto overwrite4
if %sinput% == 5 if %slt5% == empty goto save5
if %sinput% == 5 if not %slt5% == empty goto overwrite5
if %sinput% == 6 if %slt6% == empty goto save6
if %sinput% == 6 if not %slt6% == empty goto overwrite6
if %sinput% == 7 if %slt7% == empty goto save7
if %sinput% == 7 if not %slt7% == empty goto overwrite7
if %sinput% == 8 if %slt8% == empty goto save8
if %sinput% == 8 if not %slt8% == empty goto overwrite8
if %sinput% == 9 if %slt9% == empty goto save9
if %sinput% == 9 if not %slt9% == empty goto overwrite9
if %sinput% == 10 if %slt10% == empty goto save10
if %sinput% == 10 if not %slt10% == empty goto overwrite10
goto save

:save1
set save=sv1
(
echo %name%
echo %pass%
echo %ifpass%
echo %save%
echo %level%
echo %health%
echo %money%
echo %xp%
echo %xpmax%
echo %wep%
echo %wepdis%
echo %arm%
echo %armdis%
echo %str%
echo %killnum%
echo %deaths%
echo %hpots%
echo %hpotm%
echo %hpotl%
echo %invslt1%
echo %invslt2%
echo %invslt3%
echo %invslt4%
echo %invslt5%
echo %invslt6%
echo %invslt7%
echo %invslt8%
echo %invslt9%
echo %invslt10%
echo %arenpoints%
echo %tournlev%
) > save1.sav
set slt1=%name%
cls
echo Game Salvo!
echo.
pause >nul
goto main

:save2
set save=sv2
(
echo %name%
echo %pass%
echo %ifpass%
echo %save%
echo %level%
echo %health%
echo %money%
echo %xp%
echo %xpmax%
echo %wep%
echo %wepdis%
echo %arm%
echo %armdis%
echo %str%
echo %killnum%
echo %deaths%
echo %hpots%
echo %hpotm%
echo %hpotl%
echo %invslt1%
echo %invslt2%
echo %invslt3%
echo %invslt4%
echo %invslt5%
echo %invslt6%
echo %invslt7%
echo %invslt8%
echo %invslt9%
echo %invslt10%
echo %arenpoints%
echo %tournlev%
) > save2.sav
set slt2=%name%
cls
echo Game Salvo!
echo.
pause >nul
goto main

:save3
set save=sv3
(
echo %name%
echo %pass%
echo %ifpass%
echo %save%
echo %level%
echo %health%
echo %money%
echo %xp%
echo %xpmax%
echo %wep%
echo %wepdis%
echo %arm%
echo %armdis%
echo %str%
echo %killnum%
echo %deaths%
echo %hpots%
echo %hpotm%
echo %hpotl%
echo %invslt1%
echo %invslt2%
echo %invslt3%
echo %invslt4%
echo %invslt5%
echo %invslt6%
echo %invslt7%
echo %invslt8%
echo %invslt9%
echo %invslt10%
echo %arenpoints%
echo %tournlev%
) > save3.sav
set slt3=%name%
cls
echo Game Salvo!
echo.
pause >nul
goto main

:save4
set save=sv4
(
echo %name%
echo %pass%
echo %ifpass%
echo %save%
echo %level%
echo %health%
echo %money%
echo %xp%
echo %xpmax%
echo %wep%
echo %wepdis%
echo %arm%
echo %armdis%
echo %str%
echo %killnum%
echo %deaths%
echo %hpots%
echo %hpotm%
echo %hpotl%
echo %invslt1%
echo %invslt2%
echo %invslt3%
echo %invslt4%
echo %invslt5%
echo %invslt6%
echo %invslt7%
echo %invslt8%
echo %invslt9%
echo %invslt10%
echo %arenpoints%
echo %tournlev%
) > save4.sav
set slt4=%name%
cls
echo Game Salvo!
echo.
pause >nul
goto main

:save5
set save=sv5
(
echo %name%
echo %pass%
echo %ifpass%
echo %save%
echo %level%
echo %health%
echo %money%
echo %xp%
echo %xpmax%
echo %wep%
echo %wepdis%
echo %arm%
echo %armdis%
echo %str%
echo %killnum%
echo %deaths%
echo %hpots%
echo %hpotm%
echo %hpotl%
echo %invslt1%
echo %invslt2%
echo %invslt3%
echo %invslt4%
echo %invslt5%
echo %invslt6%
echo %invslt7%
echo %invslt8%
echo %invslt9%
echo %invslt10%
echo %arenpoints%
echo %tournlev%
) > save5.sav
set slt5=%name%
cls
echo Game Salvo!
echo.
pause >nul
goto main

:save6
set save=sv6
(
echo %name%
echo %pass%
echo %ifpass%
echo %save%
echo %level%
echo %health%
echo %money%
echo %xp%
echo %xpmax%
echo %wep%
echo %wepdis%
echo %arm%
echo %armdis%
echo %str%
echo %killnum%
echo %deaths%
echo %hpots%
echo %hpotm%
echo %hpotl%
echo %invslt1%
echo %invslt2%
echo %invslt3%
echo %invslt4%
echo %invslt5%
echo %invslt6%
echo %invslt7%
echo %invslt8%
echo %invslt9%
echo %invslt10%
echo %arenpoints%
echo %tournlev%
) > save6.sav
set slt6=%name%
cls
echo Game Salvo!
echo.
pause >nul
goto main

:save7
set save=sv7
(
echo %name%
echo %pass%
echo %ifpass%
echo %save%
echo %level%
echo %health%
echo %money%
echo %xp%
echo %xpmax%
echo %wep%
echo %wepdis%
echo %arm%
echo %armdis%
echo %str%
echo %killnum%
echo %deaths%
echo %hpots%
echo %hpotm%
echo %hpotl%
echo %invslt1%
echo %invslt2%
echo %invslt3%
echo %invslt4%
echo %invslt5%
echo %invslt6%
echo %invslt7%
echo %invslt8%
echo %invslt9%
echo %invslt10%
echo %arenpoints%
echo %tournlev%
) > save7.sav
set slt7=%name%
cls
echo Game Salvo!
echo.
pause >nul
goto main

:save8
set save=sv8
(
echo %name%
echo %pass%
echo %ifpass%
echo %save%
echo %level%
echo %health%
echo %money%
echo %xp%
echo %xpmax%
echo %wep%
echo %wepdis%
echo %arm%
echo %armdis%
echo %str%
echo %killnum%
echo %deaths%
echo %hpots%
echo %hpotm%
echo %hpotl%
echo %invslt1%
echo %invslt2%
echo %invslt3%
echo %invslt4%
echo %invslt5%
echo %invslt6%
echo %invslt7%
echo %invslt8%
echo %invslt9%
echo %invslt10%
echo %arenpoints%
echo %tournlev%
) > save8.sav
set slt8=%name%
cls
echo Game Salvo!
echo.
pause >nul
goto main

:save9
set save=sv9
(
echo %name%
echo %pass%
echo %ifpass%
echo %save%
echo %level%
echo %health%
echo %money%
echo %xp%
echo %xpmax%
echo %wep%
echo %wepdis%
echo %arm%
echo %armdis%
echo %str%
echo %killnum%
echo %deaths%
echo %hpots%
echo %hpotm%
echo %hpotl%
echo %invslt1%
echo %invslt2%
echo %invslt3%
echo %invslt4%
echo %invslt5%
echo %invslt6%
echo %invslt7%
echo %invslt8%
echo %invslt9%
echo %invslt10%
echo %arenpoints%
echo %tournlev%
) > save9.sav
set slt9=%name%
cls
echo Game Salvo!
echo.
pause >nul
goto main

:save10
set save=sv10
(
echo %name%
echo %pass%
echo %ifpass%
echo %save%
echo %level%
echo %health%
echo %money%
echo %xp%
echo %xpmax%
echo %wep%
echo %wepdis%
echo %arm%
echo %armdis%
echo %str%
echo %killnum%
echo %deaths%
echo %hpots%
echo %hpotm%
echo %hpotl%
echo %invslt1%
echo %invslt2%
echo %invslt3%
echo %invslt4%
echo %invslt5%
echo %invslt6%
echo %invslt7%
echo %invslt8%
echo %invslt9%
echo %invslt10%
echo %arenpoints%
echo %tournlev%
) > save10.sav
set slt10=%name%
cls
echo Game Salvo!
echo.
pause >nul
goto main

:overwrite1
cls
echo Este slot ja esta em uso.
echo Voce quer salvar mesmo assim?
echo (S/N)
echo.
set /p oinput1=Enter:

if %oinput1% == s goto save1
if %oinput1% == n goto save
goto overwrite1

:overwrite2
cls
echo Este slot ja esta em uso.
echo Voce quer salvar mesmo assim?
echo (S/N)
echo.
set /p oinput2=Enter:

if %oinput2% == s goto save2
if %oinput2% == n goto save
goto overwrite2

:overwrite3
cls
echo Este slot ja esta em uso.
echo Voce quer salvar mesmo assim?
echo (S/N)
echo.
set /p oinput3=Enter:

if %oinput3% == s goto save3
if %oinput3% == n goto save
goto overwrite3

:overwrite4
cls
echo Este slot ja esta em uso.
echo Voce quer salvar mesmo assim?
echo (S/N)
echo.
set /p oinput4=Enter:

if %oinput4% == s goto save4
if %oinput4% == n goto save
goto overwrite4

:overwrite5
cls
echo Este slot ja esta em uso.
echo Voce quer salvar mesmo assim?
echo (S/N)
echo.
set /p oinput5=Enter:

if %oinput5% == s goto save5
if %oinput5% == n goto save
goto overwrite5

:overwrite6
cls
echo Este slot ja esta em uso.
echo Voce quer salvar mesmo assim?
echo (S/N)
echo.
set /p oinput6=Enter:

if %oinput6% == s goto save6
if %oinput6% == n goto save
goto overwrite6

:overwrite7
cls
echo Este slot ja esta em uso.
echo Voce quer salvar mesmo assim?
echo (S/N)
echo.
set /p oinput7=Enter:

if %oinput7% == s goto save7
if %oinput7% == n goto save
goto overwrite7

:overwrite8
cls
echo Este slot ja esta em uso.
echo Voce quer salvar mesmo assim?
echo (S/N)
echo.
set /p oinput8=Enter:

if %oinput8% == s goto save8
if %oinput8% == n goto save
goto overwrite8

:overwrite9
cls
echo Este slot ja esta em uso.
echo Voce quer salvar mesmo assim?
echo (S/N)
echo.
set /p oinput9=Enter:

if %oinput9% == s goto save9
if %oinput9% == n goto save
goto overwrite9

:overwrite10
cls
echo Este slot ja esta em uso.
echo Voce quer salvar mesmo assim?
echo (S/N)
echo.
set /p oinput10=Enter:

if %oinput10% == s goto save10
if %oinput10% == n goto save
goto overwrite10

:load
if not exist savemain.sav goto loaderror
< savemain.sav (
set /p slt1=
set /p slt2=
set /p slt3=
set /p slt4=
set /p slt5=
set /p slt6=
set /p slt7=
set /p slt8=
set /p slt9=
set /p slt10=
)
cls
echo Escolha o slot:
echo.
echo 1) Slot1:%slt1%
echo 2) Slot2:%slt2%
echo 3) Slot3:%slt3%
echo 4) Slot4:%slt4%
echo 5) Slot5:%slt5%
echo 6) Slot6:%slt6%
echo 7) Slot7:%slt7%
echo 8) Slot8:%slt8%
echo 9) Slot9:%slt9%
echo 10) Slot10:%slt10%
echo 11) Voltar
echo.
set linput=12
set /p linput=Enter:

if %linput% == 11 goto menu
if %linput% == 1 if not %slt1% == empty goto load1
if %linput% == 2 if not %slt2% == empty goto load2
if %linput% == 3 if not %slt3% == empty goto load3
if %linput% == 4 if not %slt4% == empty goto load4
if %linput% == 5 if not %slt5% == empty goto load5
if %linput% == 6 if not %slt6% == empty goto load6
if %linput% == 7 if not %slt7% == empty goto load7
if %linput% == 8 if not %slt8% == empty goto load8
if %linput% == 9 if not %slt9% == empty goto load9
if %linput% == 10 if not %slt10% == empty goto load10
goto load

:load1
if not exist save1.sav goto loaderror1
< save1.sav (
set /p name=
set /p pass=
set /p ifpass=
set /p save=
set /p level=
set /p health=
set /p money=
set /p xp=
set /p xpmax=
set /p wep=
set /p wepdis=
set /p arm=
set /p armdis=
set /p str=
set /p killnum=
set /p deaths=
set /p hpots=
set /p hpotm=
set /p hpotl=
set /p invslt1=
set /p invslt2=
set /p invslt3=
set /p invslt4=
set /p invslt5=
set /p invslt6=
set /p invslt7=
set /p invslt8=
set /p invslt9=
set /p invslt10=
set /p arenpoints=
set /p tournlev=
)
if not %name% == %slt1% goto loaderror1
if %ifpass% == 2 goto passreq
cls
echo Game Carregado.
echo.
pause >nul
goto main

:load2
if not exist save2.sav goto loaderror2
< save2.sav (
set /p name=
set /p pass=
set /p ifpass=
set /p save=
set /p level=
set /p health=
set /p money=
set /p xp=
set /p xpmax=
set /p wep=
set /p wepdis=
set /p arm=
set /p armdis=
set /p str=
set /p killnum=
set /p deaths=
set /p hpots=
set /p hpotm=
set /p hpotl=
set /p invslt1=
set /p invslt2=
set /p invslt3=
set /p invslt4=
set /p invslt5=
set /p invslt6=
set /p invslt7=
set /p invslt8=
set /p invslt9=
set /p invslt10=
set /p arenpoints=
set /p tournlev=
)
if not %name% == %slt2% goto loaderror2
if %ifpass% == 2 goto passreq
cls
echo Game Carregado.
echo.
pause >nul
goto main

:load3
if not exist save3.sav goto loaderror3
< save3.sav (
set /p name=
set /p pass=
set /p ifpass=
set /p save=
set /p level=
set /p health=
set /p money=
set /p xp=
set /p xpmax=
set /p wep=
set /p wepdis=
set /p arm=
set /p armdis=
set /p str=
set /p killnum=
set /p deaths=
set /p hpots=
set /p hpotm=
set /p hpotl=
set /p invslt1=
set /p invslt2=
set /p invslt3=
set /p invslt4=
set /p invslt5=
set /p invslt6=
set /p invslt7=
set /p invslt8=
set /p invslt9=
set /p invslt10=
set /p arenpoints=
set /p tournlev=
)
if not %name% == %slt3% goto loaderror3
if %ifpass% == 2 goto passreq
cls
echo Game Carregado.
echo.
pause >nul
goto main

:load4
if not exist save4.sav goto loaderror4
< save4.sav (
set /p name=
set /p pass=
set /p ifpass=
set /p save=
set /p level=
set /p health=
set /p money=
set /p xp=
set /p xpmax=
set /p wep=
set /p wepdis=
set /p arm=
set /p armdis=
set /p str=
set /p killnum=
set /p deaths=
set /p hpots=
set /p hpotm=
set /p hpotl=
set /p invslt1=
set /p invslt2=
set /p invslt3=
set /p invslt4=
set /p invslt5=
set /p invslt6=
set /p invslt7=
set /p invslt8=
set /p invslt9=
set /p invslt10=
set /p arenpoints=
set /p tournlev=
)
if not %name% == %slt4% goto loaderror4
if %ifpass% == 2 goto passreq
cls
echo Game Carregado.
echo.
pause >nul
goto main

:load5
if not exist save5.sav goto loaderror5
< save5.sav (
set /p name=
set /p pass=
set /p ifpass=
set /p save=
set /p level=
set /p health=
set /p money=
set /p xp=
set /p xpmax=
set /p wep=
set /p wepdis=
set /p arm=
set /p armdis=
set /p str=
set /p killnum=
set /p deaths=
set /p hpots=
set /p hpotm=
set /p hpotl=
set /p invslt1=
set /p invslt2=
set /p invslt3=
set /p invslt4=
set /p invslt5=
set /p invslt6=
set /p invslt7=
set /p invslt8=
set /p invslt9=
set /p invslt10=
set /p arenpoints=
set /p tournlev=
)
if not %name% == %slt5% goto loaderror5
if %ifpass% == 2 goto passreq
cls
echo Game Carregado.
echo.
pause >nul
goto main

:load6
if not exist save6.sav goto loaderror6
< save6.sav (
set /p name=
set /p pass=
set /p ifpass=
set /p save=
set /p level=
set /p health=
set /p money=
set /p xp=
set /p xpmax=
set /p wep=
set /p wepdis=
set /p arm=
set /p armdis=
set /p str=
set /p killnum=
set /p deaths=
set /p hpots=
set /p hpotm=
set /p hpotl=
set /p invslt1=
set /p invslt2=
set /p invslt3=
set /p invslt4=
set /p invslt5=
set /p invslt6=
set /p invslt7=
set /p invslt8=
set /p invslt9=
set /p invslt10=
set /p arenpoints=
set /p tournlev=
)
if not %name% == %slt6% goto loaderror6
if %ifpass% == 2 goto passreq
cls
echo Game Carregado.
echo.
pause >nul
goto main

:load7
if not exist save7.sav goto loaderror7
< save7.sav (
set /p name=
set /p pass=
set /p ifpass=
set /p save=
set /p level=
set /p health=
set /p money=
set /p xp=
set /p xpmax=
set /p wep=
set /p wepdis=
set /p arm=
set /p armdis=
set /p str=
set /p killnum=
set /p deaths=
set /p hpots=
set /p hpotm=
set /p hpotl=
set /p invslt1=
set /p invslt2=
set /p invslt3=
set /p invslt4=
set /p invslt5=
set /p invslt6=
set /p invslt7=
set /p invslt8=
set /p invslt9=
set /p invslt10=
set /p arenpoints=
set /p tournlev=
)
if not %name% == %slt7% goto loaderror7
if %ifpass% == 2 goto passreq
cls
echo Game Carregado.
echo.
pause >nul
goto main

:load8
if not exist save8.sav goto loaderror8
< save8.sav (
set /p name=
set /p pass=
set /p ifpass=
set /p save=
set /p level=
set /p health=
set /p money=
set /p xp=
set /p xpmax=
set /p wep=
set /p wepdis=
set /p arm=
set /p armdis=
set /p str=
set /p killnum=
set /p deaths=
set /p hpots=
set /p hpotm=
set /p hpotl=
set /p invslt1=
set /p invslt2=
set /p invslt3=
set /p invslt4=
set /p invslt5=
set /p invslt6=
set /p invslt7=
set /p invslt8=
set /p invslt9=
set /p invslt10=
set /p arenpoints=
set /p tournlev=
)
if not %name% == %slt8% goto loaderror8
if %ifpass% == 2 goto passreq
cls
echo Game Carregado.
echo.
pause >nul
goto main

:load9
if not exist save9.sav goto loaderror9
< save9.sav (
set /p name=
set /p pass=
set /p ifpass=
set /p save=
set /p level=
set /p health=
set /p money=
set /p xp=
set /p xpmax=
set /p wep=
set /p wepdis=
set /p arm=
set /p armdis=
set /p str=
set /p killnum=
set /p deaths=
set /p hpots=
set /p hpotm=
set /p hpotl=
set /p invslt1=
set /p invslt2=
set /p invslt3=
set /p invslt4=
set /p invslt5=
set /p invslt6=
set /p invslt7=
set /p invslt8=
set /p invslt9=
set /p invslt10=
set /p arenpoints=
set /p tournlev=
)
if not %name% == %slt9% goto loaderror9
if %ifpass% == 2 goto passreq
cls
echo Game Carregado.
echo.
pause >nul
goto main

:load10
if not exist save10.sav goto loaderror10
< save10.sav (
set /p name=
set /p pass=
set /p ifpass=
set /p save=
set /p level=
set /p health=
set /p money=
set /p xp=
set /p xpmax=
set /p wep=
set /p wepdis=
set /p arm=
set /p armdis=
set /p str=
set /p killnum=
set /p deaths=
set /p hpots=
set /p hpotm=
set /p hpotl=
set /p invslt1=
set /p invslt2=
set /p invslt3=
set /p invslt4=
set /p invslt5=
set /p invslt6=
set /p invslt7=
set /p invslt8=
set /p invslt9=
set /p invslt10=
set /p arenpoints=
set /p tournlev=
)
if not %name% == %slt10% goto loaderror10
if %ifpass% == 2 goto passreq
cls
echo Game Carregado.
echo.
pause >nul
goto main

:loaderror
set slt1=empty
set slt2=empty
set slt3=empty
set slt4=empty
set slt5=empty
set slt6=empty
set slt7=empty
set slt8=empty
set slt9=empty
set slt10=empty
color 0c
cls
echo ERRO!
echo.
echo Nao achei nenhum arquivo de load.
echo.
echo Aperte qualquer tecla.
pause >nul
color 0e
goto menu

:loaderror1
set slt1=empty
color 0c
cls
echo ERRO!
echo.
echo Esse arquivo foi deletado ou renomeado.
echo Tente denovo.
pause >nul
(
echo %slt1%
echo %slt2%
echo %slt3%
echo %slt4%
echo %slt5%
echo %slt6%
echo %slt7%
echo %slt8%
echo %slt9%
echo %slt10%
) > savemain.sav
color 0e
goto load

:loaderror2
set slt2=empty
color 0c
cls
echo ERRO!
echo.
echo Esse arquivo foi deletado ou renomeado.
echo Tente denovo.
pause >nul
(
echo %slt1%
echo %slt2%
echo %slt3%
echo %slt4%
echo %slt5%
echo %slt6%
echo %slt7%
echo %slt8%
echo %slt9%
echo %slt10%
) > savemain.sav
color 0e
goto load

:loaderror3
set slt3=empty
color 0c
cls
echo ERRO!
echo.
echo Esse arquivo foi deletado ou renomeado.
echo Tente denovo.
pause >nul
(
echo %slt1%
echo %slt2%
echo %slt3%
echo %slt4%
echo %slt5%
echo %slt6%
echo %slt7%
echo %slt8%
echo %slt9%
echo %slt10%
) > savemain.sav
color 0e
goto load

:loaderror4
set slt4=empty
color 0c
cls
echo ERRO!
echo.
echo Esse arquivo foi deletado ou renomeado.
echo Tente denovo.
pause >nul
(
echo %slt1%
echo %slt2%
echo %slt3%
echo %slt4%
echo %slt5%
echo %slt6%
echo %slt7%
echo %slt8%
echo %slt9%
echo %slt10%
) > savemain.sav
color 0e
goto load

:loaderror5
set slt5=empty
color 0c
cls
echo ERRO!
echo.
echo Esse arquivo foi deletado ou renomeado.
echo Tente denovo.
pause >nul
(
echo %slt1%
echo %slt2%
echo %slt3%
echo %slt4%
echo %slt5%
echo %slt6%
echo %slt7%
echo %slt8%
echo %slt9%
echo %slt10%
) > savemain.sav
color 0e
goto load

:loaderror6
set slt6=empty
color 0c
cls
echo ERRO!
echo.
echo Esse arquivo foi deletado ou renomeado.
echo Tente denovo.
pause >nul
(
echo %slt1%
echo %slt2%
echo %slt3%
echo %slt4%
echo %slt5%
echo %slt6%
echo %slt7%
echo %slt8%
echo %slt9%
echo %slt10%
) > savemain.sav
color 0e
goto load

:loaderror7
set slt7=empty
color 0c
cls
echo ERRO!
echo.
echo Esse arquivo foi deletado ou renomeado.
echo Tente denovo.
pause >nul
(
echo %slt1%
echo %slt2%
echo %slt3%
echo %slt4%
echo %slt5%
echo %slt6%
echo %slt7%
echo %slt8%
echo %slt9%
echo %slt10%
) > savemain.sav
color 0e
goto load

:loaderror8
set slt8=empty
color 0c
cls
echo ERRO!
echo.
echo Esse arquivo foi deletado ou renomeado.
echo Tente denovo.
pause >nul
(
echo %slt1%
echo %slt2%
echo %slt3%
echo %slt4%
echo %slt5%
echo %slt6%
echo %slt7%
echo %slt8%
echo %slt9%
echo %slt10%
) > savemain.sav
color 0e
goto load

:loaderror9
set slt9=empty
color 0c
cls
echo ERRO!
echo.
echo Esse arquivo foi deletado ou renomeado.
echo Tente denovo..
pause >nul
(
echo %slt1%
echo %slt2%
echo %slt3%
echo %slt4%
echo %slt5%
echo %slt6%
echo %slt7%
echo %slt8%
echo %slt9%
echo %slt10%
) > savemain.sav
color 0e
goto load

:loaderror10
set slt10=empty
color 0c
cls
echo ERRO!
echo.
echo Esse arquivo foi deletado ou renomeado.
echo Tente denovo.
pause >nul
(
echo %slt1%
echo %slt2%
echo %slt3%
echo %slt4%
echo %slt5%
echo %slt6%
echo %slt7%
echo %slt8%
echo %slt9%
echo %slt10%
) > savemain.sav
color 0e
goto load

:passreq
cls
set passcon=0
set /p passcon=Enter password:
if not %passcon% == %pass% goto wrongpass
cls
echo Game Carregado
echo.
pause >nul
goto main

:wrongpass
color 0c
cls
echo Senha Errada
pause >nul
color 0e
goto load

:death
set /a money= %money% - 30
set /a deaths= %deaths% + 1
set health=100
cls
echo Voce Morreu
echo -$30!
echo.
pause >nul
goto main

:levelup
set /a level= %level% + 1
set xp=0
set /a xpmax= %xpmax% * 150 / 100
set health=100
cls
echo Parabens! 
echo agora voce esta no level %level%!
pause >nul
goto main

:exit
cls
echo Voce quer mesmo sair?
echo (S/N)
echo.
set /p einput=Enter:

if %einput% == s exit
if %einput% == n goto main
goto exit

:gmode
set level=99
set money=100000
set xp=0
set xpmax=999999
set wep=8
set arm=6
set hpots=99
set hpotm=99
set hpotl=99
goto main
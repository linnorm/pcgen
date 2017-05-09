@echo off
for /R %1 %%f in (*race.lst) do perl convert_monsters.pl %%f
pause

function whitespace:clear

execute positioned 189 90.005 -739 run function whitespace:floor/southeast
execute positioned 189 90.005 -739 run function whitespace:floor/southwest
execute positioned 190 90.005 -739 run function whitespace:floor/northwest
execute positioned 190 90.005 -739 run function whitespace:floor/northeast

execute positioned 190 121.99 -740 run function whitespace:ceiling/southeast
execute positioned 190 121.99 -740 run function whitespace:ceiling/southwest
execute positioned 190 121.99 -739 run function whitespace:ceiling/northwest
execute positioned 189 121.99 -739 run function whitespace:ceiling/northeast

execute positioned 156.99 90 -771.99 run function whitespace:wall/northwe
execute positioned 222.99 90 -771.99 run function whitespace:wall/northew

execute positioned 222.99 90 -771.99 run function whitespace:wall/eastns
execute positioned 222.99 90 -705.99 run function whitespace:wall/eastsn

execute positioned 222.99 90 -706.01 run function whitespace:wall/southew
execute positioned 156.99 90 -706.01 run function whitespace:wall/southwe

execute positioned 157.01 90 -705.99 run function whitespace:wall/westsn
execute positioned 157.01 90 -771.99 run function whitespace:wall/westns
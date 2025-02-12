function whitespace:clear

execute positioned 180.999 90.005 -734.999 run function whitespace:floor
execute positioned 180.999 90 -734.990 run function whitespace:wall/north
execute positioned 180.999 90 -735.010 run function whitespace:wall/south
execute positioned 181.010 90 -734.999 run function whitespace:wall/west
execute positioned 181.990 90 -734.999 run function whitespace:wall/east
execute positioned 181.999 89.994 -734.999 run function whitespace:ceiling
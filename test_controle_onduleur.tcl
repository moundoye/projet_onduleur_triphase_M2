puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
get_service_paths master
set master_service_path [ lindex [get_service_paths master] 0]
open_service master $master_service_path

# Lecture des 6 registres
puts "Lecture Valeurs Initiales"
set state_reg [master_read_16 $master_service_path 0x00030000 0x01] 
set alpha_U [master_read_16 $master_service_path 0x00030002 0x01]
set alpha_V [master_read_16 $master_service_path 0x00030004 0x01]
set alpha_W [master_read_16 $master_service_path 0x00030006 0x01]
set periode [master_read_16 $master_service_path 0x00030008 0x01]
set temps_mort [master_read_16 $master_service_path 0x0003000A 0x01]

puts ""
puts "registre d'état = $state_reg"
puts "alpha_U = $alpha_U"
puts "alpha_V = $alpha_V"
puts "alpha_W = $alpha_W"
puts "periode = $periode"
puts "temps_mort = $temps_mort"

# Configuration des registres
puts ""
puts "Configuration registres"
master_write_16 $master_service_path 0x00030002 0x09C4
master_write_16 $master_service_path 0x00030004 0x09C4
master_write_16 $master_service_path 0x00030006 0x09C4
master_write_16 $master_service_path 0x00030008 0x1388
master_write_16 $master_service_path 0x0003000A 0x00C8
master_write_16 $master_service_path 0x00030000 0x0003

# Lecture des 6 registres
puts ""
puts "Lecture registres configurés"
set state_reg [master_read_16 $master_service_path 0x00030000 0x01] 
set alpha_U [master_read_16 $master_service_path 0x00030002 0x01]
set alpha_V [master_read_16 $master_service_path 0x00030004 0x01]
set alpha_W [master_read_16 $master_service_path 0x00030006 0x01]
set periode [master_read_16 $master_service_path 0x00030008 0x01]
set temps_mort [master_read_16 $master_service_path 0x0003000A 0x01]

puts ""
puts "registre d'état = $state_reg"
puts "alpha_U = $alpha_U"
puts "alpha_V = $alpha_V"
puts "alpha_W = $alpha_W"
puts "periode = $periode"
puts "temps_mort = $temps_mort"


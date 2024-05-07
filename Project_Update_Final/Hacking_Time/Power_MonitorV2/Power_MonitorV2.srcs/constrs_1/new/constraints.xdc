# Define locations for ring oscillators
set rows 10
set cols 10
set osc_per_row [expr {100 / $rows}]

for {set i 0} {$i < 100} {incr i} {
    set row [expr {$i / $osc_per_row}]
    set col [expr {$i % $osc_per_row}]
    
    set_instance_assignment -name LOC "{[format "%d" $row]}_{[format "%d" $col]}" -to RO_$i
}
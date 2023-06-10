onerror {exit -code 1}
vlib work
vcom -work work manualAdder.vho
vcom -work work Waveform1.vwf.vht
vsim -novopt -c -t 1ps -L maxii -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.manualAdder_vhd_vec_tst
vcd file -direction manualAdder.msim.vcd
vcd add -internal manualAdder_vhd_vec_tst/*
vcd add -internal manualAdder_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f


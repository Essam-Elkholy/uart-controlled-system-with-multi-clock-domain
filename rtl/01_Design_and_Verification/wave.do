delete wave *

add wave -divider {Clocks and test case}
add wave /SYS_TOP_tb/REF_CLK
add wave /SYS_TOP_tb/UART_CLK
add wave /SYS_TOP_tb/RST
add wave -radix unsigned /SYS_TOP_tb/case_id
add wave -radix unsigned /SYS_TOP_tb/errors

add wave -divider {UART command and reply}
add wave /SYS_TOP_tb/RX_IN
add wave /SYS_TOP_tb/TX_OUT
add wave /SYS_TOP_tb/PAR_ERR
add wave /SYS_TOP_tb/STP_ERR
add wave -radix hexadecimal /SYS_TOP_tb/DUT/RX_P_DATA_SYNC
add wave /SYS_TOP_tb/DUT/RX_D_VLD_SYNC
add wave -radix hexadecimal /SYS_TOP_tb/reply

add wave -divider {Register File}
add wave -radix hexadecimal /SYS_TOP_tb/DUT/Address
add wave -radix hexadecimal /SYS_TOP_tb/DUT/WrData
add wave /SYS_TOP_tb/DUT/WrEn
add wave /SYS_TOP_tb/DUT/RdEn
add wave -radix hexadecimal /SYS_TOP_tb/DUT/RdData
add wave /SYS_TOP_tb/DUT/RdData_Valid
add wave -radix hexadecimal /SYS_TOP_tb/observed_reg4
add wave -radix hexadecimal /SYS_TOP_tb/DUT/REG2
add wave -radix hexadecimal /SYS_TOP_tb/DUT/REG3

add wave -divider {ALU}
add wave -radix hexadecimal /SYS_TOP_tb/DUT/REG0
add wave -radix hexadecimal /SYS_TOP_tb/DUT/REG1
add wave -radix hexadecimal /SYS_TOP_tb/DUT/ALU_FUN
add wave /SYS_TOP_tb/DUT/ALU_EN
add wave /SYS_TOP_tb/DUT/CLK_EN
add wave /SYS_TOP_tb/DUT/ALU_CLK
add wave -radix hexadecimal /SYS_TOP_tb/DUT/ALU_OUT
add wave /SYS_TOP_tb/DUT/OUT_VALID

add wave -divider {Response sent to UART TX}
add wave -radix hexadecimal /SYS_TOP_tb/DUT/WR_DATA
add wave /SYS_TOP_tb/DUT/WR_INC
add wave -radix hexadecimal /SYS_TOP_tb/DUT/RD_DATA
add wave /SYS_TOP_tb/DUT/TX_BUSY

configure wave -namecolwidth 220
configure wave -valuecolwidth 80
configure wave -timelineunits us

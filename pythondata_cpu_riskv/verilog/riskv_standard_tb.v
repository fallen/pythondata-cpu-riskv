module cpu_test;
reg clk, rst;

wire externalResetVector = 30'b0;

Riskv riskv(clk, rst,
	iBusWishbone_ADR,
	iBusWishbone_DAT_MOSI,
	iBusWishbone_SEL,
	iBusWishbone_CYC,
	iBusWishbone_STB,
	iBusWishbone_WE,
	iBusWishbone_CTI,
	iBusWishbone_BTE,
	iBusWishbone_DAT_MISO,
	iBusWishbone_ACK,
	iBusWishbone_ERR,

	dBusWishbone_ADR,
	dBusWishbone_DAT_MOSI,
	dBusWishbone_SEL,
	dBusWishbone_CYC,
	dBusWishbone_STB,
	dBusWishbone_WE,
	dBusWishbone_CTI,
	dBusWishbone_BTE,
	dBusWishbone_DAT_MISO,
	dBusWishbone_ACK,
	dBusWishbone_ERR,
	externalResetVector
);

initial begin
	$dumpfile("wb_tb.vcd");
	$dumpvars(0, cpu);
end

initial begin
	rst = 1'b1;
	clk = 1'b0;
	#4;
	rst = 1'b0;
	#400;
	$finish;
end

always begin
	#1;
	clk = ~clk;
end

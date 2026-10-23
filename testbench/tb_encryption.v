`timescale 1ns/1ns
module tb_encryption;

    // parameter k = 128;            // Key size
    // parameter r = 64;            // Rate
    // parameter a = 12;             // Initialization round no.
    // parameter b = 6;              // Intermediate round no.
    // parameter l = 40;             // Length of associated data
    // parameter y = 40;             // Length of Plain Text
    // parameter TI = 1;
    // parameter FP = 1;

    parameter PERIOD = 20;          // Clock frequency
    parameter max = (`k>=`y && `k>=`l)? `k: ((`y>=`l)? `y: `l);

    reg       clk = 0;
    reg       rst;
    reg [2:0] keyxSI;
    reg [2:0] noncexSI;
    reg [2:0] associated_dataxSI;
    reg [2:0] plain_textxSI;
    reg       encryption_startxSI;
    reg [6:0] r_64xSI;
    reg       r_128xSI;
    reg       r_ptxSI;
    integer ctr = 0;
    reg [`y-1:0] cipher_text;
    reg [127:0] tag;

    wire  cipher_textxSO;
    wire  tagxSO;
    wire  encryption_readyxSO;
    integer check_time;


    integer kat_fd, kat_rc, kat_id, kat_total;
    reg [127:0] kat_key, kat_nonce;
    reg [31:0] kat_ad, kat_pt;
    reg [159:0] kat_result;
    // parameter KEY = 'h2db083053e848cefa30007336c47a5a1;
    // parameter NONCE = 'h3f3607dbce3503ba84f5843d623de056;
    // parameter AD = 'h4153434f4e;
    // parameter PT = 'h6173636f6e;

    Ascon #(
        `k,`r,`a,`b,`l,`y,`TI,`FP
    ) uut (
        clk,
        rst,
        keyxSI,
        noncexSI,
        associated_dataxSI,
        plain_textxSI,
        encryption_startxSI,
        r_64xSI,
        r_128xSI,
        r_ptxSI,
        cipher_textxSO,
        tagxSO,
        encryption_readyxSO
    );

    // Clock Generator of 10ns
    always #(PERIOD) clk = ~clk;

    task write;
    input [max-1:0] rd, i, key, nonce, ass_data, pt; 
    begin
        @(posedge clk);
        {r_128xSI, r_ptxSI, r_64xSI, keyxSI[2:1], associated_dataxSI[2:1], plain_textxSI[2:1], noncexSI[2:1]} = rd;
        keyxSI[0] = key[`k-1-i];
        noncexSI[0] = nonce[127-i];
        plain_textxSI[0] = pt[`y-1-i];
        associated_dataxSI[0] = ass_data[`l-1-i];
    end
    endtask

    task read;
    input integer i;
    begin
        @(posedge clk);
        cipher_text[i] = cipher_textxSO;
        tag[i] = tagxSO;
    end
    endtask

    initial begin
        $dumpfile("test.vcd");
        $dumpvars;
        $display("Start!");
        
	kat_total = 0;
	kat_fd = $fopen("LWC_AEAD_KAT_128_128.txt","r");

	if (kat_fd == 0) begin
		$display("ERROR: cannot read file kat");
		$finish;
	end

	while (!$feof(kat_fd)) begin
		kat_rc = $fscanf(kat_fd,
			" Count = %d Key = %h Nonce = %h PT = %h AD = %h CT = %h",
			kat_id, kat_key, kat_nonce, kat_pt, kat_ad, kat_result);

		if (kat_rc == 6) begin
			run_case(
				kat_id,
				kat_key,
				kat_nonce,
				kat_ad,
				kat_pt,
				kat_result[159:128],
				kat_result[127:0]
			);

			kat_total = kat_total + 1;
		end
		else if (kat_rc != -1) begin
			$display("ERROR: invaid kat file");
			$finish;
		end
	end
	$fclose(kat_fd);

	$display("ALL %0d TEST PASS", kat_total);
	$finish;
	end
	
    task run_case;
	    input integer id;
	    input [127:0] key, nonce;
	    input [31:0] ad,pt, expected_ct;
	    input [127:0] expected_tag;
	    integer n;

	    begin 
	    	rst =1;
		encryption_startxSI = 0;
		cipher_text = 0;
		tag = 0;

		repeat (3) @(posedge clk);
		#1;
		rst = 0;

		for(n = 0;n<128;n= n+1)
			write($random,n,key,nonce, ad,pt);
			
		wait (uut.ready === 1'b1)
		@(negedge clk);
			encryption_startxSI = 1;
		@(negedge clk);
			encryption_startxSI = 0;
		wait (encryption_readyxSO === 1'b1);
		@(posedge clk);

		for(n=0;n<128;n=n+1)
			read(n);

		if(cipher_text !== expected_ct || tag !== expected_tag) begin
			$display("TC%0d FAIL", id);
			$finish;
		end
		else begin
			@(negedge clk);
			encryption_startxSI = 1;

			@(negedge clk);
			encryption_startxSI = 0;
			$display("TC%0d PASS", id);
		end
	    end
	endtask
endmodule

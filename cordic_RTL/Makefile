OUT=./obj
OUT_ITER=iter_tb.o
OUT_COS=cos_tb.o
TB_ITER=iter_tb.sv
TB_COS=cos_tb.sv
IVERILOG_FLAGS=-g2012

$(OUT)/$(OUT_COS): $(wildcard *.sv) $(OUT)/
	python gen_cordic_vals.py ./cordic_cos.sv
	iverilog $(IVERILOG_FLAGS) -o $(OUT)/$(OUT_COS) $(TB_COS) ./cordic_cos.sv ./cordic_iter.sv

$(OUT)/$(OUT_ITER): $(wildcard *.sv) $(OUT)/
	iverilog $(IVERILOG_FLAGS) -o $(OUT)/$(OUT_ITER) $(TB_ITER) 

$(OUT)/:
	mkdir $(OUT)

run_iter: $(OUT)/$(OUT_ITER)
	$(OUT)/$(OUT_ITER)

run_cos: $(OUT)/$(OUT_COS)
	$(OUT)/$(OUT_COS)

clean: 
	rm -rf $(OUT)

OUT=./obj
OUT_NAME=cos_tb.o
TB=tmp_test.v

$(OUT)/$(OUT_NAME): $(wildcard *.v) $(OUT)/
	iverilog -o $(OUT)/$(OUT_NAME) $(TB)

$(OUT)/:
	mkdir $(OUT)

run: $(OUT)/$(OUT_NAME)
	$(OUT)/$(OUT_NAME)

clean: 
	rm -rf $(OUT)

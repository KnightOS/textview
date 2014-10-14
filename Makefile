include .knightos/variables.make

# TODO: Add textview.app when this can be started without arguments
ALL_TARGETS:=$(BIN)textview

$(BIN)textview: main.asm
	mkdir -p $(BIN)
	$(AS) $(ASFLAGS) --listing $(OUT)main.list main.asm $(BIN)textview

include .knightos/sdk.make

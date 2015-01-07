BIN = node_modules/.bin

test:
	$(BIN)/jasmine-node --coffee --verbose spec

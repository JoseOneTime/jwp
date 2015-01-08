BIN = node_modules/.bin

all: index.html

%.html: %.jade
	$(BIN)/jade $<

test:
	$(BIN)/jasmine-node --coffee --verbose spec

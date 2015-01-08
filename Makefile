BIN = node_modules/.bin

all: index.html src/app.js

%.html: %.jade
	$(BIN)/jade $<

%.js: %.coffee
	$(BIN)/coffee -co $(@D) $<

test:
	$(BIN)/jasmine-node --coffee --verbose spec

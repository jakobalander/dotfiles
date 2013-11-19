var moveLeftHalf = slate.operation("move", {
	"x" : "screenOriginX",
    	"y" : "screenOriginY",
    	"width" : "screenSizeX/2",
    	"height" : "screenSizeY"
});
var moveRightHalf = slate.operation("move", {
	"x" : "screenSizeX/2",
    	"y" : "screenOriginY",
    	"width" : "screenSizeX/2",
    	"height" : "screenSizeY"
});
var moveUp = slate.operation("move", {
	"x" : "windowTopLeftX",
    	"y" : "screenOriginY",
    	"width" : "screenSizeX/2",
    	"height" : "screenSizeY/2"
});
var moveDown = slate.operation("move", {
	"x" : "windowTopLeftX",
    	"y" : "screenSizeY/2",
    	"width" : "screenSizeX/2",
    	"height" : "screenSizeY/2"
});
var fullScreen = slate.operation("move", {
	"x" : "screenOriginX",
    	"y" : "screenOriginY",
    	"width" : "screenSizeX",
    	"height" : "screenSizeY"
});
slate.bind("f:ctrl;shift", function(win) {
	win.doOperation(fullScreen);
});
slate.bind("h:ctrl;shift", function(win) {
	win.doOperation(moveLeftHalf);
});
slate.bind("l:ctrl;shift", function(win) {
	win.doOperation(moveRightHalf);
});
slate.bind("j:ctrl;shift", function(win) {
	win.doOperation(moveUp);
});
slate.bind("k:ctrl;shift", function(win) {
	win.doOperation(moveDown);
});

S.cfga({
    defaultToCurrentScreen : true,
    windowHintsIgnoreHiddenWindows : false,
    windowHintsShowIcons : true,
    windowHintsSpread : true,
    windowHintsSpreadSearchWidth : 150,
    windowHintsSpreadSearchHeight : 150,
    layoutFocusOnActivate : true,
    orderScreensLeftToRight : true
});

var laptop = "1440x900";
var display = "1920x1200";

var left = function(w) {
    var currentScreenIsLeftmost = S.screen().id() == 0;
    var windowIsAtLeftEdgeOfScreen = S.screen().rect().x == w.rect().x;
    var shouldPushToLeftScreen = !currentScreenIsLeftmost && windowIsAtLeftEdgeOfScreen;

    if(shouldPushToLeftScreen) {
        w.doOperation(S.operation("push", {
            direction : "right",
            style : "bar-resize:screenSizeX/2",
            screen : S.screen().id() - 1
        }));
    } else {
        w.doOperation(S.operation("push", {
            direction : "left",
            style : "bar-resize:screenSizeX/2",
        }));
    }
}

var right = function(w) {
    var currentScreenIsRightmost = S.screen().id() == S.screenCount() - 1;
    var windowIsAtRightEdgeOfScreen = Math.abs(S.screen().rect().x + S.screen().rect().width - w.rect().x - w.rect().width) < 5;
    var shouldPushToRightScreen = !currentScreenIsRightmost && windowIsAtRightEdgeOfScreen;

    if(shouldPushToRightScreen) {
        w.doOperation(S.operation("push", {
            direction : "left",
            style : "bar-resize:screenSizeX/2",
            screen : S.screen().id() + 1
        }));
    } else {
        w.doOperation(S.operation("push", {
            direction : "right",
            style : "bar-resize:screenSizeX/2",
        }));
    }
}

var full = function(w) {
    w.doOperation(S.operation("push", {
        direction : "up",
        style: "bar-resize:screenSizeY"
    }));
}

var hint = S.op("hint", {
    characters : "ASDFQWZXCV;YUIOPBNM,"
});

S.bnda({
    "e:ctrl,space" : hint,
    "r:ctrl,space" : S.op("relaunch"),
    "h:ctrl,space" : left,
    "l:ctrl,space" : right,
    "k:ctrl,space" : full,
});



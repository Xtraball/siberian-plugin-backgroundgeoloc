cordova.define("siberian-plugin-backgroundgeoloc.BackgroundGeoloc", function(require, exports, module) { var exec = require('cordova/exec');

    var BackgroundGeoloc = {};

    BackgroundGeoloc.getCurrentPosition = function(success_callback, error_callback) {
        exec(success_callback, error_callback, "BackgroundGeoloc", "getCurrentPosition", []);
    };

    BackgroundGeoloc.startBackgroundLocation = function(success_callback, error_callback) {
        exec(success_callback, error_callback, "BackgroundGeoloc", "startBackgroundLocation", []);
    };

    BackgroundGeoloc.stopBackgroundLocation = function(success_callback, error_callback) {
        exec(success_callback, error_callback, "BackgroundGeoloc", "stopBackgroundLocation", []);
    };

    module.exports = BackgroundGeoloc;

});

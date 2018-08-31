var exec = require('cordova/exec');


// 定位配置
exports.config = function(args, success, error) {

};

// 获取当前位置(单次定位)
exports.getCurrentLocation = function (args, success, error) {
    exec(success, error, 'ToolkitAMap', 'getCurrentLocation', [args]);
};

exports.getPosition = function(args, success, error) {

};


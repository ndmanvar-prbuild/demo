﻿
app.service('service', function () {
    this.getData = function () {
        return data;
    };

    this.addData = function (data1, data2) {
        data.push({
            data1: data1,
            data2: data2,
        });
    };

});

var data = [{'data1': 91, 'data2': 92}];

if (false) {
	console.log('this is garbage and should not make it in');
}

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

var data = [{'data1': 51, 'data2': 52}];

if (false) {
	console.log('this is garabage code');
}



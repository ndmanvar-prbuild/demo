describe('ControlerTest', function() {
  beforeEach(module('service'));

  var $controller;

  beforeEach(inject(function(_$controller_){
    // The injector unwraps the underscores (_) from around the parameter names when matching
    $controller = _$controller_;
  }));

  describe('controller methods', function() {

    it('should load the data', function() {
      var $scope = {};
      var controller = $controller('controller', { $scope: $scope });
      expect($scope.data[0].data1).toEqual(41);
      expect($scope.data[0].data2).toEqual(42);
    });

    it('should insert data', function() {
      var $scope = {newData: {data1: 8, data2: 9}};
      var controller = $controller('controller', { $scope: $scope });
      $scope.insertData();
      expect($scope.data[1].data1).toEqual(8);
    });

    it('should remove data', function () {
      var $scope = {};
      var controller = $controller('controller', { $scope: $scope });
      $scope.removeData();
      expect($scope.data).toEqual([ {data1: 31, data2: 32} ]);
    });

    it('should reset newData after the function', function() {
      var $scope = {newData: {data1: 18, data2: 19}};
      var controller = $controller('controller', { $scope: $scope });
      $scope.insertData();
      expect($scope.newData.data1).toEqual('');
    });

  });
});

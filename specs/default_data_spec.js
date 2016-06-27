// spec.js
describe('AngularJS/Protractor Demo Tab1 default values', function() {

  it('should have the correct default data', function() {
    browser.get('http://localhost:8000');

    element(by.css('.index')).click();

    var firstInput = element(by.xpath("//tr[2]//td[@class='ng-binding'][1]")),
        secondInput = element(by.xpath("//tr[2]//td[@class='ng-binding'][2]"));

    expect(firstInput.getText()).toEqual('81');
    expect(secondInput.getText()).toEqual('82');

  });

});
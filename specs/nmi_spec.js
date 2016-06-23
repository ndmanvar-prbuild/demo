// spec.js
describe('AngularJS/Protractor Demo Tab1 new', function() {

  it('should add data and verify it was added new test', function() {
    browser.get('http://localhost:8000');

    element(by.css('.index')).click();

    element(by.css('#input1')).sendKeys('33');
    element(by.css('#input2')).sendKeys('44');
    element(by.css('#submitData')).click();

    var firstInput = element(by.xpath("//tr[3]//td[@class='ng-binding'][1]")),
        secondInput = element(by.xpath("//tr[3]//td[@class='ng-binding'][2]"));

    expect(firstInput.getText()).toEqual('33');
    expect(secondInput.getText()).toEqual('44');
  });

});
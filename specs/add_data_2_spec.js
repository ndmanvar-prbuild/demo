// spec.js
describe('AngularJS/Protractor Demo Tab1', function() {

  it('should add data and verify it was added 2spec', function() {
    browser.get('http://localhost:8000');

    element(by.css('.index')).click();

    element(by.css('#input1')).sendKeys('13');
    element(by.css('#input2')).sendKeys('14');
    element(by.css('#submitData')).click();

    var firstInput = element(by.xpath("//tr[3]//td[@class='ng-binding'][1]")),
        secondInput = element(by.xpath("//tr[3]//td[@class='ng-binding'][2]"));

    expect(firstInput.getText()).toEqual('13');
    expect(secondInput.getText()).toEqual('14');
  });

});
// spec.js
describe('AngularJS/Protractor Demo Tab1 Remove', function() {

  it('should remove the last data', function() {
    browser.get('http://localhost:8000');

    element(by.css('.index')).click();

    element(by.css('#input1')).sendKeys('33');
    element(by.css('#input2')).sendKeys('44');
    element(by.css('#submitData')).click();

    element(by.css('#removedata')).click();

    expect(element(by.xpath("//tr//td[@class='ng-binding'][text()='33']")).isPresent()).toEqual(false);
    expect(element(by.xpath("//tr//td[@class='ng-binding'][text()='44']")).isPresent()).toEqual(false);
  });

});
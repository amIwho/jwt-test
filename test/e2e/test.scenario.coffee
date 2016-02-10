describe 'my first protractor test', ->
  it 'should just work', ->
    browser.get 'http://localhost:1337/'

    expect browser.getTitle()
        .toEqual 'JWT test app'

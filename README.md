<p align="center">
  <img src="http://static.photoeditorsdk.com/logo.png" />
</p>

# PhotoEditorSDK HTML5 Ruby/Rails Gem Demonstration
Rails Gem for easily integrating [PhotoEditorSDK HTML5](https://www.photoeditorsdk.com) in Ruby on Rails.

## Note 
The PhotoEditorSDK is a product of 9Elements GmBH. 
Please [order a license](https://www.photoeditorsdk.com/pricing#contact/?utm_source=Github&utm_medium=PESDK&utm_term=HTML5-Rails). Please see `LICENSE.md` for licensing details.


## PhotoEditor SDK for HTML5.
The [PhotoEditor SDK] (https://www.photoeditorsdk.com/?utm_source=Github&utm_medium=PESDK&utm_term=HTML5-Rails) for HTML5 is a **fully customizable** photo editor which you can integrate into your Rails app within minutes.

### Setup the Rails asset pipeline

1. Reference Gem in your bundlers Gemfile. Open your `Gemfile` and insert
```ruby
...
gem 'pesdk-html5-rails', :git => 'https://github.com/imgly/pesdk-ruby-gem-demo.git'
...
```
2. Register javascript with the Rails asset pipeline. Open `/assets/javascripts/application.js` and insert the following lines 

```javascript
...
//= require react
//= require react-dom
//= require PhotoEditorSDK.min
//= require PhotoEditorReactUI.min
...
```

3. Register stylesheets with the Rails asset pipeline.
Open `/assets/stylesheets/application.css` and insert the following lines
```css
...
*= require PhotoEditorReactUI
...
```

### Initialize the editor 
Create a custom javascript file or modify your `application.js` to initialize the PhotoEditor UI on window load as follows 

```javascript
...

window.onload = function () {
  var apiKey = 'your-api-key', // <-- Please replace this with your API key

  var container = document.getElementById('pesdk')  
  var editor = new PhotoEditorSDK.UI.ReactUI({
    container: container,
    apiKey: apiKey,
    assets: {
        baseUrl: '/assets', 
        resolver: function (path) { return path }
    }
  })
}
...

```

Now, put a `<div/>` element in the view 
```html
...
<div id="pesdk"  style="width: 1024px; height: 768px;">
...
```


## License
Please see [LICENSE](https://github.com/imgly/pesdk-html5-rails/blob/master/LICENSE.md) for licensing details.

## Authors and Contributors
Made 2013-2017 by @9elements

## Support or Contact
Contact contact@photoeditorsdk.com for support requests or to upgrade to an enterprise licence.



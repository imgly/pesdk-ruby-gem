<p align="center">
  <img src="http://static.photoeditorsdk.com/logo.png" />
</p>

# PhotoEditor SDK for HTML5 Ruby/Rails Gem Demonstration
Rails Gem for easily integrating [PhotoEditor SDK](https://www.photoeditorsdk.com/?utm_campaign=Projects&utm_source=Github&utm_medium=Side_Projects&utm_content=Ruby-Gem-Demo) for HTML5 in Ruby on Rails.

## Note 
The [PhotoEditor SDK](https://www.photoeditorsdk.com/?utm_campaign=Projects&utm_source=Github&utm_medium=Side_Projects&utm_content=Ruby-Gem-Demo) is a product of 9Elements GmBH. 
Please [order a license](https://www.photoeditorsdk.com/pricing#contact/?utm_campaign=Projects&utm_source=Github&utm_medium=Side_Projects&utm_content=Ruby-Gem-Demo). Please see `LICENSE.md` for licensing details.


## PhotoEditor SDK for HTML5.
The [PhotoEditor SDK](https://www.photoeditorsdk.com/?utm_campaign=Projects&utm_source=Github&utm_medium=Side_Projects&utm_content=Ruby-Gem-Demo) for HTML5 is a **fully customizable** photo editor which you can integrate into your Rails app within minutes.

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
//= require PhotoEditorSDK
//= require PhotoEditorSDK.UI.ReactUI
...
```

3. Register stylesheets with the Rails asset pipeline.
Open `/assets/stylesheets/application.css` and insert the following lines
```css
...
*= require PhotoEditorSDK.UI.ReactUI
...
```

### Initialize the editor 
Create a custom javascript file or modify your `application.js` to initialize the PhotoEditor UI on window load as follows 

```javascript
...

window.onload = function () {
  var license = 'license-string' // <- replace this with the content of your license file. The JSON-object needs to be in string format

  var container = document.getElementById('pesdk')  
  var editor = new PhotoEditorSDK.UI.ReactUI({
    container: container,
    license: license,
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



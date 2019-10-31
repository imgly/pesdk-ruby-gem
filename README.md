<p align="center">
  <img src="http://static.photoeditorsdk.com/logo.png" />
</p>

# PhotoEditor SDK for HTML5 Ruby/Rails Gem Demonstration
Rails Gem for easily integrating [PhotoEditor SDK](https://www.photoeditorsdk.com/?utm_campaign=Projects&utm_source=Github&utm_medium=Side_Projects&utm_content=Ruby-Gem-Demo) for HTML5 in Ruby on Rails.

## Note 
The [PhotoEditor SDK](https://www.photoeditorsdk.com/?utm_campaign=Projects&utm_source=Github&utm_medium=Side_Projects&utm_content=Ruby-Gem-Demo) is a product of img.ly GmbH. 
Please [request a license](https://account.photoeditorsdk.com/pricing?utm_campaign=Projects&utm_source=Github&utm_medium=Side_Projects&utm_content=Ruby-Gem-Demo). Please see `LICENSE.md` for licensing details.


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
//= require react.production.min
//= require react-dom.production.min
//= require PhotoEditorSDK.min
//= require PhotoEditorSDK.UI.ReactUI.min
...
```

3. Register stylesheets with the Rails asset pipeline.
Open `/assets/stylesheets/application.css` and insert the following lines
```css
...
*= require PhotoEditorSDK.UI.ReactUI.min
...
*/
```
Important: Insert the code snipped before the `*/`

4. Create a custom javascript file or modify your `application.js` to initialize the PhotoEditor UI on window load as follows 

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

5. Now, put a `<div/>` element in the view 
```html
...
<div id="pesdk"  style="width: 1024px; height: 768px;">
...
```

## Switch between React- and DesktopUI
In order to use the DesktopUI instead of the ReactUI, you need to make some changes to your setup. Replace in point ...

2.  `//= require PhotoEditorSDK.UI.ReactUI.min` with `//= require PhotoEditorSDK.UI.DesktopUI.min`
3.  `*= require PhotoEditorSDK.UI.ReactUI.min` with `*= require PhotoEditorSDK.UI.DesktopUI.min`
4.  `var editor = new PhotoEditorSDK.UI.ReactUI` with `var editor = new PhotoEditorSDK.UI.DesktopUI` in `home.js`

## License
Please see [LICENSE](https://github.com/imgly/pesdk-html5-rails/blob/master/LICENSE.md) for licensing details.

## Authors and Contributors
Made 2013-2019 by img.ly

## Support or Contact
Use our [service desk](https://support.photoeditorsdk.com) for bug reports or support requests. To request a commercial license, please use the [license request form](https://account.photoeditorsdk.com/pricing?utm_campaign=Projects&utm_source=Github&utm_medium=Side_Projects&utm_content=Ruby-Gem-Demo) on our website.



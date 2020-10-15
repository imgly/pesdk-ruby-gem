# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pesdk/html5/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "pesdk-html5-rails"
  spec.version       = Pesdk::Html5::Rails::VERSION
  spec.authors       = ["img.ly GmbH"]
  spec.email         = ["contact@photoeditorsdk.com"]

  spec.summary       = "A fully customizable photo editor for your app."
  spec.description   = "
    The PhotoEditor SDK for HTML5 is a fully customizable photo editor which you can integrate into your HTML5 app within minutes.
    It contains the most important photo editing tools;
    Auto-Enhance, Crop, Rotate, Focus, Brightness, Contrast, Saturation, and more.
    It also features state-of-the-art photo filters, designed and calibrated with a lot of love.
    A Text editor with an elegant and simple to use interface allows adding text instantly to the picture."
  spec.homepage      = "https://www.photoeditorsdk.com"
  spec.license       = "CUSTOM"

  #spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.files         = Dir["{lib,vendor}/**/*"] + Dir["*"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib", "vendor"]

  spec.add_dependency "railties", ">= 4.2.0"
  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end

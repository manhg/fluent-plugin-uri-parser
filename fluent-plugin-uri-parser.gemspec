# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "fluent-plugin-uri-parser"
  spec.version       = "0.1.0"
  spec.authors       = ["Daichi HIRATA"]
  spec.email         = ["bunny.hop.md@gmail.com"]
  spec.license       = "Apache-2.0"

  spec.summary       = "This is a Fluentd plugin to parse uri and query string in log messages."
  spec.description   = "This is a Fluentd plugin to parse uri and query string in log messages."
  spec.homepage      = "https://github.com/daichirata/fluent-plugin-uri-parser"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end

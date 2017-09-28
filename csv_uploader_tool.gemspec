
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "csv_uploader_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "csv_uploader_tool"
  spec.version       = CsvUploaderTool::VERSION
  spec.authors       = ["Jakub41"]
  spec.email         = ["lemiszewski@gmx.com"]

  spec.summary       = %q{A tool for upload CSV files.}
  spec.description   = %q{This tool is for upload CSV files.}
  spec.homepage      = "https://github.com/Jakub41/csv_uploader_tool"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16.a"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end

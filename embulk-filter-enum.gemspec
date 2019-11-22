
Gem::Specification.new do |spec|
  spec.name          = "embulk-filter-enum"
  spec.version       = "0.1.0"
  spec.authors       = ["mnenm"]
  spec.summary       = "Enum filter plugin for Embulk"
  spec.description   = "Enum"
  spec.email         = ["naamjp@gmail.com"]
  spec.licenses      = ["MIT"]
  # TODO set this: spec.homepage      = "https://github.com/naamjp/embulk-filter-enum"

  spec.files         = `git ls-files`.split("\n") + Dir["classpath/*.jar"]
  spec.test_files    = spec.files.grep(%r{^(test|spec)/})
  spec.require_paths = ["lib"]

  #spec.add_dependency 'YOUR_GEM_DEPENDENCY', ['~> YOUR_GEM_DEPENDENCY_VERSION']
  spec.add_development_dependency 'embulk', ['>= 0.8.39']
  spec.add_development_dependency 'bundler', ['>= 1.10.6']
  spec.add_development_dependency 'rake', ['>= 10.0']
end

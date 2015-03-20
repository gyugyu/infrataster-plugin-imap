# coding: utf-8
Gem::Specification.new do |spec|
  spec.name          = "infrataster-plugin-imap"
  spec.version       = "0.1.0"
  spec.authors       = ["Yusuke Yagyu"]
  spec.email         = ["gyugyu@paperboy.co.jp"]

  spec.summary       = %q{IMAP plugin for Infrataster}
  spec.homepage      = "https://github.com/gyugyu/infrataster-plugin-imap"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "infrataster", "~> 0.2"

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end

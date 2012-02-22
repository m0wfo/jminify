Gem::Specification.new do |s|
  s.name = %q{jminify}
  s.version = "0.0.1"
  s.authors = ["Chris Mowforth"]
  s.email = ["chris@mowforth.com"]
  s.summary = "YUI JS / CSS compressor for JRuby."
  s.description = <<-EOF
    A wrapper for the YUI Java compressor: compress JavaScript and CSS, including whitespace removal and munging of variable names.
  EOF
  s.files = Dir.glob("{test}/**/*") | Dir.glob("{lib}/**/*")
  s.homepage = "http://github.com/cmowforth/jminify"
  s.has_rdoc = false
end
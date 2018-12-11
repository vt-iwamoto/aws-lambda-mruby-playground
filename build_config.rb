MRuby::Build.new do |conf|
  toolchain :gcc
  conf.gem :github => 'mattn/mruby-json'
  conf.gembox 'default'
end

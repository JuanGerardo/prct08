#Fichero de Rakefile para Guard
$:.unshift File.dirname(__FILE__) + 'lib'
$:.unshift './lib', './spec'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new
task :default => :bin
desc "Ejecutar las espectativas de la clase Frac"
task :bin do
  sh "rspec -I. spec/matrices_spec.rb"
end

desc "Ejecutar documentacion"
task :test do
  sh "rspec -I. spec/matrices_spec.rb --format documentation"
end

desc "Ejecutar documentacion html"
task :thtml do
  sh "rspec -I. spec/matrices_spec.rb --format html"
end
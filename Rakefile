require "bundler/gem_tasks"

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new
    task :default => :spec
    
desc "Ejecutar las espectativas de la clase Bibliografia"
task :spec do
  sh "rspec -I. spec/pruebas_bib.rb"
end  

desc "Ejecutar con documentacion"
task :doc do
  sh "rspec -I. spec/pruebas_bib.rb --format documentation"
end


desc "Ejecutar las espectativas de la clase Lista"
task :spec do
  sh "rspec -I. spec/pruebas_list.rb"
end  

desc "Ejecutar con documentacion"
task :doc do
  sh "rspec -I. spec/pruebas_list.rb --format documentation"
end
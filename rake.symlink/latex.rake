task :environment do
    puts 'task environment'
end
namespace :latex do
  def format_name(args, ext="tex")
    name = args.count == 0 ? "index" : "#{args.file_name}" #set default
    name.sub(/.\.tex$/, '') #remove .tex if its there, (will add later)
    "#{name}.#{ext}"
  end
  task :default => 'latex:pdf_with_the_works'
  desc "run the works (creates pdf with bibtex)"
  task :pdf_with_the_works, [:file_name] => [:vanilla_latex, :bibtex, :pdflatex, :pdflatex, :open] do |t, args|
    puts "Your PDF has been delivered, and opened"
  end

  desc "run the vanilla latex command"
  task :vanilla_latex, :file_name do |t, args|
    puts "ARGS:#{args}"
    sh "latex #{format_name args}"
  end

  desc "run bibtex on the file"
  task :bibtex, :file_name do |t, args|
    sh "bibtex #{format_name args}"
  end

  desc "run pdflatex on the file"
  task :pdflatex, :file_name do |t, args|
    sh "pdflatex #{format_name args}"
  end

  desc "open the file"
  task :open, :file_name do |t, args|
    sh "open #{format_name args 'pdf'}"
  end
end

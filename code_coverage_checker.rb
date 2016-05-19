# usage: $ cp -rf coverage old_coverage && ruby get_coverage.rb

def get_coverage_num(coverage_dir)
  cov_files = Dir.glob("#{coverage_dir}/**/*.txt")
  raise "#{coverage_dir} directory does not exist" if cov_files.empty?
  cov_file = cov_files[0]
  content = File.read cov_file
  content.scan(/\: .*\%/).last.gsub(': ', '').gsub('%', '').to_f
end

def log_coverage(old_num, new_num)
  puts "Old Coverage: #{old_num}\nNew Coverage: #{new_num}"
end

old_coverage_number = get_coverage_num("old_coverage")
new_coverage_number = get_coverage_num("coverage")

puts log_coverage(old_coverage_number, new_coverage_number)

raise "Code Coverage Check failed because of drop in Code coverage numbers" if new_coverage_number < old_coverage_number

puts 'Code Coverage check passed!'

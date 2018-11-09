puts File.join('', 'Users', 'rahulanumolu', 'myapp', 'app', 'models', 'temp')

puts __FILE__
puts File.expand_path(__FILE__)
puts File.dirname(__FILE__)

puts File.join(File.dirname(__FILE__), '..', "Extentions\ Files ")

file = File.new('test.txt', 'w')
file.puts('testing write file')
file.close

count = 0
puts count.to_s
File.open('README.md', 'r') do |filetemp|
  filetemp.each_line { |line| count++ puts count.to_s + " #{line.capitalize}" }
end

string = 'test'
puts string.capitalize!


file2 = File.new('file_to_rename.txt', 'w');
file2.puts(' file to be renamed and deleted');
file2.close

File.rename('file_to_rename.txt', 'file_to_delete.txt')

File.delete('file_to_delete.txt')

file = File.new('file_to_copy.txt', 'w')
file.puts('file to be copied')
file.close

require 'fileutils'
FileUtils.copy('file_to_copy.txt', 'copied.txt')

filec = 'copied.txt'
puts "exists:\t" + File.exists?(filec).to_s
puts "is file:\t" + File.file?(filec).to_s
puts "is dir:\t" + File.directory?(filec).to_s
puts "readable:\t" + File.readable?(filec).to_s
puts "writable:\t" + File.writable?(filec).to_s
puts "executable:\t" + File.executable?(filec).to_s
puts "size:\t" + File.size(filec).to_s
puts File.expand_path(filec)
puts File.dirname(filec)
puts File.basename(File.expand_path(filec))
puts File.extname(filec)
puts File.atime(filec)
puts File.ctime(filec)
puts File.mtime(filec)

puts File.dirname(__FILE__)

puts Dir.pwd
puts 'before changing dir'
Dir.chdir(File.join( '', 'Users', 'rahulanumolu', 'myapp', 'bin'))
puts 'after changing dir'
puts Dir.pwd

puts Dir.entries('.').inspect

Dir.entries('.').each do |entry|
    print "entry from #{entry.to_s}:\t\t\t\t" 
    if File.file?(entry) && File.readable?(entry) 
        File.open(entry, 'r') do |file|
            puts file.gets
        end
    else
        puts
    end
end

Dir.foreach('.') {|entry| puts entry}

Dir.mkdir('temp_directory')
Dir.delete('temp_directory')

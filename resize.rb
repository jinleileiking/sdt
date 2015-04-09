puts "gen thumbs ..."

Dir['images/**/*'].each do |file|
    if File.directory? file
        next
    end
    if File.symlink? file
        next
    end

    unless /(?<filename>.+)\.JPG/ =~ file
        next
    end

#     puts "#{file}"
#     puts "#{filename}"
    system "convert #{filename}.JPG -resize 1080x1080 #{filename}.JPG"

end

puts "gen thumbs done"

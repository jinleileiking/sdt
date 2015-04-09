puts "gen thumbs ..."

Dir['images/**/*'].each do |file|
    if File.directory? file
        next
    end
    if File.symlink? file
        next
    end

    unless /(?<filename>.+)\.(?<ext>(JPG|jpg))/ =~ file
        next
    end

#     puts "#{file}"
#     puts "#{filename}"
    system "convert #{filename}.#{ext} -resize 1080x1080 #{filename}.#{ext}"

end

puts "gen thumbs done"

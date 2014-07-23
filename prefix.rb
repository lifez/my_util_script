folder_path = ARGV[0].to_s + "/"
prefix = ARGV[1].to_s

Dir.glob(folder_path + "*").sort.each do |f|
  filename = File.basename(f, File.extname(f))
  File.rename(f, folder_path + prefix + "_" + filename + File.extname(f))
end

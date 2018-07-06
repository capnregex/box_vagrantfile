
  %w(cookbooks data_bags nodes roles).each do |path|
    Pathname.new(path).mkpath
  end


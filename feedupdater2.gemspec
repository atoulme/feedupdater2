Gem::Specification.new do |s|
  s.name     = "feedupdater2"
  s.version  = "0.0.1"
  s.date     = "2009-01-26"
  s.summary  = "A new way to listen to your feed. Only works with RSS feeds. Minimalist."
  s.email    = "antoine@lunar-ocean.com"
  s.homepage = "http://github.com/toulmean/feedupdater2"
  s.description = "This gem reads a rss file. Remembers the ids, and only returns new items from the feed."
  s.has_rdoc = false
  s.authors  = ["Antoine Toulme"]
  s.files    = ["History.txt",  
		"lib/feedupdater2.rb", 
		"feedupdater2.gemspec",
		"readme.rdoc"]
  s.test_files = ["test/test_helper.rb", 
      "test/test_feedupdater2.rb"]
  s.rdoc_options = ["--main", "README.rdoc"]
  s.extra_rdoc_files = ["README.rdoc"]
end

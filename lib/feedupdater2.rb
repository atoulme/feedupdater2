require 'rss'
require 'open-uri'
require 'JSON'


module Feedupdater2
  
  def new_items(url, previous_ids_file)
    feed = RSS::Parser.parse(url)
    if File.exists? previous_ids_file
      f = File.new(previous_ids_file)
      previous_ids = JSON.parse(f.read)
    end
    previous_ids ||= []
    
    new_items = feed.items.select {|item| !previous_ids.include?(item.guid.content || item.link.content) }    
    File.open(previous_ids_file, "w+") {|output| 
      output.write(((previous_ids + new_items.collect {|i| i.guid.content || i.link.content})[0..500]).to_json)}
    return new_items
  end
  
end
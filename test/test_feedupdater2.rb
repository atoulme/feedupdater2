require File.dirname(__FILE__) + '/test_helper.rb'

FEED_URL = 'http://pipes.yahoo.com/pipes/pipe.run?_id=KHziwImQ3RG4GP9VQBJ3AQ&_render=rss'
PREVIOUS_IDS_FILE = '/tmp/previous_ids'

class TestFeedupdater2 < Test::Unit::TestCase
  include Feedupdater2
  
  def setup
  end
  
  def test_new_items
    system("rm " + PREVIOUS_IDS_FILE)
    new_items = new_items(FEED_URL, PREVIOUS_IDS_FILE)
    assert !new_items.empty?
    new_items2 = new_items(FEED_URL, PREVIOUS_IDS_FILE)
    assert new_items2.empty?
  end
end

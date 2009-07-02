require 'test_helper'

# Replace this API key with your own (http://www.campaignmonitor.com/api/)
CAMPAIGN_MONITOR_API_KEY  = '__PUT_YOUR_API_KEY_HERE__'

class SubscriberTest < Test::Unit::TestCase


  def setup
    #Campaigning.set_endpoint_url "http://127.0.0.1:8088/mockapiSoap"
    Campaigning.set_debug_mode(:on)
  end

  def test_subscriber_add
    subscriber = Campaigning::Subscriber.new("robertf@test.com", "Robert Franklin")
    response = subscriber.add!("ac52b645c048888a44c87b5f1ecf6b7d")
    assert response.code == 0
  end

  def test_subscriber_add_with_custom_fields
    subscriber = Campaigning::Subscriber.new("user_custon2@test.com", "Mr. Custon")
    response = subscriber.add!("ac52b645c048888a44c87b5f1ecf6b7d", :CityName => "London", :SponsorName => "Some Sponsor from London")
    assert response.code == 0    
  end

  def test_subscriber_add_and_resubscribe
    subscriber = Campaigning::Subscriber.new("norag@test.com", "Nora Green")
    response = subscriber.add_and_resubscribe!("ac52b645c048888a44c87b5f1ecf6b7d")
    assert response.code == 0
  end


  def test_subscriber_add_and_resubscribe_with_custom_fields
    subscriber = Campaigning::Subscriber.new("user_custon@test.com", "Mr. Custon")
    response = subscriber.add_and_resubscribe!("ac52b645c048888a44c87b5f1ecf6b7d", :CityName => "Dublin", :SponsorName => "Some Sponsor")
    assert response.code == 0
  end


  def test_subscriber_unsubscribe
    subscriber = Campaigning::Subscriber.new("user_to_test@test.com") # TODO: Change to get the Subscriber, not to CREATE a new one
    response = subscriber.unsubscribe!("ac52b645c048888a44c87b5f1ecf6b7d")
    puts response.inspect
    assert response.code == 0    
  end


  def test_subscriber_is_subscribed
    subscriber = Campaigning::Subscriber.new("user_to_test@test.com") # TODO: Change to get the Subscriber, not to CREATE a new one
    response = subscriber.is_subscribed?("ac52b645c048888a44c87b5f1ecf6b7d")
    puts response.inspect
    assert response == false
  end

end
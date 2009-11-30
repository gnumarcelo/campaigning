require 'test_helper'

# Replace this API key with your own (http://www.campaignmonitor.com/api/)
CAMPAIGN_MONITOR_API_KEY  = '__PUT_YOUR_API_KEY_HERE__'

class ListTest < Test::Unit::TestCase


  def setup
    #Campaigning.set_endpoint_url "http://127.0.0.1:8088/mockapiSoap"
    Campaigning.set_debug_mode(:on)
  end

  def test_list_stats
    client = Campaigning::Client.find_by_name("Client One Company")
    list = client.find_list_by_name "New list to test BLA"
    puts list.stats.inspect
    #assert subscriber_list.length > 0
  end


  # def test_list_find_single_subscriber
  #   client = Campaigning::Client.find_by_name("Client One Company")
  #   list = client.find_list_by_name "My Friends"
  #   subscriber = list.find_single_subscriber("user_custon2@test.com")
  #   puts subscriber.inspect
  #   assert subscriber.name != nil
  # end 
  # 
  # def test_list_find_unsubscribed
  #   client = Campaigning::Client.find_by_name("Client One Company")
  #   list = client.find_list_by_name "My Friends"
  #   subscriber_list = list.find_unsubscribed(DateTime.new(y=2009,m=4,d=01, h=01,min=00,s=00))
  #   puts subscriber_list.inspect
  #   assert subscriber_list.length > 0    
  # end
  # 
  # def test_list_find_active_subscribers
  #   client = Campaigning::Client.find_by_name("Client One Company")
  #   list = client.find_list_by_name "My Friends"
  #   subscriber_list = list.find_active_subscribers(DateTime.new(y=2009,m=5,d=01, h=01,min=00,s=00))        
  #   assert subscriber_list.length > 0
  # end
  # 
  # def test_list_get_all_active_subscribers
  #   client = Campaigning::Client.find_by_name("Client One Company")
  #   list = client.find_list_by_name "My Friends"
  #   subscriber_list = list.get_all_active_subscribers  
  #   puts subscriber_list.inspect
  #   assert subscriber_list.length > 0
  # end 
  # 
  # def test_list_create
  #   client = Campaigning::Client.find_by_name("Client One Company")
  #   list = Campaigning::List.create!(
  #   :clientID => client.clientID,
  #   :title => "New list to test",
  #   :unsubscribePage => "",
  #   :confirmOptIn => false,
  #   :confirmationSuccessPage => ""
  #   )
  #   assert list.listID != nil
  # end
  # 
  # def test_list_create_custom_field
  #   client = Campaigning::Client.find_by_name("Client One Company")
  #   list = client.find_list_by_name "My Friends"
  #   result = list.create_custom_field!(
  #   :fieldName => "Country" ,
  #   :dataType => "MultiSelectOne",
  #   :options => %w[Brazil Ireland England]
  #   )
  #   assert result.code == 0
  # end
  # 
  # def test_list_delete
  #   result = Campaigning::List.delete!("916797045feddc92df10a4722f819771")
  #   puts result.inspect
  # end
  # 
  # def test_list_delete_custom_field
  #   client = Campaigning::Client.find_by_name("Client One Company")
  #   list = client.find_list_by_name "My Friends"    
  #   result = list.delete_custom_field!("Country")
  #   assert result.code == 0
  # end
  # 
  # def test_list_custom_fields
  #   client = Campaigning::Client.find_by_name("Client One Company")
  #   list = client.find_list_by_name "My Friends"
  #   result = list.custom_fields
  #   puts result.inspect
  # end
  # 
  # def test_list_details
  #   client = Campaigning::Client.find_by_name("Client One Company")
  #   list = client.find_list_by_name "My Friends"
  #   result = list.details
  #   puts result.inspect
  # end
  # 
  # def test_list_update
  #   client = Campaigning::Client.find_by_name("Client One Company")
  #   list = client.find_list_by_name "My Friends"
  #   result = list.update!(
  #   :title => "NEW TITLE : My new list created by ruby list.create",
  #   :unsubscribePage => "",
  #   :confirmOptIn => false,
  #   :confirmationSuccessPage => ""
  #   )
  #   assert result.code == 0
  # end
end
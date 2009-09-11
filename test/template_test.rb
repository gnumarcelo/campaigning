require 'test_helper'

# Replace this API key with your own (http://www.campaignmonitor.com/api/)
CAMPAIGN_MONITOR_API_KEY  = '__PUT_YOUR_API_KEY_HERE__'
HTML_PAGE_URL = "http://s4ve.as:80/pages/download/17767/template-with-editor-tags.html"
ZIP_FILE_URL = "http://s4ve.as:80/pages/download/17766/Archive.zip"
SCREENSHOT_URL = "http://s4ve.as:80/pages/download/17768/screenshot.png"

class TemplateTest < Test::Unit::TestCase


  def setup
    #Campaigning.set_endpoint_url "http://127.0.0.1:8088/mockapiSoap"
    Campaigning.set_debug_mode(:on)
  end

  def test_create!
    client = Campaigning::Client.get_all_clients.first
    template_created = Campaigning::Template.create!(
      :clientID => client.clientID,
      :templateName => "template_BY_API",
      :htmlPageURL => HTML_PAGE_URL,
      :zipFileURL => ZIP_FILE_URL,
      :screenshotURL => SCREENSHOT_URL
    )
    puts template_created.details
    puts "\n INSPECT: #{template_created.inspect} \n"
    assert !template_created.nil?
  end
  
  # #Should I return a new Template object?
  # def test_details
  #   client = Campaigning::Client.get_all_clients.first
  #   template = client.templates.first
  #   assert !template.details.nil?
  # end
  # 
  # def test_update!
  #   client = Campaigning::Client.get_all_clients.first
  #   template = client.templates.first
  #   result = template.update!(
  #     :templateName => "template_BY_API-updt",
  #     :htmlPageURL => HTML_PAGE_URL,
  #     :zipFileURL => ZIP_FILE_URL,
  #     :screenshotURL => SCREENSHOT_URL
  #   )
  #   assert result.code == 0
  # end
  # 
  # def test_delete!
  #   client = Campaigning::Client.get_all_clients.first
  #   template = client.templates.last
  #   result = template.delete!
  #   assert result.code == 0
  #   assert template.templateID == nil
  #   
  #   #deleting template by templateID
  #   result = Campaigning::Template.delete!("d0814103dcee1073ef84516dd96a12c4")
  #   assert result.code == 0
  # end
  
end
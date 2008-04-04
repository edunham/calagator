require File.dirname(__FILE__) + '/../../spec_helper'

describe "/home/index" do
  fixtures :events
  
  before(:each) do
    @codesprint = events(:calagator_codesprint)
    @tomorrow = events(:tomorrow)
    @day_after_tomorrow = events(:day_after_tomorrow)
    
    @events = [@codesprint, @tomorrow, @day_after_tomorrow]
    
    assigns[:events_today] = @events
    assigns[:events_tomorrow] = @events
    assigns[:events_later] = @events
    assigns[:recently_added_events] = @events
  end
  
  it "should render valid XHTML" do 
    pending "Complex object structure used on this page is being revised."
    render "/home/index"
    response.should be_valid_xhtml_fragment
  end

end

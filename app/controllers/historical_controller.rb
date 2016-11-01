class HistoricalController < ApplicationController
  before_filter :parse_request
  
  def get
    render nothing: true, status: :bad_request
  end

  # { "origin": string, "enter_date": date, "leave_date": date, "focus_elasped_time": int, "total_elasped_time": int, "url": string } 
  def post
    logger.debug "test"
    logger.debug ("inspect: " + @json.inspect)
    
    
  end

  def parse_request
    @json = JSON.parse(request.body.read)
  end
  
end

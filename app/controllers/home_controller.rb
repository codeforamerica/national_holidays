class HomeController < ApplicationController
  def index
		from = Date.today
  	@current_year = from.year
  	to = Date.civil(@current_year,12,31)

  	@country = request.location.country
  	country_code = request.location.country_code.downcase
  	
  	@upcoming_holidays = Holidays.between(from, to, country_code.to_sym)
  	
  	unless @upcoming_holidays.nil?
	  	next_holiday_date = @upcoming_holidays[0][:date]
	  	@next_holiday_name = @upcoming_holidays[0][:name]
	  	@next_holiday_week_day = next_holiday_date.strftime('%A')
	  	@next_holiday_month = next_holiday_date.strftime('%B')
	  	@next_holiday_month_day = next_holiday_date.day 	
	  end
  end
end

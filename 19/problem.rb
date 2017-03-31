class Number19
  require 'pry'
  def initialize(start_date, end_date)
    @start_date = Date.parse(start_date)
    @end_date   = Date.parse(end_date)
    @sundays    = 0;
  end


  def sunday_count
    while @start_date < @end_date
      @sundays    += 1 if @start_date.sunday?
      @start_date = @start_date.next_month
    end
    puts "Sundays between: #{@start_date} and #{@end_date} = #{@sundays}"
    @sundays
  end
end

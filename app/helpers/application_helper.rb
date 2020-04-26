module ApplicationHelper

  def get_season()
    #year
    #day
    #wday 0 - 6
    #yday 0 365
    #hour 24
    # min 59
    #sec 59
    #zone timezone
    #month

    time = Time.new

    if(time.month >= 3) && (time.month <= 5)
      "Spring Ahead"
    elsif(time.month >= 5) && (time.month <= 8)
      "Everyone Loves Summer"
    elsif(time.month >= 8) && (time.month <=10)
      "Fall Back"
    else
      "Winter"
    end
  end

  def get_random_number(max_value = 10)
    rand(max_value)
  end

  def get_random_welcome()
    opening= ["Nice Day!",
              "Welcome to the site!",
              "Thanks for visiting!"]

    middle= ["Hope you got what you needed!",
              "We have everything!",
              "Check us out!"]

    ending= ["Reach out if you need help!",
              "We are always here to help!",
              "Follow us on Instagram!"]

    "#{opening[rand(3)]}
     #{middle[rand(3)]}
     #{ending[rand(3)]}"
  end

  def count_to_10
    x =2
    number_list = "1"

    loop do
      number_list = number_list + ", " + x.to_s
      x += 1
      break if x > 10
  end
  "#{number_list}"
  end

end

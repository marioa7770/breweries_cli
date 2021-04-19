class CLI
  #binding.pry
  def start

    puts "Hello, Welcome to my CLI about breweries, what is you name?"

    API.get_data
    input = user_input
      greet(input)
  end

  def user_input
    gets.strip
  end

    def greet(name)
      puts "Hello #{name} would you like to see a list of breweries? enter y to see a list of breweries, enter exit to exit "
      menu
  end

    def menu
        selection = user_input
      if selection == "y"
        print_breweries
        menu

      elsif selection == "exit"
          goodbye


      else
         invalid

      end


      end

      def goodbye
         puts "Thanks for looking at my CLI!"
       end

       def invalid
         puts "Opps something went wrong please try again!"
         gets.strip
         menu
       end

       def print_breweries

         Breweries.all.each.with_index(1) do |breweries,index|
           puts "#{index}. #{breweries.name}"
        end
        select_breweries

      end


      def select_breweries
        puts "Please select a brewery."
        selection = user_input
        breweries = Breweries.find_by_selection(selection)
        if breweries != nil
        brewery_details(breweries)
      else
        puts "invalid entry"
        select_breweries
      end
      end

      #binding.pry


      def brewery_details(brewery)
        #binding.pry
        puts "Name: #{brewery.name}"
        puts "City: #{brewery.city}"
        puts "Breweries_type: #{brewery.brewery_type}"
        puts "Enter Y to see more breweries"
        menu
      end
      #binding.pry


    end

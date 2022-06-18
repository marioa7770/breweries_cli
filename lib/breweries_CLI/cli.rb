class CLI



  def start



    puts "                       `.----..`
                              `syo/::-::/oo+
                              .ho/++/+/++/+y.
                              .hhosy+y+yoohh.
                               y-`````````-y
                               h/:-----:::/h
                              `d-`````````-d`
                              -d`          d-
                              oo           oo
                              d-           -d
                             .m            `m-
                             /d/:::::::::://d+
                             ys/////////////sy
                            `d-`````````````-d`
                            .m`             `m.
                            -d`              d-
                            :d/::::-----::::/d:
                            /d++++ooooooo+++/h/
                            +s               o+
                            oo               oo
                            oo               oo
                            so               os
                           -d.               .d-
                         `+y.                 .y+`
                        .y+                    `+y.
                       .d:                       :d.
                       so                         os
                       h:                         :h
                       d-                         -d
                       d-                         -d
                       ds++++++/////////////+++++osd
                       do::::////++/////+++///::::+d
                       d-  `````````````````````  -d
                       d-                         -d
                       d-         .-----.`        -d
                       d-      .::.`````.:-.      -d
                       d-    `/:`         `-:`    -d
                       d-   `+.             ./`   -d
                       d-   /-               -/   -d
                       d-   o                 o   -d
                       d-   o                 o   -d
                       d-   +`               `+   -d
                       d-   ./               /.   -d
                       d-    -/`           `/-    -d
                       d-     .:-`       .-/.     -d
                       d-       .-::---::-.       -d
                       d-           ```           -d
                       d:`                        :d
                       do////:::::::---:::::::////od
                       do+++ooooooooooooooooooo+++od
                       d-         ```````         -d
                       d-                         -d
                       +y.`                   ```.yo
                        -+oooo++////::://:/++oooo+-
                             ``..---------..``
                                              "



    puts "Hello, Welcome to my CLI about breweries, what is you name?"



    API.get_data
    input = user_input
      greet(input)
  end




  def user_input
    gets.strip
  end

    def greet(name)
      puts "Hello #{name} would you like to see a list of breweries? enter yes to see a list of breweries, enter exit to exit "
      menu
  end

    def menu
        selection = user_input
      if selection  == "yes"
        print_breweries
        menu

      elsif selection == "exit"
          def goodbye


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
        puts "Please select a brewery you would like more information about."
        selection = user_input
        Breweries.find_by_selection(selection)
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

        puts ""
        puts ""
        puts "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
        #binding.pry
        puts "Name: #{brewery.name}"
        puts "City: #{brewery.city}"
        puts "Breweries_type: #{brewery.brewery_type}"
        puts "Enter yes to see more breweries or exit to exit"
        puts "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
        puts ""
        puts ""
      menu
      end
    end

class ApplicationController < ActionController::Base

  def blank_square_form


    render({:template =>"calculation_templates/square_form.html.erb"})
  end
  
  def calculate_square

    @num = params.fetch("results").to_f
   
    @square_num = @num ** 2

    render({:template =>"calculation_templates/square_results.html.erb"})
  end 

  def blank_random_form
    render({:template =>"calculation_templates/random_form.html.erb"})

  end


  def calculate_random
    @lower = params.fetch("min_num").to_f
    @upper = params.fetch("max_num").to_f
    @result = rand (@lower..@upper)

    render({:template =>"calculation_templates/random_results.html.erb"})
  end
end

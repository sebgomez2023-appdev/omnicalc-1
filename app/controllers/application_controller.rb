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

  def blank_square_root_form
    render ({:template => "calculation_templates/square_root_form.html.erb"})
  end

  def calculate_square_root
    @num = params.fetch("square_results").to_f
    @root_num = @num ** 0.5

    render({:template =>"calculation_templates/square_root_results.html.erb"})
  end

  def blank_payment_form
    render({:template => "calculation_templates/payment_form.html.erb"})
  end

  def calculate_payment
 
    @apr = params.fetch("APR").to_f
    @years = params.fetch("years").to_f
    @pr = params.fetch("principal").to_f
    r = (@apr/100.0) / 12.0
    n = -(@years * 12.0)
    @pay = (r.to_f*@pr)/(1-(1+r.to_f) ** n.to_f)
    @pay_final


    render({:template => "calculation_templates/payment_results.html.erb"})
  end

end

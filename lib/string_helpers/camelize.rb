String.class_eval do   
  # Apply the CamelCase rule
  #
  # "jhon doe and mary".camelize! =>  "JhonDoeAndMary"        
  def camelize!
    self.split.each{|e| e.capitalize!}.join
  end
end

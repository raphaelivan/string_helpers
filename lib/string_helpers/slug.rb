String.class_eval do 
  # Replace all whitespace from by a hyphen
  #
  # "Jhon Doe".slug! => "Jhon-Doe"
  # "Jhon ".slug!  => "Jhon-"  
  def slug!
    self.gsub(" ", "-")
  end

  # Check if the string is 'slugged'
  #
  #  "Jhon Doe".slugged? => false
  #  "Jhon-Doe".slugged? => true
  # "Jhon--".slugged? => true  
  def slugged?
    !self.include?(" ")
  end
end
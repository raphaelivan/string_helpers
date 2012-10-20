String.class_eval do 
  # Just add an apostrophe applying rules
  #
  # "Mary".apostrophe! => "Mary's"
  # "Marys".apostrophe! => "Marys'"
  def apostrophe!
      self << (self[-1,1] == APOSTROPHE_VALIDATE  ? APOSTROPHE_CHAR : (APOSTROPHE_CHAR + APOSTROPHE_VALIDATE))
  end
end
String.class_eval do
  # The fill method has two approaches. If the string length was greater than the numbers of characters
  # passed as parameter it overrrides the remains of characters per suspension points "..."
  # Otherwise, he complete with whitespace " "
  #
  # "Jhon Doe".fill(3)  => "Jho..."
  # "Jhon Doe".fill(20) => "Jhon Doe            "
  #
  def fill! chars
    length = self.length
    return self[0..(chars - 1)] << "..." if length > chars
    self << " " * (chars - length)
  end
end
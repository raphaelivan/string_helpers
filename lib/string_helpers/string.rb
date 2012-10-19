# -*- coding: utf-8 -*-
include StringHelpers

String.class_eval do
  def slug
    self.gsub(" ", "-")
  end
  
  def fill characters
    length = self.length
    chars  = characters - 1 
    return self[0..chars] << "..." if length > characters
    self << "\s" * (characters - length) if length < characters    
  end
  
  def apostrophe
    self << (self[-1,1] == APOSTROPHE_VALIDATE  ? APOSTROPHE_CHAR : (APOSTROPHE_CHAR + APOSTROPHE_VALIDATE))
  end
  
  def camelize!
    self.split.each{|e| e.capitalize!}.join
  end
end
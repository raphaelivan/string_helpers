# -*- coding: utf-8 -*-
include StringHelpers

String.class_eval do
  def slug
    self.gsub(" ", "-")
  end
  
  def fill chars = 5
    length = self.length
    return self[0..(chars - 1)] << "..." if length > chars
    self << "\s" * (chars - length)
  end
  
  def apostrophe
    self << (self[-1,1] == APOSTROPHE_VALIDATE  ? APOSTROPHE_CHAR : (APOSTROPHE_CHAR + APOSTROPHE_VALIDATE))
  end
  
  def camelize!
    self.split.each{|e| e.capitalize!}.join
  end
end
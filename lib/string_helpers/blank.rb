String.class_eval  do 
  # Some approache that ActiveSupport
  #
  # " ".blank? => true
  # "a  ".blank? => false
  # 
  # https://github.com/rails/rails/blob/2a371368c91789a4d689d6a84eb20b238c37678a/activesupport/lib/active_support/core_ext/object/blank.rb#L101
  def blank?
    self !~ /[^[:space:]]/
  end
  
  def blank!
    self.clear
  end
end
# You're working with an intern that keeps coming to you with JavaScript code that won't run because the braces, brackets, and parentheses are off. To save you both some time, you decide to write a braces/brackets/parentheses validator.
# Let's say:
# '(', '{', '[' are called "openers."
# ')', '}', ']' are called "closers."
# Write an efficient function that tells us whether or not an input string's openers and closers are properly nested.
# Examples:
# "{ [ ] ( ) }" should return true
# "{ [ ( ] ) }" should return false
# "{ [ }" should return false

#breakup the string to parts
#iterate through the elements
  #if length is odd return false
  #if char is opener push into openers array
  #if char is closer check if last element from openers is a matching pair
#expect true if not short circuited


def properly_nested?(string)
  return false if string.gsub(' ','').split('').length.odd?
  openers=[]
  
  string.gsub(' ','').split('').each do |char|
    if (char=='{' || char=='[' || char=='(')
      openers<<char 
    elsif char=='}' && openers.last=='{'
      openers.pop
    elsif char==')' && openers.last=='('
      openers.pop
    elsif char==']' && openers.last=='['
      openers.pop
    else
      return false
    end       
  end
  return true
end
require "pig_latin/version"

module PigLatin


  def self.translation (string)

    n = string.length-1

    if /\A[aeiou]/i.match(string)
       string + "way"
    elsif /\Ay/i.match(string)
       string[1..n] + string[0] + "ay"
    elsif matched_word = /[^aeiouy]+/.match(string)
      string.slice!(0...matched_word.to_s.length)
       string + matched_word.to_s + "ay"
    end
  end

end

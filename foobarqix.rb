class FooBarQix
  attr_reader :digit

  def initialize(digit)
    @digit = digit
  end

  def calculator
    if can_calculate?
      calculate
    else
      digit
    end
  end

  private

  def string_digit
    digit.to_s
  end

  def can_calculate?
    multiples?|| included?
  end

  def multiples?
    multiple?(3) || multiple?(5) || multiple?(7)
  end

  def included?
    include_number?('3') || include_number?('5') || include_number?('7')
  end

  def multiple?(number)
    digit % number == 0
  end

  def include_number?(number)
    string_digit.include?(number)
  end

  def calculate
    multiplied + includes + the_result('0','*')
  end

  def multiplied
    multiple_by_(3,'Foo') + multiple_by_(5,'Bar') + multiple_by_(7,'Qix')
  end

  def includes
    include_('3','Foo') + include_('5', 'Bar') + include_('7', 'Qix')
  end

  def include_(number, string)
    the_result(number, string) || ''
  end

  def the_result(number, string)
    string_digit.split('').inject('') do |res, x|
      if x == number
        res = res + string
      else
        res = res + ''
      end
    end
  end

  def multiple_by_(number, res)
    if digit % number == 0
      res
    else
      ''
    end
  end
end

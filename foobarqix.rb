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
    multiple?(3) || include_number?('3') ||
    include_number?('5') || include_number?('7') ||
    multiple?(5) || multiple?(7)
  end

  def multiple?(number)
    digit % number == 0
  end

  def include_number?(number)
    string_digit.include?(number)
  end

  def calculate
    multiple_by_(3,'Foo') + multiple_by_(5,'Bar') + multiple_by_(7,'Qix') +
    include_('3','Foo') + include_('5', 'Bar') + include_('7', 'Qix')
  end

  def include_(number, string)
    if string_digit.include?(number)
      string_digit.split('').inject('') do |res, x|
        if x == number
          res = res + string
        else
          res = res + ''
        end
      end
    else
      ''
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

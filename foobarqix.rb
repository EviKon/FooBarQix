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
    digit % 3 == 0 || string_digit.include?('3') ||
    string_digit.include?('5') || string_digit.include?('7') ||
    digit % 5 == 0 || digit % 7 == 0
  end

  def calculate
    multiple_by_3 + multiple_by_5 + multiple_by_7 + include_3 + include_5 + include_7
  end

  def include_3
    if string_digit.include?('3')
      string_digit.split('').inject('') do |res, x|
        if x == '3'
          res = res + 'Foo'
        else
          res = res + ''
        end
      end
    else
      ''
    end
  end

  def include_5
    if string_digit.include?('5')
      string_digit.split('').inject('') do |res, x|
        if x == '5'
          res = res + 'Bar'
        else
          res = res + ''
        end
      end
    else
      ''
    end
  end

  def include_7
    if string_digit.include?('7')
      string_digit.split('').inject('') do |res, x|
        if x == '7'
          res = res + 'Qix'
        else
          res = res + ''
        end
      end
    else
      ''
    end
  end

  def multiple_by_3
    if digit % 3 == 0
      'Foo'
    else
      ''
    end
  end

  def multiple_by_5
    if digit % 5 == 0
      'Bar'
    else
      ''
    end
  end

  def multiple_by_7
    if digit % 7 == 0
      'Qix'
    else
      ''
    end
  end
end

class FooBarQix
  attr_reader :digit

  def initialize(digit)
    @digit = digit
  end

  def calculator
    if digit % 3 == 0 || digit.to_s.include?('3') || digit.to_s.include?('5') || digit.to_s.include?('7') || digit % 5 == 0 || digit % 7 == 0
      calculate
    else
      digit
    end
  end

  def calculate
    multiple_by_3 + multiple_by_5 + multiple_by_7 + include_3 + include_5 + include_7
  end

  def include_3
    if digit.to_s.include?('3')
      digit.to_s.split('').inject(0) do |res, x|
        if x == '3'
          'Foo'
        else
          ''
        end
      end
    else
      ''
    end
  end

  def include_5
    if digit.to_s.include?('5')
      digit.to_s.split('').inject(0) do |res, x|
        if x == '5'
          'Bar'
        else
          ''
        end
      end
    else
      ''
    end
  end

  def include_7
    if digit.to_s.include?('7')
      digit.to_s.split('').inject(0) do |res, x|
        if x == '7'
          'Qix'
        else
          ''
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
